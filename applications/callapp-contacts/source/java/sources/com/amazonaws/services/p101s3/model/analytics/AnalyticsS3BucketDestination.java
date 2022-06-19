package com.amazonaws.services.p101s3.model.analytics;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.analytics.AnalyticsS3BucketDestination */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination.class */
public class AnalyticsS3BucketDestination implements Serializable {
    private String bucketAccountId;
    private String bucketArn;
    private String format;
    private String prefix;

    public String getBucketAccountId() {
        return this.bucketAccountId;
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

    public void setBucketAccountId(String str) {
        this.bucketAccountId = str;
    }

    public void setBucketArn(String str) {
        this.bucketArn = str;
    }

    public void setFormat(AnalyticsS3ExportFileFormat analyticsS3ExportFileFormat) {
        if (analyticsS3ExportFileFormat == null) {
            setFormat((String) null);
        } else {
            setFormat(analyticsS3ExportFileFormat.toString());
        }
    }

    public void setFormat(String str) {
        this.format = str;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public AnalyticsS3BucketDestination withBucketAccountId(String str) {
        setBucketAccountId(str);
        return this;
    }

    public AnalyticsS3BucketDestination withBucketArn(String str) {
        setBucketArn(str);
        return this;
    }

    public AnalyticsS3BucketDestination withFormat(AnalyticsS3ExportFileFormat analyticsS3ExportFileFormat) {
        setFormat(analyticsS3ExportFileFormat);
        return this;
    }

    public AnalyticsS3BucketDestination withFormat(String str) {
        setFormat(str);
        return this;
    }

    public AnalyticsS3BucketDestination withPrefix(String str) {
        setPrefix(str);
        return this;
    }
}
