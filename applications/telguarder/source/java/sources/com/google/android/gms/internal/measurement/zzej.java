package com.google.android.gms.internal.measurement;

import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzej.class */
public final class zzej {
    private static volatile boolean zza = !zza();

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
