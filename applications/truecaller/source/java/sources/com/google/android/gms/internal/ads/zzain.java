package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzain.class */
public final class zzain {
    public static final zzadw<zzain> zzg = zzaim.zza;
    public Object zza;
    public Object zzb;
    public int zzc;
    public long zzd;
    public long zze;
    public boolean zzf;
    private zzd zzh = zzd.zza;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !zzain.class.equals(obj.getClass())) {
            return false;
        }
        zzain zzainVar = (zzain) obj;
        return zzamq.zzc(this.zza, zzainVar.zza) && zzamq.zzc(this.zzb, zzainVar.zzb) && this.zzc == zzainVar.zzc && this.zzd == zzainVar.zzd && this.zzf == zzainVar.zzf && zzamq.zzc(this.zzh, zzainVar.zzh);
    }

    public final int hashCode() {
        Object obj = this.zza;
        int i = 0;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.zzb;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        int i2 = this.zzc;
        long j = this.zzd;
        return this.zzh.hashCode() + ((((((((((hashCode + 217) * 31) + i) * 31) + i2) * 31) + ((int) ((j >>> 32) ^ j))) * 961) + (this.zzf ? 1 : 0)) * 31);
    }

    public final zzain zza(Object obj, Object obj2, int i, long j, long j2, zzd zzdVar, boolean z) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = 0;
        this.zzd = j;
        this.zze = 0L;
        this.zzh = zzdVar;
        this.zzf = z;
        return this;
    }

    public final long zzb(int i) {
        long j = this.zzh.zza(i).zza;
        return 0L;
    }

    public final int zzc(int i) {
        return this.zzh.zza(i).zza(-1);
    }

    public final int zzd(int i, int i2) {
        return this.zzh.zza(i).zza(i2);
    }

    public final int zze(long j) {
        return -1;
    }

    public final int zzf(long j) {
        long j2 = this.zzd;
        if (j == Long.MIN_VALUE || j2 != -9223372036854775807L) {
        }
        return -1;
    }

    public final int zzg(int i) {
        return this.zzh.zza(i).zzb;
    }

    public final long zzh(int i, int i2) {
        zzc zza = this.zzh.zza(i);
        if (zza.zzb != -1) {
            return zza.zze[i2];
        }
        return -9223372036854775807L;
    }

    public final long zzi() {
        long j = this.zzh.zzb;
        return 0L;
    }

    public final boolean zzj(int i) {
        boolean z = this.zzh.zza(i).zzg;
        return false;
    }

    public final long zzk(int i) {
        long j = this.zzh.zza(i).zzf;
        return 0L;
    }
}
