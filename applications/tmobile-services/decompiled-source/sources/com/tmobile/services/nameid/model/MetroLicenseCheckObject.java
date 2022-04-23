package com.tmobile.services.nameid.model;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.tmobile.services.nameid.utility.LogUtil;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MetroLicenseCheckObject.class */
public class MetroLicenseCheckObject {
    private static final String LOG_TAG = "MetroLicenseCheckObject#";
    @SerializedName("payload")
    @Expose
    private MetroLicenseCheckPayload payload;
    @SerializedName("user")
    @Expose
    private MetroUser user;

    public static MetroLicenseCheckObject create(Context context, String str, String str2) {
        MetroLicenseCheckObject metroLicenseCheckObject = new MetroLicenseCheckObject();
        MetroUser metroUser = new MetroUser();
        MetroLicenseCheckPayload metroLicenseCheckPayload = new MetroLicenseCheckPayload();
        PackageInfo packageInfo = null;
        if (context != null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo("com.tmobile.services.nameid", 0);
            } catch (PackageManager.NameNotFoundException e) {
                LogUtil.m5641f("MetroLicenseCheckObject#create", "Could not get package info", e);
                packageInfo = null;
            }
        }
        if (packageInfo != null) {
            metroUser.setDevid(str2);
            metroUser.setToken(str);
            metroUser.setApk(packageInfo.versionName);
            metroUser.setApp("com.privacystar.android.metro");
            metroLicenseCheckPayload.setToken(str);
            metroLicenseCheckPayload.setApk(packageInfo.versionName);
            metroLicenseCheckObject.setUser(metroUser);
            metroLicenseCheckObject.setPayload(metroLicenseCheckPayload);
        } else {
            LogUtil.m5631p("MetroLicenseCheckObject#create", "PackageInfo is null");
        }
        return metroLicenseCheckObject;
    }

    public MetroLicenseCheckPayload getPayload() {
        return this.payload;
    }

    public MetroUser getUser() {
        return this.user;
    }

    public void setPayload(MetroLicenseCheckPayload metroLicenseCheckPayload) {
        this.payload = metroLicenseCheckPayload;
    }

    public void setUser(MetroUser metroUser) {
        this.user = metroUser;
    }
}
