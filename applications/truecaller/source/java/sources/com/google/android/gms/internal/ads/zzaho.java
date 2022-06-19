package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaho.class */
public final class zzaho {
    public static final zzadw<zzaho> zzj = zzahn.zza;
    public final Object zza;
    public final int zzb;
    public final zzagk zzc;
    public final Object zzd;
    public final int zze;
    public final long zzf;
    public final long zzg;
    public final int zzh;
    public final int zzi;

    public zzaho(Object obj, int i, zzagk zzagkVar, Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.zza = obj;
        this.zzb = i;
        this.zzc = zzagkVar;
        this.zzd = obj2;
        this.zze = i2;
        this.zzf = j;
        this.zzg = j2;
        this.zzh = i3;
        this.zzi = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaho.class != obj.getClass()) {
            return false;
        }
        zzaho zzahoVar = (zzaho) obj;
        return this.zzb == zzahoVar.zzb && this.zze == zzahoVar.zze && this.zzf == zzahoVar.zzf && this.zzg == zzahoVar.zzg && this.zzh == zzahoVar.zzh && this.zzi == zzahoVar.zzi && zzflt.zza(this.zza, zzahoVar.zza) && zzflt.zza(this.zzd, zzahoVar.zzd) && zzflt.zza(this.zzc, zzahoVar.zzc);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, Integer.valueOf(this.zzb), this.zzc, this.zzd, Integer.valueOf(this.zze), Integer.valueOf(this.zzb), Long.valueOf(this.zzf), Long.valueOf(this.zzg), Integer.valueOf(this.zzh), Integer.valueOf(this.zzi)});
    }
}
