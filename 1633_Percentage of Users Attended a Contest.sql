Create table If Not Exists Users_36 (
user_id int, 
user_name varchar(20)
);

Create table If Not Exists Register_36 (
contest_id int, 
user_id int
);

Truncate table Users_36;

insert into Users_36(user_id, user_name) values ('6', 'Alice');
insert into Users_36(user_id, user_name) values ('2', 'Bob');
insert into Users_36(user_id, user_name) values ('7', 'Alex');

Truncate table Register_36;

insert into Register_36(contest_id, user_id) values ('215', '6');
insert into Register_36(contest_id, user_id) values ('209', '2');
insert into Register_36(contest_id, user_id) values ('208', '2');
insert into Register_36(contest_id, user_id) values ('210', '6');
insert into Register_36(contest_id, user_id) values ('208', '6');
insert into Register_36(contest_id, user_id) values ('209', '7');
insert into Register_36(contest_id, user_id) values ('209', '6');
insert into Register_36(contest_id, user_id) values ('215', '7');
insert into Register_36(contest_id, user_id) values ('208', '7');
insert into Register_36(contest_id, user_id) values ('210', '2');
insert into Register_36(contest_id, user_id) values ('207', '2');
insert into Register_36(contest_id, user_id) values ('210', '7');


/*
Q. Write a solution to find the percentage of the users registered in each contest rounded to two decimals.
Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
The result format is in the following example.

Input: 
Users table:
+---------+-----------+
| user_id | user_name |
+---------+-----------+
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |
+---------+-----------+
Register table:
+------------+---------+
| contest_id | user_id |
+------------+---------+
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |
+------------+---------+
Output: 
+------------+------------+
| contest_id | percentage |
+------------+------------+
| 208        | 100.0      |
| 209        | 100.0      |
| 210        | 100.0      |
| 215        | 66.67      |
| 207        | 33.33      |
+------------+------------+
Explanation: 
All the users registered in contests 208, 209, and 210. The percentage is 100% and we sort them in the answer table by contest_id in ascending order.
Alice and Alex registered in contest 215 and the percentage is ((2/3) * 100) = 66.67%
Bob registered in contest 207 and the percentage is ((1/3) * 100) = 33.33%
*/

SELECT * FROM Users_36;
SELECT * FROM Register_36;

