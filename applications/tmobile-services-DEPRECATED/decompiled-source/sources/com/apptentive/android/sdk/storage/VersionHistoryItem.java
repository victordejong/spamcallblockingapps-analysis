package com.apptentive.android.sdk.storage;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/VersionHistoryItem.class */
public class VersionHistoryItem implements Serializable {
    private static final long serialVersionUID = 1730491670319107507L;
    private double timestamp;
    private int versionCode;
    private String versionName;

    public VersionHistoryItem(double d, int i, String str) {
        this.timestamp = d;
        this.versionCode = i;
        this.versionName = str;
    }

    public double getTimestamp() {
        return this.timestamp;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setTimestamp(double d) {
        this.timestamp = d;
    }

    public void setVersionCode(int i) {
        this.versionCode = i;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }
}
