package com.flurry.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* renamed from: com.flurry.sdk.ma */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ma.class */
public final class C0502ma {

    /* renamed from: a */
    private static final String f3582a = "ma";

    /* renamed from: a */
    public static String m4510a(Context context) {
        String str;
        PackageInfo m4507d = m4507d(context);
        return (m4507d == null || (str = m4507d.packageName) == null) ? "" : str;
    }

    /* renamed from: b */
    public static String m4509b(Context context) {
        String str;
        PackageInfo m4507d = m4507d(context);
        return (m4507d == null || (str = m4507d.versionName) == null) ? "" : str;
    }

    /* renamed from: c */
    public static Bundle m4508c(Context context) {
        Bundle bundle;
        ApplicationInfo m4506e = m4506e(context);
        return (m4506e == null || (bundle = m4506e.metaData) == null) ? Bundle.EMPTY : bundle;
    }

    /* renamed from: d */
    private static PackageInfo m4507d(Context context) {
        PackageInfo packageInfo;
        if (context != null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                C0478ku.m4594a(f3582a, "Cannot find package info for package: " + context.getPackageName());
            }
            return packageInfo;
        }
        packageInfo = null;
        return packageInfo;
    }

    /* renamed from: e */
    private static ApplicationInfo m4506e(Context context) {
        ApplicationInfo applicationInfo;
        if (context != null) {
            try {
                applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            } catch (PackageManager.NameNotFoundException e) {
                C0478ku.m4594a(f3582a, "Cannot find application info for package: " + context.getPackageName());
            }
            return applicationInfo;
        }
        applicationInfo = null;
        return applicationInfo;
    }
}
