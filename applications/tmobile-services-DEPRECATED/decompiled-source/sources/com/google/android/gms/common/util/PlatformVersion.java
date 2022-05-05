package com.google.android.gms.common.util;

import android.os.Build;
import com.google.android.gms.common.annotation.KeepForSdk;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/PlatformVersion.class */
public final class PlatformVersion {
    private PlatformVersion() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m14322a() {
        return true;
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m14321b() {
        return true;
    }

    @KeepForSdk
    /* renamed from: c */
    public static boolean m14320c() {
        return true;
    }

    @KeepForSdk
    /* renamed from: d */
    public static boolean m14319d() {
        return Build.VERSION.SDK_INT >= 18;
    }

    @KeepForSdk
    /* renamed from: e */
    public static boolean m14318e() {
        return Build.VERSION.SDK_INT >= 19;
    }

    @KeepForSdk
    /* renamed from: f */
    public static boolean m14317f() {
        return Build.VERSION.SDK_INT >= 20;
    }

    @KeepForSdk
    /* renamed from: g */
    public static boolean m14316g() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @KeepForSdk
    /* renamed from: h */
    public static boolean m14315h() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @KeepForSdk
    /* renamed from: i */
    public static boolean m14314i() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @KeepForSdk
    /* renamed from: j */
    public static boolean m14313j() {
        return Build.VERSION.SDK_INT >= 28;
    }
}
