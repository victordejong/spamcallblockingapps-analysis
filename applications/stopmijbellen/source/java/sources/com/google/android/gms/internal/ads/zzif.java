package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzif.class */
public final class zzif {
    private static final zzpz zzt = new zzpz(new Object());
    public final zzcd zza;
    public final zzpz zzb;
    public final long zzc;
    public final long zzd;
    public final int zze;
    public final zzgg zzf;
    public final boolean zzg;
    public final zzch zzh;
    public final zzsw zzi;
    public final List<zzdd> zzj;
    public final zzpz zzk;
    public final boolean zzl;
    public final int zzm;
    public final zzbn zzn;
    public final boolean zzo;
    public final boolean zzp;
    public volatile long zzq;
    public volatile long zzr;
    public volatile long zzs;

    public zzif(zzcd zzcdVar, zzpz zzpzVar, long j, long j2, int i, zzgg zzggVar, boolean z, zzch zzchVar, zzsw zzswVar, List<zzdd> list, zzpz zzpzVar2, boolean z2, int i2, zzbn zzbnVar, long j3, long j4, long j5, boolean z3, boolean z4) {
        this.zza = zzcdVar;
        this.zzb = zzpzVar;
        this.zzc = j;
        this.zzd = j2;
        this.zze = i;
        this.zzf = zzggVar;
        this.zzg = z;
        this.zzh = zzchVar;
        this.zzi = zzswVar;
        this.zzj = list;
        this.zzk = zzpzVar2;
        this.zzl = z2;
        this.zzm = i2;
        this.zzn = zzbnVar;
        this.zzq = j3;
        this.zzr = j4;
        this.zzs = j5;
        this.zzo = z3;
        this.zzp = z4;
    }

    public static zzif zzh(zzsw zzswVar) {
        zzcd zzcdVar = zzcd.zza;
        zzpz zzpzVar = zzt;
        return new zzif(zzcdVar, zzpzVar, -9223372036854775807L, 0L, 1, null, false, zzch.zza, zzswVar, zzfss.zzo(), zzpzVar, false, 0, zzbn.zza, 0L, 0L, 0L, false, false);
    }

    public static zzpz zzi() {
        return zzt;
    }

    public final zzif zza(zzpz zzpzVar) {
        return new zzif(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, zzpzVar, this.zzl, this.zzm, this.zzn, this.zzq, this.zzr, this.zzs, this.zzo, this.zzp);
    }

    public final zzif zzb(zzpz zzpzVar, long j, long j2, long j3, long j4, zzch zzchVar, zzsw zzswVar, List<zzdd> list) {
        return new zzif(this.zza, zzpzVar, j2, j3, this.zze, this.zzf, this.zzg, zzchVar, zzswVar, list, this.zzk, this.zzl, this.zzm, this.zzn, this.zzq, j4, j, this.zzo, this.zzp);
    }

    public final zzif zzc(boolean z) {
        return new zzif(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzq, this.zzr, this.zzs, z, this.zzp);
    }

    public final zzif zzd(boolean z, int i) {
        return new zzif(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, z, i, this.zzn, this.zzq, this.zzr, this.zzs, this.zzo, this.zzp);
    }

    public final zzif zze(zzgg zzggVar) {
        return new zzif(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzggVar, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzq, this.zzr, this.zzs, this.zzo, this.zzp);
    }

    public final zzif zzf(int i) {
        return new zzif(this.zza, this.zzb, this.zzc, this.zzd, i, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzq, this.zzr, this.zzs, this.zzo, this.zzp);
    }

    public final zzif zzg(zzcd zzcdVar) {
        return new zzif(zzcdVar, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzq, this.zzr, this.zzs, this.zzo, this.zzp);
    }
}
