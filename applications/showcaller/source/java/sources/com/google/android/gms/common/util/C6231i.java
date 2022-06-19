package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.C6094e;
/* renamed from: com.google.android.gms.common.util.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/i.class */
public final class C6231i {

    /* renamed from: a */
    private static Boolean f19710a;

    /* renamed from: b */
    private static Boolean f19711b;

    /* renamed from: c */
    private static Boolean f19712c;

    /* renamed from: d */
    private static Boolean f19713d;

    /* renamed from: e */
    private static Boolean f19714e;

    /* renamed from: a */
    public static boolean m16803a(@RecentlyNonNull Context context) {
        return m16802b(context.getPackageManager());
    }

    /* renamed from: b */
    public static boolean m16802b(@RecentlyNonNull PackageManager packageManager) {
        if (f19714e == null) {
            boolean z = false;
            if (C6237o.m16773k()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                    z = true;
                }
            }
            f19714e = Boolean.valueOf(z);
        }
        return f19714e.booleanValue();
    }

    /* renamed from: c */
    public static boolean m16801c(@RecentlyNonNull Context context) {
        if (f19712c == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater")) {
                z = false;
                if (packageManager.hasSystemFeature("cn.google.services")) {
                    z = true;
                }
            }
            f19712c = Boolean.valueOf(z);
        }
        return f19712c.booleanValue();
    }

    @TargetApi(21)
    /* renamed from: d */
    public static boolean m16800d(@RecentlyNonNull Context context) {
        return m16795i(context);
    }

    /* renamed from: e */
    public static boolean m16799e() {
        int i = C6094e.f19409a;
        return "user".equals(Build.TYPE);
    }

    @TargetApi(20)
    /* renamed from: f */
    public static boolean m16798f(@RecentlyNonNull Context context) {
        return m16797g(context.getPackageManager());
    }

    @TargetApi(20)
    /* renamed from: g */
    public static boolean m16797g(@RecentlyNonNull PackageManager packageManager) {
        if (f19710a == null) {
            boolean z = false;
            if (C6237o.m16777g()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.watch")) {
                    z = true;
                }
            }
            f19710a = Boolean.valueOf(z);
        }
        return f19710a.booleanValue();
    }

    @TargetApi(26)
    /* renamed from: h */
    public static boolean m16796h(@RecentlyNonNull Context context) {
        boolean z = true;
        if (m16798f(context)) {
            if (C6237o.m16774j()) {
                if (m16795i(context) && !C6237o.m16773k()) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @TargetApi(21)
    /* renamed from: i */
    public static boolean m16795i(@RecentlyNonNull Context context) {
        if (f19711b == null) {
            boolean z = false;
            if (C6237o.m16776h()) {
                z = false;
                if (context.getPackageManager().hasSystemFeature("cn.google")) {
                    z = true;
                }
            }
            f19711b = Boolean.valueOf(z);
        }
        return f19711b.booleanValue();
    }

    /* renamed from: j */
    public static boolean m16794j(@RecentlyNonNull Context context) {
        if (f19713d == null) {
            boolean z = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot")) {
                z = context.getPackageManager().hasSystemFeature("android.hardware.type.embedded");
            }
            f19713d = Boolean.valueOf(z);
        }
        return f19713d.booleanValue();
    }
}
