package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest.class */
public class GetBucketMetricsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private String id;

    public GetBucketMetricsConfigurationRequest() {
    }

    public GetBucketMetricsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.id = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.id = str;
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
