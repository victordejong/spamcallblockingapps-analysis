package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
/* renamed from: com.google.android.gms.common.util.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/i.class */
public final class C2712i {

    /* renamed from: a */
    private static Boolean f7521a;

    /* renamed from: b */
    private static Boolean f7522b;

    /* renamed from: c */
    private static Boolean f7523c;

    /* renamed from: d */
    private static Boolean f7524d;

    /* renamed from: a */
    public static boolean m13858a() {
        return "user".equals(Build.TYPE);
    }

    @TargetApi(20)
    /* renamed from: a */
    public static boolean m13857a(Context context) {
        if (f7521a == null) {
            f7521a = Boolean.valueOf(C2716m.m13836g() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f7521a.booleanValue();
    }

    @TargetApi(26)
    /* renamed from: b */
    public static boolean m13856b(Context context) {
        return m13857a(context) && (!C2716m.m13833j() || (m13852f(context) && !C2716m.m13832k()));
    }

    @TargetApi(21)
    /* renamed from: c */
    public static boolean m13855c(Context context) {
        return m13852f(context);
    }

    /* renamed from: d */
    public static boolean m13854d(Context context) {
        if (f7523c == null) {
            PackageManager packageManager = context.getPackageManager();
            f7523c = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services"));
        }
        return f7523c.booleanValue();
    }

    /* renamed from: e */
    public static boolean m13853e(Context context) {
        if (f7524d == null) {
            f7524d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f7524d.booleanValue();
    }

    @TargetApi(21)
    /* renamed from: f */
    private static boolean m13852f(Context context) {
        if (f7522b == null) {
            f7522b = Boolean.valueOf(C2716m.m13835h() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f7522b.booleanValue();
    }
}
