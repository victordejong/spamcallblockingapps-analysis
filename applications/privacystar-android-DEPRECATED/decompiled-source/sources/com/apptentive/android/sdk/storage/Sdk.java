package com.apptentive.android.sdk.storage;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/Sdk.class */
public class Sdk implements Serializable {
    private String authorEmail;
    private String authorName;
    private String distribution;
    private String distributionVersion;
    private String platform;
    private String programmingLanguage;
    private String version;

    public String getAuthorEmail() {
        return this.authorEmail;
    }

    public String getAuthorName() {
        return this.authorName;
    }

    public String getDistribution() {
        return this.distribution;
    }

    public String getDistributionVersion() {
        return this.distributionVersion;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getProgrammingLanguage() {
        return this.programmingLanguage;
    }

    public String getVersion() {
        return this.version;
    }

    public void setAuthorEmail(String str) {
        this.authorEmail = str;
    }

    public void setAuthorName(String str) {
        this.authorName = str;
    }

    public void setDistribution(String str) {
        this.distribution = str;
    }

    public void setDistributionVersion(String str) {
        this.distributionVersion = str;
    }

    public void setPlatform(String str) {
        this.platform = str;
    }

    public void setProgrammingLanguage(String str) {
        this.programmingLanguage = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
