package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcz.class */
public final class zzcz {
    public final long zza;
    public final zzaiq zzb;
    public final int zzc;
    public final zzhf zzd;
    public final long zze;
    public final zzaiq zzf;
    public final int zzg;
    public final zzhf zzh;
    public final long zzi;
    public final long zzj;

    public zzcz(long j, zzaiq zzaiqVar, int i, zzhf zzhfVar, long j2, zzaiq zzaiqVar2, int i2, zzhf zzhfVar2, long j3, long j4) {
        this.zza = j;
        this.zzb = zzaiqVar;
        this.zzc = i;
        this.zzd = zzhfVar;
        this.zze = j2;
        this.zzf = zzaiqVar2;
        this.zzg = i2;
        this.zzh = zzhfVar2;
        this.zzi = j3;
        this.zzj = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzcz.class != obj.getClass()) {
            return false;
        }
        zzcz zzczVar = (zzcz) obj;
        return this.zza == zzczVar.zza && this.zzc == zzczVar.zzc && this.zze == zzczVar.zze && this.zzg == zzczVar.zzg && this.zzi == zzczVar.zzi && this.zzj == zzczVar.zzj && zzflt.zza(this.zzb, zzczVar.zzb) && zzflt.zza(this.zzd, zzczVar.zzd) && zzflt.zza(this.zzf, zzczVar.zzf) && zzflt.zza(this.zzh, zzczVar.zzh);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zza), this.zzb, Integer.valueOf(this.zzc), this.zzd, Long.valueOf(this.zze), this.zzf, Integer.valueOf(this.zzg), this.zzh, Long.valueOf(this.zzi), Long.valueOf(this.zzj)});
    }
}
