package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.GetBucketAnalyticsConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest.class */
public class GetBucketAnalyticsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    /* renamed from: id */
    private String f12463id;

    public GetBucketAnalyticsConfigurationRequest() {
    }

    public GetBucketAnalyticsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f12463id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f12463id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f12463id = str;
    }

    public GetBucketAnalyticsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GetBucketAnalyticsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
