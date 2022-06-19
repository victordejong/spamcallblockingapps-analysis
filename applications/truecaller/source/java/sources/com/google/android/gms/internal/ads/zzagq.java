package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagq.class */
public final class zzagq {
    public final zzhf zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;

    public zzagq(zzhf zzhfVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        zzakt.zza(!z4 || z2);
        zzakt.zza(z3 ? z2 : true);
        this.zza = zzhfVar;
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
        if (obj == null || zzagq.class != obj.getClass()) {
            return false;
        }
        zzagq zzagqVar = (zzagq) obj;
        return this.zzb == zzagqVar.zzb && this.zzc == zzagqVar.zzc && this.zzd == zzagqVar.zzd && this.zze == zzagqVar.zze && this.zzg == zzagqVar.zzg && this.zzh == zzagqVar.zzh && this.zzi == zzagqVar.zzi && zzamq.zzc(this.zza, zzagqVar.zza);
    }

    public final int hashCode() {
        return ((((((((((((((this.zza.hashCode() + 527) * 31) + ((int) this.zzb)) * 31) + ((int) this.zzc)) * 31) + ((int) this.zzd)) * 31) + ((int) this.zze)) * 961) + (this.zzg ? 1 : 0)) * 31) + (this.zzh ? 1 : 0)) * 31) + (this.zzi ? 1 : 0);
    }

    public final zzagq zza(long j) {
        return j == this.zzb ? this : new zzagq(this.zza, j, this.zzc, this.zzd, this.zze, false, this.zzg, this.zzh, this.zzi);
    }

    public final zzagq zzb(long j) {
        return j == this.zzc ? this : new zzagq(this.zza, this.zzb, j, this.zzd, this.zze, false, this.zzg, this.zzh, this.zzi);
    }
}
