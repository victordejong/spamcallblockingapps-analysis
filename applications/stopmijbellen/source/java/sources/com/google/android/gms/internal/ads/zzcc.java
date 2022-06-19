package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcc.class */
public final class zzcc {
    private static final zzaz zzr;
    public Object zzc = zza;
    public zzaz zzd = zzr;
    public long zze;
    public long zzf;
    public long zzg;
    public boolean zzh;
    public boolean zzi;
    @Deprecated
    public boolean zzj;
    public zzas zzk;
    public boolean zzl;
    public long zzm;
    public long zzn;
    public int zzo;
    public int zzp;
    public static final Object zza = new Object();
    private static final Object zzq = new Object();
    public static final zzj<zzcc> zzb = zzcb.zza;

    static {
        zzaf zzafVar = new zzaf();
        zzafVar.zza("androidx.media3.common.Timeline");
        zzafVar.zzb(Uri.EMPTY);
        zzr = zzafVar.zzc();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !zzcc.class.equals(obj.getClass())) {
            return false;
        }
        zzcc zzccVar = (zzcc) obj;
        return zzfn.zzP(this.zzc, zzccVar.zzc) && zzfn.zzP(this.zzd, zzccVar.zzd) && zzfn.zzP(null, null) && zzfn.zzP(this.zzk, zzccVar.zzk) && this.zze == zzccVar.zze && this.zzf == zzccVar.zzf && this.zzg == zzccVar.zzg && this.zzh == zzccVar.zzh && this.zzi == zzccVar.zzi && this.zzl == zzccVar.zzl && this.zzn == zzccVar.zzn && this.zzo == zzccVar.zzo && this.zzp == zzccVar.zzp;
    }

    public final int hashCode() {
        int hashCode = this.zzc.hashCode();
        int hashCode2 = this.zzd.hashCode();
        zzas zzasVar = this.zzk;
        int hashCode3 = zzasVar == null ? 0 : zzasVar.hashCode();
        long j = this.zze;
        long j2 = this.zzf;
        long j3 = this.zzg;
        boolean z = this.zzh;
        boolean z2 = this.zzi;
        boolean z3 = this.zzl;
        long j4 = this.zzn;
        return (((((((((((((((((((((hashCode2 + ((hashCode + 217) * 31)) * 961) + hashCode3) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 961) + ((int) ((j4 >>> 32) ^ j4))) * 31) + this.zzo) * 31) + this.zzp) * 31;
    }

    public final zzcc zza(Object obj, zzaz zzazVar, Object obj2, long j, long j2, long j3, boolean z, boolean z2, zzas zzasVar, long j4, long j5, int i, int i2, long j6) {
        this.zzc = obj;
        if (zzazVar == null) {
            zzazVar = zzr;
        }
        this.zzd = zzazVar;
        this.zze = -9223372036854775807L;
        this.zzf = -9223372036854775807L;
        this.zzg = -9223372036854775807L;
        this.zzh = z;
        this.zzi = z2;
        this.zzj = zzasVar != null;
        this.zzk = zzasVar;
        this.zzm = 0L;
        this.zzn = j5;
        this.zzo = 0;
        this.zzp = 0;
        this.zzl = false;
        return this;
    }

    public final boolean zzb() {
        zzdy.zzf(this.zzj == (this.zzk != null));
        return this.zzk != null;
    }
}
