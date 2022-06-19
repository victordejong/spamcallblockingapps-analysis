package com.google.android.gms.internal.common;

import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzi.class */
public final class zzi {
    private static volatile boolean zza = !zza();

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
