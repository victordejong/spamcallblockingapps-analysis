package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
/* renamed from: com.flurry.sdk.kx */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kx.class */
public final class C3441kx {

    /* renamed from: a */
    public static final String f5915a = "kx";

    /* renamed from: a */
    public static String m32489a(Context context) {
        String str;
        PackageInfo c = m32487c(context);
        return (c == null || (str = c.packageName) == null) ? "" : str;
    }

    /* renamed from: b */
    public static String m32488b(Context context) {
        String str;
        PackageInfo c = m32487c(context);
        return (c == null || (str = c.versionName) == null) ? "" : str;
    }

    /* renamed from: c */
    public static PackageInfo m32487c(Context context) {
        PackageInfo packageInfo;
        if (context != null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                String str = f5915a;
                C3356jq.m32613a(str, "Cannot find package info for package: " + context.getPackageName());
            }
            return packageInfo;
        }
        packageInfo = null;
        return packageInfo;
    }
}
