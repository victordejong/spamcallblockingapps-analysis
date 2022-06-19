package com.google.android.gms.ads;

import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/zza.class */
public final class zza {
    public static AdSize zza(int i, int i2) {
        AdSize adSize = new AdSize(i, i2);
        adSize.zzc(true);
        adSize.zzr(i2);
        return adSize;
    }

    public static AdSize zza(int i, int i2, String str) {
        return new AdSize(i, i2, str);
    }

    public static boolean zza(AdSize adSize) {
        return adSize.zzdt();
    }

    public static boolean zzb(AdSize adSize) {
        return adSize.zzdu();
    }

    public static int zzc(AdSize adSize) {
        return adSize.zzdv();
    }
}
