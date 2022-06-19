package com.google.android.gms.internal.ads;

import android.os.Trace;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamo.class */
public final class zzamo {
    public static void zza(String str) {
        if (zzamq.zza >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void zzb() {
        if (zzamq.zza >= 18) {
            Trace.endSection();
        }
    }
}
