{{ 
    config(materialized='table') 
}}

{{ config(
    schema='stg'
        ) 
}}


select seq4() as c1,
randstr(5,random()) as c2,
current_timestamp as created_ts
from table (generator(rowcount =>10))