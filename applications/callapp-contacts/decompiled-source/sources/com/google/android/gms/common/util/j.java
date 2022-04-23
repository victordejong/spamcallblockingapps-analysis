package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static Boolean f22943a;

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f22944b;

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f22945c;

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f22946d;
    private static Boolean e;

    private j() {
    }

    public static boolean a(Context context) {
        return a(context.getPackageManager());
    }

    public static boolean a(PackageManager packageManager) {
        if (f22944b == null) {
            boolean z = false;
            if (n.f()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.watch")) {
                    z = true;
                }
            }
            f22944b = Boolean.valueOf(z);
        }
        return f22944b.booleanValue();
    }

    public static boolean b(Context context) {
        boolean z = true;
        if (a(context.getPackageManager())) {
            if (n.i()) {
                if (e(context) && !n.j()) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public static boolean b(PackageManager packageManager) {
        if (e == null) {
            boolean z = false;
            if (n.j()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                    z = true;
                }
            }
            e = Boolean.valueOf(z);
        }
        return e.booleanValue();
    }

    public static boolean c(Context context) {
        return e(context);
    }

    public static boolean d(Context context) {
        if (f22946d == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater")) {
                z = false;
                if (packageManager.hasSystemFeature("cn.google.services")) {
                    z = true;
                }
            }
            f22946d = Boolean.valueOf(z);
        }
        return f22946d.booleanValue();
    }

    public static boolean e(Context context) {
        if (f22945c == null) {
            boolean z = false;
            if (n.g()) {
                z = false;
                if (context.getPackageManager().hasSystemFeature("cn.google")) {
                    z = true;
                }
            }
            f22945c = Boolean.valueOf(z);
        }
        return f22945c.booleanValue();
    }
}
