SELECT
  product.stock_item_name AS product_id
  , COALESCE(product.brand,'Undefined') AS brand_name
  , product.supplier_id
  , supplier.supplier_name
FROM `vit-lam-data.wide_world_importers.warehouse__stock_items` AS product
JOIN `learn-dbt-421408.learn_dbt.supplier` AS supplier
  ON product.supplier_id = supplier.supplier_id