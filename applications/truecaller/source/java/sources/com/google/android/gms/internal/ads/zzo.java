package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzo.class */
public class zzo {
    public final Object zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final int zze;

    public zzo(zzo zzoVar) {
        this.zza = zzoVar.zza;
        this.zzb = zzoVar.zzb;
        this.zzc = zzoVar.zzc;
        this.zzd = zzoVar.zzd;
        this.zze = zzoVar.zze;
    }

    public zzo(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    private zzo(Object obj, int i, int i2, long j, int i3) {
        this.zza = obj;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j;
        this.zze = i3;
    }

    public zzo(Object obj, long j) {
        this(obj, -1, -1, -1L, -1);
    }

    public zzo(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        return this.zza.equals(zzoVar.zza) && this.zzb == zzoVar.zzb && this.zzc == zzoVar.zzc && this.zzd == zzoVar.zzd && this.zze == zzoVar.zze;
    }

    public final int hashCode() {
        return ((((((((this.zza.hashCode() + 527) * 31) + this.zzb) * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + this.zze;
    }

    public final zzo zza(Object obj) {
        return this.zza.equals(obj) ? this : new zzo(obj, this.zzb, this.zzc, this.zzd, this.zze);
    }

    public final boolean zzb() {
        return this.zzb != -1;
    }
}
