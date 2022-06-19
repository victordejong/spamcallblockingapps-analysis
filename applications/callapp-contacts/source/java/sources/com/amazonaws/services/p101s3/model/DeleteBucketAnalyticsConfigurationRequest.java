package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.DeleteBucketAnalyticsConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest.class */
public class DeleteBucketAnalyticsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    /* renamed from: id */
    private String f12459id;

    public DeleteBucketAnalyticsConfigurationRequest() {
    }

    public DeleteBucketAnalyticsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f12459id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f12459id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f12459id = str;
    }

    public DeleteBucketAnalyticsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public DeleteBucketAnalyticsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
