package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.GetBucketMetricsConfigurationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest.class */
public class GetBucketMetricsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    /* renamed from: id */
    private String f12465id;

    public GetBucketMetricsConfigurationRequest() {
    }

    public GetBucketMetricsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f12465id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f12465id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f12465id = str;
    }

    public GetBucketMetricsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GetBucketMetricsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
