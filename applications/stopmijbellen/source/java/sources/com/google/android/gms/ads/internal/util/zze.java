package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzbmz;
import com.google.android.gms.internal.ads.zzciz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zze.class */
public final class zze extends zzciz {
    public static void zza(String str) {
        if (!zzc() || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zzciz.zza.zzd(str)) {
        }
    }

    public static void zzb(String str, Throwable th) {
        zzc();
    }

    public static boolean zzc() {
        return zzciz.zzm(2) && zzbmz.zza.zze().booleanValue();
    }
}
