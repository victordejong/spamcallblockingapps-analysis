package com.google.android.gms.internal.ads;

import android.os.Trace;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavc.class */
public final class zzavc {
    public static void zza(String str) {
        if (zzave.zza >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void zzb() {
        if (zzave.zza >= 18) {
            Trace.endSection();
        }
    }
}
