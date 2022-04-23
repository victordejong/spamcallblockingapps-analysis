package com.mikepenz.aboutlibraries.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/util/Util.class */
public class Util {
    public static ApplicationInfo getApplicationInfo(Context context) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
        } catch (Exception e) {
            applicationInfo = null;
        }
        return applicationInfo;
    }

    public static PackageInfo getPackageInfo(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (Exception e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
