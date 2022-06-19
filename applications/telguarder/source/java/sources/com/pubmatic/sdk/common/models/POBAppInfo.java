package com.pubmatic.sdk.common.models;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.pubmatic.sdk.common.log.PMLog;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBAppInfo.class */
public class POBAppInfo {

    /* renamed from: a */
    private String f441a;

    /* renamed from: b */
    private String f442b;

    /* renamed from: c */
    private String f443c;

    public POBAppInfo(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            this.f441a = packageInfo.applicationInfo.loadLabel(packageManager).toString();
            this.f442b = context.getPackageName();
            this.f443c = packageInfo.versionName;
        } catch (Exception e) {
            PMLog.error("POBAppInfo", "Failed to retrieve app info: %s", e.getLocalizedMessage());
        }
    }

    public String getAppName() {
        return this.f441a;
    }

    public String getAppVersion() {
        return this.f443c;
    }

    public String getPackageName() {
        return this.f442b;
    }
}
