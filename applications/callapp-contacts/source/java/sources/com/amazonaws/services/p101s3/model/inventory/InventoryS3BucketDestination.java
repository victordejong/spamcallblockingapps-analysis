package com.amazonaws.services.p101s3.model.inventory;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.inventory.InventoryS3BucketDestination */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination.class */
public class InventoryS3BucketDestination implements Serializable {
    private String accountId;
    private String bucketArn;
    private String format;
    private String prefix;

    public String getAccountId() {
        return this.accountId;
    }

    public String getBucketArn() {
        return this.bucketArn;
    }

    public String getFormat() {
        return this.format;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public void setAccountId(String str) {
        this.accountId = str;
    }

    public void setBucketArn(String str) {
        this.bucketArn = str;
    }

    public void setFormat(InventoryFormat inventoryFormat) {
        setFormat(inventoryFormat == null ? null : inventoryFormat.toString());
    }

    public void setFormat(String str) {
        this.format = str;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public InventoryS3BucketDestination withAccountId(String str) {
        setAccountId(str);
        return this;
    }

    public InventoryS3BucketDestination withBucketArn(String str) {
        setBucketArn(str);
        return this;
    }

    public InventoryS3BucketDestination withFormat(InventoryFormat inventoryFormat) {
        setFormat(inventoryFormat);
        return this;
    }

    public InventoryS3BucketDestination withFormat(String str) {
        setFormat(str);
        return this;
    }

    public InventoryS3BucketDestination withPrefix(String str) {
        setPrefix(str);
        return this;
    }
}
