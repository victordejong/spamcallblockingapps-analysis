package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.DeleteBucketInventoryConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest.class */
public class DeleteBucketInventoryConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    /* renamed from: id */
    private String f12460id;

    public DeleteBucketInventoryConfigurationRequest() {
    }

    public DeleteBucketInventoryConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f12460id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f12460id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f12460id = str;
    }

    public DeleteBucketInventoryConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public DeleteBucketInventoryConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
