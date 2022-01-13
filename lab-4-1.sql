-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT players.first_name, players.last_name, SUM(stats.hits)
FROM players
INNER JOIN stats ON stats.player_id = players.id
WHERE players.last_name = "Bonds" and players.first_name = "Barry";