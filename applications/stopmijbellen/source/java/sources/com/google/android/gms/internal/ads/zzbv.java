package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbv.class */
public final class zzbv {
    public static final zzj<zzbv> zza = zzbu.zza;
    public final Object zzb;
    public final int zzc;
    public final zzaz zzd;
    public final Object zze;
    public final int zzf;
    public final long zzg;
    public final long zzh;
    public final int zzi;
    public final int zzj;

    public zzbv(Object obj, int i, zzaz zzazVar, Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.zzb = obj;
        this.zzc = i;
        this.zzd = zzazVar;
        this.zze = obj2;
        this.zzf = i2;
        this.zzg = j;
        this.zzh = j2;
        this.zzi = i3;
        this.zzj = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzbv.class != obj.getClass()) {
            return false;
        }
        zzbv zzbvVar = (zzbv) obj;
        return this.zzc == zzbvVar.zzc && this.zzf == zzbvVar.zzf && this.zzg == zzbvVar.zzg && this.zzh == zzbvVar.zzh && this.zzi == zzbvVar.zzi && this.zzj == zzbvVar.zzj && zzfqc.zza(this.zzb, zzbvVar.zzb) && zzfqc.zza(this.zze, zzbvVar.zze) && zzfqc.zza(this.zzd, zzbvVar.zzd);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzb, Integer.valueOf(this.zzc), this.zzd, this.zze, Integer.valueOf(this.zzf), Integer.valueOf(this.zzc), Long.valueOf(this.zzg), Long.valueOf(this.zzh), Integer.valueOf(this.zzi), Integer.valueOf(this.zzj)});
    }
}
