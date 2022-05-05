package com.apptentive.android.sdk.util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/ApplicationInfo.class */
public class ApplicationInfo {
    static final ApplicationInfo NULL = new ApplicationInfo("0", -1, -1, false);
    private final boolean debuggable;
    private final int targetSdkVersion;
    private final int versionCode;
    private final String versionName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ApplicationInfo(String str, int i, int i2, boolean z) {
        this.versionName = str;
        this.versionCode = i;
        this.targetSdkVersion = i2;
        this.debuggable = z;
    }

    public int getTargetSdkVersion() {
        return this.targetSdkVersion;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public boolean isDebuggable() {
        return this.debuggable;
    }

    public String toString() {
        return StringUtils.format("%s: versionName=%s versionCode=%d targetSdkVersion=%s debuggable=%b", ApplicationInfo.class.getSimpleName(), this.versionName, Integer.valueOf(this.versionCode), Integer.valueOf(this.targetSdkVersion), Boolean.valueOf(this.debuggable));
    }
}
