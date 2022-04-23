package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.model.inventory.InventoryConfiguration;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult.class */
public class GetBucketInventoryConfigurationResult {
    private InventoryConfiguration inventoryConfiguration;

    public InventoryConfiguration getInventoryConfiguration() {
        return this.inventoryConfiguration;
    }

    public void setInventoryConfiguration(InventoryConfiguration inventoryConfiguration) {
        this.inventoryConfiguration = inventoryConfiguration;
    }

    public GetBucketInventoryConfigurationResult withInventoryConfiguration(InventoryConfiguration inventoryConfiguration) {
        setInventoryConfiguration(inventoryConfiguration);
        return this;
    }
}
