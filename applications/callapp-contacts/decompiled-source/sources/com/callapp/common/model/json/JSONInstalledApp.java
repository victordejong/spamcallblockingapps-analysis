package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInstalledApp.class */
public class JSONInstalledApp implements Serializable {
    private static final long serialVersionUID = 1568030341297384182L;
    private String appName = "";
    private String packageName = "";
    private String versionName = "";
    private int versionCode = 0;
    private long firstInstallTime = 0;
    private long lastUpdateTime = 0;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONInstalledApp jSONInstalledApp = (JSONInstalledApp) obj;
        if (this.versionCode != jSONInstalledApp.versionCode || this.firstInstallTime != jSONInstalledApp.firstInstallTime || this.lastUpdateTime != jSONInstalledApp.lastUpdateTime) {
            return false;
        }
        String str = this.appName;
        if (str != null) {
            if (!str.equals(jSONInstalledApp.appName)) {
                return false;
            }
        } else if (jSONInstalledApp.appName != null) {
            return false;
        }
        String str2 = this.packageName;
        if (str2 != null) {
            if (!str2.equals(jSONInstalledApp.packageName)) {
                return false;
            }
        } else if (jSONInstalledApp.packageName != null) {
            return false;
        }
        String str3 = this.versionName;
        String str4 = jSONInstalledApp.versionName;
        return str3 != null ? str3.equals(str4) : str4 == null;
    }

    public String getAppName() {
        return this.appName;
    }

    public long getFirstInstallTime() {
        return this.firstInstallTime;
    }

    public long getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        String str = this.appName;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.packageName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.versionName;
        if (str3 != null) {
            i = str3.hashCode();
        }
        int i2 = this.versionCode;
        long j = this.firstInstallTime;
        int i3 = (int) (j ^ (j >>> 32));
        long j2 = this.lastUpdateTime;
        return (((((((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2) * 31) + i3) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setFirstInstallTime(long j) {
        this.firstInstallTime = j;
    }

    public void setLastUpdateTime(long j) {
        this.lastUpdateTime = j;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setVersionCode(int i) {
        this.versionCode = i;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public String toString() {
        return "JSONInstalledApp{appName='" + this.appName + "', packageName='" + this.packageName + "', versionName='" + this.versionName + "', versionCode=" + this.versionCode + ", firstInstallTime=" + this.firstInstallTime + ", lastUpdateTime=" + this.lastUpdateTime + '}';
    }
}
