package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhv.class */
final class zzhv {
    public final zzpz zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;

    public zzhv(zzpz zzpzVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        zzdy.zzd(!z4 || z2);
        zzdy.zzd(z3 ? z2 : true);
        this.zza = zzpzVar;
        this.zzb = j;
        this.zzc = j2;
        this.zzd = j3;
        this.zze = j4;
        this.zzf = false;
        this.zzg = z2;
        this.zzh = z3;
        this.zzi = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzhv.class != obj.getClass()) {
            return false;
        }
        zzhv zzhvVar = (zzhv) obj;
        return this.zzb == zzhvVar.zzb && this.zzc == zzhvVar.zzc && this.zzd == zzhvVar.zzd && this.zze == zzhvVar.zze && this.zzg == zzhvVar.zzg && this.zzh == zzhvVar.zzh && this.zzi == zzhvVar.zzi && zzfn.zzP(this.zza, zzhvVar.zza);
    }

    public final int hashCode() {
        return ((((((((((((((this.zza.hashCode() + 527) * 31) + ((int) this.zzb)) * 31) + ((int) this.zzc)) * 31) + ((int) this.zzd)) * 31) + ((int) this.zze)) * 961) + (this.zzg ? 1 : 0)) * 31) + (this.zzh ? 1 : 0)) * 31) + (this.zzi ? 1 : 0);
    }

    public final zzhv zza(long j) {
        return j == this.zzc ? this : new zzhv(this.zza, this.zzb, j, this.zzd, this.zze, false, this.zzg, this.zzh, this.zzi);
    }

    public final zzhv zzb(long j) {
        return j == this.zzb ? this : new zzhv(this.zza, j, this.zzc, this.zzd, this.zze, false, this.zzg, this.zzh, this.zzi);
    }
}
