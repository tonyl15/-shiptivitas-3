-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change
SELECT DATE(login_timestamp, 'unixepoch') AS login_date, COUNT(*) AS login_count
FROM login_history
GROUP BY DATE(login_timestamp, 'unixepoch')
ORDER BY login_date;

-- PART 2: Create a SQL query that indicates the number of status changes by card
SELECT cardID, COUNT(*) AS status_changes
FROM card_change_history
GROUP BY cardID
ORDER BY status_changes DESC;