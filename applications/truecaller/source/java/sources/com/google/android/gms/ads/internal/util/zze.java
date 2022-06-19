package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzbla;
import com.google.android.gms.internal.ads.zzcgt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zze.class */
public final class zze extends zzcgt {
    public static void zza(String str) {
        if (!zzc() || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zzcgt.zza.zzd(str)) {
        }
    }

    public static void zzb(String str, Throwable th) {
        if (zzc()) {
        }
    }

    public static boolean zzc() {
        return zzcgt.zzm(2) && zzbla.zza.zze().booleanValue();
    }
}
