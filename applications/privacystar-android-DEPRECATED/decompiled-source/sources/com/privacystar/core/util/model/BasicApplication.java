package com.privacystar.core.util.model;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/model/BasicApplication.class */
public class BasicApplication {
    private String applicationName;
    private String packageName;

    public BasicApplication(Context context, ApplicationInfo applicationInfo) {
        this.applicationName = applicationInfo.loadLabel(context.getPackageManager()).toString();
        this.packageName = applicationInfo.packageName;
    }

    public BasicApplication(String str, String str2) {
        this.applicationName = str;
        this.packageName = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BasicApplication basicApplication = (BasicApplication) obj;
        if (!getApplicationName().equals(basicApplication.getApplicationName())) {
            return false;
        }
        return getPackageName().equals(basicApplication.getPackageName());
    }

    public String getApplicationName() {
        return this.applicationName;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        return (getApplicationName().hashCode() * 31) + getPackageName().hashCode();
    }

    public void setApplicationName(String str) {
        this.applicationName = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }
}
