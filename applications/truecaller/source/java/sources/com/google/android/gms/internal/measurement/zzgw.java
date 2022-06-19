package com.google.android.gms.internal.measurement;

import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgw.class */
public final class zzgw {
    private static volatile boolean zza = !zza();

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
