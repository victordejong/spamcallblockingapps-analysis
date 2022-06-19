package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.BucketVersioningConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/BucketVersioningConfiguration.class */
public class BucketVersioningConfiguration implements Serializable {
    public static final String ENABLED = "Enabled";
    public static final String OFF = "Off";
    public static final String SUSPENDED = "Suspended";
    private Boolean isMfaDeleteEnabled = null;
    private String status;

    public BucketVersioningConfiguration() {
        setStatus(OFF);
    }

    public BucketVersioningConfiguration(String str) {
        setStatus(str);
    }

    public String getStatus() {
        return this.status;
    }

    public Boolean isMfaDeleteEnabled() {
        return this.isMfaDeleteEnabled;
    }

    public void setMfaDeleteEnabled(Boolean bool) {
        this.isMfaDeleteEnabled = bool;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public BucketVersioningConfiguration withMfaDeleteEnabled(Boolean bool) {
        setMfaDeleteEnabled(bool);
        return this;
    }

    public BucketVersioningConfiguration withStatus(String str) {
        setStatus(str);
        return this;
    }
}
