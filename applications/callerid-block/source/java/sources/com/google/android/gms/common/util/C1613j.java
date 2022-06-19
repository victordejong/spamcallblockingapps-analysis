package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.C1555c;
/* renamed from: com.google.android.gms.common.util.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/j.class */
public final class C1613j {

    /* renamed from: a */
    private static Boolean f5891a;

    /* renamed from: b */
    private static Boolean f5892b;

    /* renamed from: c */
    private static Boolean f5893c;

    /* renamed from: d */
    private static Boolean f5894d;

    /* renamed from: a */
    public static boolean m8233a(@RecentlyNonNull Context context) {
        if (f5893c == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater")) {
                z = false;
                if (packageManager.hasSystemFeature("cn.google.services")) {
                    z = true;
                }
            }
            f5893c = Boolean.valueOf(z);
        }
        return f5893c.booleanValue();
    }

    @TargetApi(21)
    /* renamed from: b */
    public static boolean m8232b(@RecentlyNonNull Context context) {
        return m8227g(context);
    }

    /* renamed from: c */
    public static boolean m8231c() {
        int i = C1555c.f5812a;
        return "user".equals(Build.TYPE);
    }

    @TargetApi(20)
    /* renamed from: d */
    public static boolean m8230d(@RecentlyNonNull Context context) {
        return m8229e(context.getPackageManager());
    }

    @TargetApi(20)
    /* renamed from: e */
    public static boolean m8229e(@RecentlyNonNull PackageManager packageManager) {
        if (f5891a == null) {
            boolean z = false;
            if (C1617n.m8211g()) {
                z = false;
                if (packageManager.hasSystemFeature("android.hardware.type.watch")) {
                    z = true;
                }
            }
            f5891a = Boolean.valueOf(z);
        }
        return f5891a.booleanValue();
    }

    @TargetApi(26)
    /* renamed from: f */
    public static boolean m8228f(@RecentlyNonNull Context context) {
        boolean z = true;
        if (m8230d(context)) {
            if (C1617n.m8208j()) {
                if (m8227g(context) && !C1617n.m8207k()) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @TargetApi(21)
    /* renamed from: g */
    public static boolean m8227g(@RecentlyNonNull Context context) {
        if (f5892b == null) {
            boolean z = false;
            if (C1617n.m8210h()) {
                z = false;
                if (context.getPackageManager().hasSystemFeature("cn.google")) {
                    z = true;
                }
            }
            f5892b = Boolean.valueOf(z);
        }
        return f5892b.booleanValue();
    }

    /* renamed from: h */
    public static boolean m8226h(@RecentlyNonNull Context context) {
        if (f5894d == null) {
            boolean z = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot")) {
                z = context.getPackageManager().hasSystemFeature("android.hardware.type.embedded");
            }
            f5894d = Boolean.valueOf(z);
        }
        return f5894d.booleanValue();
    }
}
