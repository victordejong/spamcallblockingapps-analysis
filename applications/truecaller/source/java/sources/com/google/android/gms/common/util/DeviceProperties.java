package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/DeviceProperties.class */
public final class DeviceProperties {

    /* renamed from: a */
    public static Boolean f6132a;

    /* renamed from: b */
    public static Boolean f6133b;

    /* renamed from: c */
    public static Boolean f6134c;

    /* renamed from: d */
    public static Boolean f6135d;

    /* renamed from: e */
    public static Boolean f6136e;

    private DeviceProperties() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m38786a(Context context) {
        if (f6134c == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater")) {
                z = false;
                if (packageManager.hasSystemFeature("cn.google.services")) {
                    z = true;
                }
            }
            f6134c = Boolean.valueOf(z);
        }
        return f6134c.booleanValue();
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m38785b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f6132a == null) {
            f6132a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return f6132a.booleanValue();
    }

    @KeepForSdk
    /* renamed from: c */
    public static boolean m38784c(Context context) {
        boolean z = true;
        if (m38785b(context)) {
            if (Build.VERSION.SDK_INT >= 24) {
                if (m38783d(context) && !PlatformVersion.m38776a()) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: d */
    public static boolean m38783d(Context context) {
        if (f6133b == null) {
            f6133b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f6133b.booleanValue();
    }
}
