-- The AVG cost per age
SELECT 
	age,
    ROUND(AVG(charges),2) AS avg_charge
FROM MedicalCosts.medical_cost
GROUP BY 1
ORDER BY 1;

-- Cost by gender
SELECT 
	sex,
    ROUND(AVG(charges),2) AS cost
FROM MedicalCosts.medical_cost
GROUP BY 1;

-- Cost by BMI
SELECT 
	CASE WHEN bmi < 18.5 THEN "Underweight"
    WHEN bmi >= 18.5 AND bmi < 25.0 THEN "Healthy Weight" 
	WHEN bmi >= 25.0 AND bmi < 30.0 THEN "Overweight"
    ELSE "Obesity" END AS mass_index,
    ROUND(AVG(charges),2) AS cost
FROM MedicalCosts.medical_cost
GROUP BY 1;

-- Avg Cost Distribution based on number of children
SELECT 
	children,
    ROUND(AVG(charges),2) AS cost
FROM MedicalCosts.medical_cost
GROUP BY 1
ORDER BY 1;

-- Explore the affects of smoking on medical costs
SELECT 
	smoker,
    ROUND(AVG(charges),2) AS cost
FROM MedicalCosts.medical_cost
GROUP BY 1;

-- The medical cost distrubution by region
SELECT 
	region,
    ROUND(AVG(charges),2) AS cost
FROM MedicalCosts.medical_cost
GROUP BY 1;
