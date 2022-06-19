package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbf.class */
public class zzbf {
    public final Object zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final int zze;

    public zzbf(zzbf zzbfVar) {
        this.zza = zzbfVar.zza;
        this.zzb = zzbfVar.zzb;
        this.zzc = zzbfVar.zzc;
        this.zzd = zzbfVar.zzd;
        this.zze = zzbfVar.zze;
    }

    public zzbf(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    private zzbf(Object obj, int i, int i2, long j, int i3) {
        this.zza = obj;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j;
        this.zze = i3;
    }

    public zzbf(Object obj, long j) {
        this(obj, -1, -1, -1L, -1);
    }

    public zzbf(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbf)) {
            return false;
        }
        zzbf zzbfVar = (zzbf) obj;
        return this.zza.equals(zzbfVar.zza) && this.zzb == zzbfVar.zzb && this.zzc == zzbfVar.zzc && this.zzd == zzbfVar.zzd && this.zze == zzbfVar.zze;
    }

    public final int hashCode() {
        return ((((((((this.zza.hashCode() + 527) * 31) + this.zzb) * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + this.zze;
    }

    public final zzbf zza(Object obj) {
        return this.zza.equals(obj) ? this : new zzbf(obj, this.zzb, this.zzc, this.zzd, this.zze);
    }

    public final boolean zzb() {
        return this.zzb != -1;
    }
}
