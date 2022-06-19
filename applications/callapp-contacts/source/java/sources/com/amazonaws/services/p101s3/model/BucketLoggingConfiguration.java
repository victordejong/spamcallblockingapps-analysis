package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.BucketLoggingConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/BucketLoggingConfiguration.class */
public class BucketLoggingConfiguration implements Serializable {
    private String destinationBucketName = null;
    private String logFilePrefix = null;

    public BucketLoggingConfiguration() {
    }

    public BucketLoggingConfiguration(String str, String str2) {
        setLogFilePrefix(str2);
        setDestinationBucketName(str);
    }

    public String getDestinationBucketName() {
        return this.destinationBucketName;
    }

    public String getLogFilePrefix() {
        return this.logFilePrefix;
    }

    public boolean isLoggingEnabled() {
        return (this.destinationBucketName == null || this.logFilePrefix == null) ? false : true;
    }

    public void setDestinationBucketName(String str) {
        this.destinationBucketName = str;
    }

    public void setLogFilePrefix(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.logFilePrefix = str2;
    }

    public String toString() {
        String str = "LoggingConfiguration enabled=" + isLoggingEnabled();
        String str2 = str;
        if (isLoggingEnabled()) {
            str2 = str + ", destinationBucketName=" + getDestinationBucketName() + ", logFilePrefix=" + getLogFilePrefix();
        }
        return str2;
    }
}
