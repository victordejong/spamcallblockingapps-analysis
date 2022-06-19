package com.google.android.gms.internal.ads;

import android.os.Trace;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfl.class */
public final class zzfl {
    public static void zza(String str) {
        if (zzfn.zza >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void zzb() {
        if (zzfn.zza >= 18) {
            Trace.endSection();
        }
    }
}
