package com.google.android.gms.internal.ads;

import android.os.Trace;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawz.class */
public final class zzawz {
    public static void zza(String str) {
        if (zzaxb.zza >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void zzb() {
        if (zzaxb.zza >= 18) {
            Trace.endSection();
        }
    }
}
