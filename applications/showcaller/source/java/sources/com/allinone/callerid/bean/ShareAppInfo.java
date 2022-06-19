package com.allinone.callerid.bean;

import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/ShareAppInfo.class */
public class ShareAppInfo {
    private Drawable AppIcon;
    private String AppLauncherClassName;
    private String AppName;
    private String AppPkgName;

    public Drawable getAppIcon() {
        return this.AppIcon;
    }

    public String getAppLauncherClassName() {
        return this.AppLauncherClassName;
    }

    public String getAppName() {
        return this.AppName;
    }

    public String getAppPkgName() {
        return this.AppPkgName;
    }

    public void setAppIcon(Drawable drawable) {
        this.AppIcon = drawable;
    }

    public void setAppLauncherClassName(String str) {
        this.AppLauncherClassName = str;
    }

    public void setAppName(String str) {
        this.AppName = str;
    }

    public void setAppPkgName(String str) {
        this.AppPkgName = str;
    }
}
