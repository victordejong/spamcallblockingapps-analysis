package com.apptentive.android.sdk.storage;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/AppRelease.class */
public class AppRelease implements Serializable {
    private String appStore;
    private boolean debug;
    private String identifier;
    private boolean inheritStyle;
    private boolean overrideStyle;
    private String targetSdkVersion;
    private String type;
    private int versionCode;
    private String versionName;

    public String getAppStore() {
        return this.appStore;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public String getTargetSdkVersion() {
        return this.targetSdkVersion;
    }

    public String getType() {
        return this.type;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isInheritStyle() {
        return this.inheritStyle;
    }

    public boolean isOverrideStyle() {
        return this.overrideStyle;
    }

    public void setAppStore(String str) {
        this.appStore = str;
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }

    public void setIdentifier(String str) {
        this.identifier = str;
    }

    public void setInheritStyle(boolean z) {
        this.inheritStyle = z;
    }

    public void setOverrideStyle(boolean z) {
        this.overrideStyle = z;
    }

    public void setTargetSdkVersion(String str) {
        this.targetSdkVersion = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setVersionCode(int i) {
        this.versionCode = i;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }
}
