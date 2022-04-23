package com.google.android.gms.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/zza.class */
public final class zza {
    public static AdSize zza(int i, int i2, String str) {
        return new AdSize(i, i2, str);
    }

    public static boolean zza(AdSize adSize) {
        return adSize.zzdx();
    }

    public static int zzb(AdSize adSize) {
        return adSize.zzdy();
    }

    public static AdSize zzb(int i, int i2) {
        AdSize adSize = new AdSize(i, i2);
        adSize.zzc(true);
        adSize.zzr(i2);
        return adSize;
    }

    public static AdSize zzc(int i, int i2) {
        AdSize adSize = new AdSize(i, i2);
        adSize.zzd(true);
        adSize.zzs(i2);
        return adSize;
    }

    public static boolean zzc(AdSize adSize) {
        return adSize.zzdu();
    }

    public static boolean zzd(AdSize adSize) {
        return adSize.zzdv();
    }

    public static int zze(AdSize adSize) {
        return adSize.zzdw();
    }
}
