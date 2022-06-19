package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.GetBucketInventoryConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest.class */
public class GetBucketInventoryConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    /* renamed from: id */
    private String f12464id;

    public GetBucketInventoryConfigurationRequest() {
    }

    public GetBucketInventoryConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f12464id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f12464id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f12464id = str;
    }

    public GetBucketInventoryConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GetBucketInventoryConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
