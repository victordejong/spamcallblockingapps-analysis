package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.services.s3.model.inventory.InventoryConfiguration;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest.class */
public class SetBucketInventoryConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private InventoryConfiguration inventoryConfiguration;

    public SetBucketInventoryConfigurationRequest() {
    }

    public SetBucketInventoryConfigurationRequest(String str, InventoryConfiguration inventoryConfiguration) {
        this.bucketName = str;
        this.inventoryConfiguration = inventoryConfiguration;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public InventoryConfiguration getInventoryConfiguration() {
        return this.inventoryConfiguration;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setInventoryConfiguration(InventoryConfiguration inventoryConfiguration) {
        this.inventoryConfiguration = inventoryConfiguration;
    }

    public SetBucketInventoryConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public SetBucketInventoryConfigurationRequest withInventoryConfiguration(InventoryConfiguration inventoryConfiguration) {
        setInventoryConfiguration(inventoryConfiguration);
        return this;
    }
}
