package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzca.class */
public final class zzca {
    public static final zzj<zzca> zza = zzbz.zza;
    public Object zzb;
    public Object zzc;
    public int zzd;
    public long zze;
    public long zzf;
    public boolean zzg;
    private zzd zzh = zzd.zza;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !zzca.class.equals(obj.getClass())) {
            return false;
        }
        zzca zzcaVar = (zzca) obj;
        return zzfn.zzP(this.zzb, zzcaVar.zzb) && zzfn.zzP(this.zzc, zzcaVar.zzc) && this.zzd == zzcaVar.zzd && this.zze == zzcaVar.zze && this.zzg == zzcaVar.zzg && zzfn.zzP(this.zzh, zzcaVar.zzh);
    }

    public final int hashCode() {
        Object obj = this.zzb;
        int i = 0;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.zzc;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        int i2 = this.zzd;
        long j = this.zze;
        return this.zzh.hashCode() + ((((((((((hashCode + 217) * 31) + i) * 31) + i2) * 31) + ((int) ((j >>> 32) ^ j))) * 961) + (this.zzg ? 1 : 0)) * 31);
    }

    public final int zza(int i) {
        return this.zzh.zza(i).zzc;
    }

    public final int zzb(long j) {
        return -1;
    }

    public final int zzc(long j) {
        return -1;
    }

    public final int zzd(int i) {
        return this.zzh.zza(i).zza(-1);
    }

    public final int zze(int i, int i2) {
        return this.zzh.zza(i).zza(i2);
    }

    public final long zzf(int i, int i2) {
        zzc zza2 = this.zzh.zza(i);
        if (zza2.zzc != -1) {
            return zza2.zzf[i2];
        }
        return -9223372036854775807L;
    }

    public final long zzg(int i) {
        long j = this.zzh.zza(i).zzb;
        return 0L;
    }

    public final long zzh() {
        long j = this.zzh.zzc;
        return 0L;
    }

    public final long zzi(int i) {
        long j = this.zzh.zza(i).zzg;
        return 0L;
    }

    public final zzca zzj(Object obj, Object obj2, int i, long j, long j2, zzd zzdVar, boolean z) {
        this.zzb = obj;
        this.zzc = obj2;
        this.zzd = 0;
        this.zze = j;
        this.zzf = 0L;
        this.zzh = zzdVar;
        this.zzg = z;
        return this;
    }

    public final boolean zzk(int i) {
        boolean z = this.zzh.zza(i).zzh;
        return false;
    }
}
