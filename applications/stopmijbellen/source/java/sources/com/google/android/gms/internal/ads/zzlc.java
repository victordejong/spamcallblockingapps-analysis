package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlc.class */
public final class zzlc {
    public final long zza;
    public final zzcd zzb;
    public final int zzc;
    public final zzpz zzd;
    public final long zze;
    public final zzcd zzf;
    public final int zzg;
    public final zzpz zzh;
    public final long zzi;
    public final long zzj;

    public zzlc(long j, zzcd zzcdVar, int i, zzpz zzpzVar, long j2, zzcd zzcdVar2, int i2, zzpz zzpzVar2, long j3, long j4) {
        this.zza = j;
        this.zzb = zzcdVar;
        this.zzc = i;
        this.zzd = zzpzVar;
        this.zze = j2;
        this.zzf = zzcdVar2;
        this.zzg = i2;
        this.zzh = zzpzVar2;
        this.zzi = j3;
        this.zzj = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzlc.class != obj.getClass()) {
            return false;
        }
        zzlc zzlcVar = (zzlc) obj;
        return this.zza == zzlcVar.zza && this.zzc == zzlcVar.zzc && this.zze == zzlcVar.zze && this.zzg == zzlcVar.zzg && this.zzi == zzlcVar.zzi && this.zzj == zzlcVar.zzj && zzfqc.zza(this.zzb, zzlcVar.zzb) && zzfqc.zza(this.zzd, zzlcVar.zzd) && zzfqc.zza(this.zzf, zzlcVar.zzf) && zzfqc.zza(this.zzh, zzlcVar.zzh);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zza), this.zzb, Integer.valueOf(this.zzc), this.zzd, Long.valueOf(this.zze), this.zzf, Integer.valueOf(this.zzg), this.zzh, Long.valueOf(this.zzi), Long.valueOf(this.zzj)});
    }
}
