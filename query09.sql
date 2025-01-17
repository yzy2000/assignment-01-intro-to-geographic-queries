/*
  List all the passholder types and number of trips for each.

  In other words, in one query, give a list of all `passholder_type` options
  and the number of trips taken by `passholder_type`.
*/

-- Enter your SQL query here
with indego_trips as(
  select trip_id, passholder_type from indego_trips_2019_q2
  union
  select trip_id, passholder_type from indego_trips_2020_q2
)
select passholder_type, count(*)
from indego_trips
group by passholder_type
