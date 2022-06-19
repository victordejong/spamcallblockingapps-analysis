package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjf.class */
public final class zzfjf {
    private final long zza;
    private final boolean zzb;
    private final int zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;
    private final String zzh;
    private final int zzi;
    private final int zzj;

    public zzfjf(zzfje zzfjeVar) {
        long j;
        boolean z;
        int i;
        int i2;
        int i3;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        long currentTimeMillis = zzt.zzA().currentTimeMillis();
        j = zzfjeVar.zzb;
        this.zza = currentTimeMillis - j;
        z = zzfjeVar.zzc;
        this.zzb = z;
        i = zzfjeVar.zzl;
        this.zzi = i;
        i2 = zzfjeVar.zzm;
        this.zzj = i2;
        i3 = zzfjeVar.zzd;
        this.zzc = i3;
        str = zzfjeVar.zzf;
        this.zzd = str;
        str2 = zzfjeVar.zze;
        this.zze = str2;
        str3 = zzfjeVar.zzg;
        this.zzf = str3;
        str4 = zzfjeVar.zzh;
        this.zzg = str4;
        str5 = zzfjeVar.zzi;
        this.zzh = str5;
    }

    public final int zza() {
        return this.zzc;
    }

    public final long zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzd;
    }

    public final String zzd() {
        return this.zze;
    }

    public final String zze() {
        return this.zzf;
    }

    public final String zzf() {
        return this.zzg;
    }

    public final String zzg() {
        return this.zzh;
    }

    public final boolean zzh() {
        return this.zzb;
    }

    public final int zzi() {
        return this.zzi;
    }

    public final int zzj() {
        return this.zzj;
    }
}
