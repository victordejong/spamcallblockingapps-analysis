package com.google.android.gms.common.util;

import android.os.Build;
import com.google.android.gms.common.annotation.KeepForSdk;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/PlatformVersion.class */
public final class PlatformVersion {
    private PlatformVersion() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m38776a() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m38775b() {
        return Build.VERSION.SDK_INT >= 28;
    }

    @KeepForSdk
    /* renamed from: c */
    public static boolean m38774c() {
        return Build.VERSION.SDK_INT >= 30;
    }
}
