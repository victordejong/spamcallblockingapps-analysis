package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest.class */
public class DeleteBucketMetricsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private String id;

    public DeleteBucketMetricsConfigurationRequest() {
    }

    public DeleteBucketMetricsConfigurationRequest(String str, String str2) {
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

    public DeleteBucketMetricsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public DeleteBucketMetricsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }
}
