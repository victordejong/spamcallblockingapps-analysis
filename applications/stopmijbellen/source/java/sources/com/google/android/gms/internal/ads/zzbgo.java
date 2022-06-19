package com.google.android.gms.internal.ads;

import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgo.class */
public final class zzbgo {
    private static final zzbgo zza = new zzbgo();
    private final zzcis zzb;
    private final zzbgm zzc;
    private final String zzd;
    private final zzcjf zze;
    private final Random zzf;

    public zzbgo() {
        zzcis zzcisVar = new zzcis();
        zzbgm zzbgmVar = new zzbgm(new zzbfc(), new zzbfa(), new zzbjv(), new zzbqh(), new zzcfl(), new zzcbp(), new zzbqi());
        String zzd = zzcis.zzd();
        zzcjf zzcjfVar = new zzcjf(0, 214106000, true, false, false);
        Random random = new Random();
        this.zzb = zzcisVar;
        this.zzc = zzbgmVar;
        this.zzd = zzd;
        this.zze = zzcjfVar;
        this.zzf = random;
    }

    public static zzbgm zza() {
        return zza.zzc;
    }

    public static zzcis zzb() {
        return zza.zzb;
    }

    public static zzcjf zzc() {
        return zza.zze;
    }

    public static String zzd() {
        return zza.zzd;
    }

    public static Random zze() {
        return zza.zzf;
    }
}
