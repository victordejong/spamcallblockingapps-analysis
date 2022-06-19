package com.google.android.gms.internal.ads;

import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzber.class */
public final class zzber {
    private static final zzber zza = new zzber();
    private final zzcgm zzb;
    private final zzbep zzc;
    private final String zzd;
    private final zzcgz zze;
    private final Random zzf;

    public zzber() {
        zzcgm zzcgmVar = new zzcgm();
        zzbep zzbepVar = new zzbep(new zzbdf(), new zzbdd(), new zzbhx(), new zzbog(), new zzcde(), new zzbzn(), new zzboh());
        String zzf = zzcgm.zzf();
        zzcgz zzcgzVar = new zzcgz(0, 213806000, true, false, false);
        Random random = new Random();
        this.zzb = zzcgmVar;
        this.zzc = zzbepVar;
        this.zzd = zzf;
        this.zze = zzcgzVar;
        this.zzf = random;
    }

    public static zzcgm zza() {
        return zza.zzb;
    }

    public static zzbep zzb() {
        return zza.zzc;
    }

    public static String zzc() {
        return zza.zzd;
    }

    public static zzcgz zzd() {
        return zza.zze;
    }

    public static Random zze() {
        return zza.zzf;
    }
}
