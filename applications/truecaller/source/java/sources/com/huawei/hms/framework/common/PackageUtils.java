package com.huawei.hms.framework.common;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/PackageUtils.class */
public class PackageUtils {
    private static final String TAG = "PackageUtils";

    public static String getVersionName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.m38039w(TAG, "", e);
            return "";
        }
    }
}
