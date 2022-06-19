package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest.class */
public class ListBucketAnalyticsConfigurationsRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private String continuationToken;

    public String getBucketName() {
        return this.bucketName;
    }

    public String getContinuationToken() {
        return this.continuationToken;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setContinuationToken(String str) {
        this.continuationToken = str;
    }

    public ListBucketAnalyticsConfigurationsRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public ListBucketAnalyticsConfigurationsRequest withContinuationToken(String str) {
        setContinuationToken(str);
        return this;
    }
}
