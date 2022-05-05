package com.tmobile.services.nameid.model;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.tmobile.services.nameid.utility.LogUtil;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MetroBlockListPullObject.class */
public class MetroBlockListPullObject {
    private static final String LOG_TAG = "MetroBlockListPullObject#";
    @SerializedName("payload")
    @Expose
    private MetroBlockListPayload payload;
    @SerializedName("user")
    @Expose
    private MetroUser user;

    public static MetroBlockListPullObject create(Context context, String str, String str2) {
        MetroBlockListPullObject metroBlockListPullObject = new MetroBlockListPullObject();
        MetroUser metroUser = new MetroUser();
        MetroBlockListPayload metroBlockListPayload = new MetroBlockListPayload();
        PackageInfo packageInfo = null;
        if (context != null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo("com.tmobile.services.nameid", 0);
            } catch (PackageManager.NameNotFoundException e) {
                LogUtil.m5641f("MetroBlockListPullObject#create", "Could not get package info", e);
                packageInfo = null;
            }
        }
        if (packageInfo != null) {
            metroUser.setDevid(str2);
            metroUser.setToken(str);
            metroUser.setApk(packageInfo.versionName);
            metroUser.setApp("com.privacystar.android.metro");
            metroBlockListPayload.setToken(str);
            metroBlockListPayload.setAct("get");
            metroBlockListPayload.setApk(packageInfo.versionName);
            metroBlockListPullObject.setUser(metroUser);
            metroBlockListPullObject.setPayload(metroBlockListPayload);
        } else {
            LogUtil.m5631p("MetroBlockListPullObject#create", "PackageInfo is null");
        }
        return metroBlockListPullObject;
    }

    public MetroBlockListPayload getPayload() {
        return this.payload;
    }

    public MetroUser getUser() {
        return this.user;
    }

    public void setPayload(MetroBlockListPayload metroBlockListPayload) {
        this.payload = metroBlockListPayload;
    }

    public void setUser(MetroUser metroUser) {
        this.user = metroUser;
    }
}
