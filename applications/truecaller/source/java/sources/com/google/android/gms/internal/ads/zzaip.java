package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaip.class */
public final class zzaip {
    private static final zzagk zzr;
    public Object zzb = zza;
    public zzagk zzc = zzr;
    public long zzd;
    public long zze;
    public long zzf;
    public boolean zzg;
    public boolean zzh;
    @Deprecated
    public boolean zzi;
    public zzagh zzj;
    public boolean zzk;
    public long zzl;
    public long zzm;
    public int zzn;
    public int zzo;
    public static final Object zza = new Object();
    private static final Object zzq = new Object();
    public static final zzadw<zzaip> zzp = zzaio.zza;

    static {
        zzagb zzagbVar = new zzagb();
        zzagbVar.zza("com.google.android.exoplayer2.Timeline");
        zzagbVar.zzb(Uri.EMPTY);
        zzr = zzagbVar.zzc();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !zzaip.class.equals(obj.getClass())) {
            return false;
        }
        zzaip zzaipVar = (zzaip) obj;
        return zzamq.zzc(this.zzb, zzaipVar.zzb) && zzamq.zzc(this.zzc, zzaipVar.zzc) && zzamq.zzc(null, null) && zzamq.zzc(this.zzj, zzaipVar.zzj) && this.zzd == zzaipVar.zzd && this.zze == zzaipVar.zze && this.zzf == zzaipVar.zzf && this.zzg == zzaipVar.zzg && this.zzh == zzaipVar.zzh && this.zzk == zzaipVar.zzk && this.zzm == zzaipVar.zzm && this.zzn == zzaipVar.zzn && this.zzo == zzaipVar.zzo;
    }

    public final int hashCode() {
        int hashCode = this.zzb.hashCode();
        int hashCode2 = this.zzc.hashCode();
        zzagh zzaghVar = this.zzj;
        int hashCode3 = zzaghVar == null ? 0 : zzaghVar.hashCode();
        long j = this.zzd;
        long j2 = this.zze;
        long j3 = this.zzf;
        boolean z = this.zzg;
        boolean z2 = this.zzh;
        boolean z3 = this.zzk;
        long j4 = this.zzm;
        return (((((((((((((((((((((hashCode2 + ((hashCode + 217) * 31)) * 961) + hashCode3) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 961) + ((int) ((j4 >>> 32) ^ j4))) * 31) + this.zzn) * 31) + this.zzo) * 31;
    }

    public final zzaip zza(Object obj, zzagk zzagkVar, Object obj2, long j, long j2, long j3, boolean z, boolean z2, zzagh zzaghVar, long j4, long j5, int i, int i2, long j6) {
        this.zzb = obj;
        this.zzc = zzagkVar != null ? zzagkVar : zzr;
        this.zzd = -9223372036854775807L;
        this.zze = -9223372036854775807L;
        this.zzf = -9223372036854775807L;
        this.zzg = z;
        this.zzh = z2;
        this.zzi = zzaghVar != null;
        this.zzj = zzaghVar;
        this.zzl = 0L;
        this.zzm = j5;
        this.zzn = 0;
        this.zzo = 0;
        this.zzk = false;
        return this;
    }

    public final boolean zzb() {
        zzakt.zzd(this.zzi == (this.zzj != null));
        return this.zzj != null;
    }
}
