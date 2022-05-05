package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/DeviceProperties.class */
public final class DeviceProperties {

    /* renamed from: a */
    private static Boolean f7641a;

    /* renamed from: b */
    private static Boolean f7642b;

    /* renamed from: c */
    private static Boolean f7643c;

    private DeviceProperties() {
    }

    @KeepForSdk
    @TargetApi(21)
    /* renamed from: a */
    public static boolean m14332a(Context context) {
        if (f7642b == null) {
            f7642b = Boolean.valueOf(PlatformVersion.m14316g() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f7642b.booleanValue();
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m14331b() {
        return "user".equals(Build.TYPE);
    }

    @KeepForSdk
    @TargetApi(20)
    /* renamed from: c */
    public static boolean m14330c(Context context) {
        if (f7641a == null) {
            f7641a = Boolean.valueOf(PlatformVersion.m14317f() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f7641a.booleanValue();
    }

    @KeepForSdk
    @TargetApi(26)
    /* renamed from: d */
    public static boolean m14329d(Context context) {
        if (!m14330c(context)) {
            return false;
        }
        if (PlatformVersion.m14315h()) {
            return m14332a(context) && !PlatformVersion.m14314i();
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m14328e(Context context) {
        if (f7643c == null) {
            f7643c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f7643c.booleanValue();
    }
}
