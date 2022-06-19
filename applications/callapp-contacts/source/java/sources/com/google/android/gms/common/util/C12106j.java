package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
/* renamed from: com.google.android.gms.common.util.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/j.class */
public final class C12106j {

    /* renamed from: a */
    public static Boolean f39628a;

    /* renamed from: b */
    private static Boolean f39629b;

    /* renamed from: c */
    private static Boolean f39630c;

    /* renamed from: d */
    private static Boolean f39631d;

    /* renamed from: e */
    private static Boolean f39632e;

    private C12106j() {
    }

    /* renamed from: a */
    public static boolean m19035a(Context context) {
        return m19034a(context.getPackageManager());
    }

    /* renamed from: a */
    public static boolean m19034a(PackageManager packageManager) {
        if (f39629b == null) {
            boolean z = false;
            if (C12110n.m19016f()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.watch")) {
                    z = true;
                }
            }
            f39629b = Boolean.valueOf(z);
        }
        return f39629b.booleanValue();
    }

    /* renamed from: b */
    public static boolean m19033b(Context context) {
        boolean z = true;
        if (m19034a(context.getPackageManager())) {
            if (C12110n.m19013i()) {
                if (m19029e(context) && !C12110n.m19012j()) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public static boolean m19032b(PackageManager packageManager) {
        if (f39632e == null) {
            boolean z = false;
            if (C12110n.m19012j()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                    z = true;
                }
            }
            f39632e = Boolean.valueOf(z);
        }
        return f39632e.booleanValue();
    }

    /* renamed from: c */
    public static boolean m19031c(Context context) {
        return m19029e(context);
    }

    /* renamed from: d */
    public static boolean m19030d(Context context) {
        if (f39631d == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater")) {
                z = false;
                if (packageManager.hasSystemFeature("cn.google.services")) {
                    z = true;
                }
            }
            f39631d = Boolean.valueOf(z);
        }
        return f39631d.booleanValue();
    }

    /* renamed from: e */
    public static boolean m19029e(Context context) {
        if (f39630c == null) {
            boolean z = false;
            if (C12110n.m19015g()) {
                z = false;
                if (context.getPackageManager().hasSystemFeature("cn.google")) {
                    z = true;
                }
            }
            f39630c = Boolean.valueOf(z);
        }
        return f39630c.booleanValue();
    }
}
