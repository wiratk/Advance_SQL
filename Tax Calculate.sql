select sum(case when (LEAST(tot_amt,upper)-lower+1)>0 then((LEAST(tot_amt,upper)-lower+1)*percent/100)
else 0 end) net_total_amt from 
(select t.*,1100000 tot_amt from tax_rate t
)t
