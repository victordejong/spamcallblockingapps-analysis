package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.model.analytics.AnalyticsConfiguration;
import java.io.Serializable;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult.class */
public class ListBucketAnalyticsConfigurationsResult implements Serializable {
    private List<AnalyticsConfiguration> analyticsConfigurationList;
    private String continuationToken;
    private boolean isTruncated;
    private String nextContinuationToken;

    public List<AnalyticsConfiguration> getAnalyticsConfigurationList() {
        return this.analyticsConfigurationList;
    }

    public String getContinuationToken() {
        return this.continuationToken;
    }

    public String getNextContinuationToken() {
        return this.nextContinuationToken;
    }

    public boolean isTruncated() {
        return this.isTruncated;
    }

    public void setAnalyticsConfigurationList(List<AnalyticsConfiguration> list) {
        this.analyticsConfigurationList = list;
    }

    public void setContinuationToken(String str) {
        this.continuationToken = str;
    }

    public void setNextContinuationToken(String str) {
        this.nextContinuationToken = str;
    }

    public void setTruncated(boolean z) {
        this.isTruncated = z;
    }

    public ListBucketAnalyticsConfigurationsResult withAnalyticsConfigurationList(List<AnalyticsConfiguration> list) {
        setAnalyticsConfigurationList(list);
        return this;
    }

    public ListBucketAnalyticsConfigurationsResult withContinuationToken(String str) {
        setContinuationToken(str);
        return this;
    }

    public ListBucketAnalyticsConfigurationsResult withNextContinuationToken(String str) {
        setNextContinuationToken(str);
        return this;
    }

    public ListBucketAnalyticsConfigurationsResult withTruncated(boolean z) {
        setTruncated(z);
        return this;
    }
}
