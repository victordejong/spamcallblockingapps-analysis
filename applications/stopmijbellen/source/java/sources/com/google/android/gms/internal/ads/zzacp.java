package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacp.class */
final class zzacp implements zzxp {
    public final /* synthetic */ zzacq zza;

    public /* synthetic */ zzacp(zzacq zzacqVar, zzaco zzacoVar) {
        this.zza = zzacqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        zzadc zzadcVar;
        long j;
        zzadcVar = this.zza.zzd;
        j = this.zza.zzf;
        return zzadcVar.zzf(j);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        zzadc zzadcVar;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        zzadcVar = this.zza.zzd;
        long zzg = zzadcVar.zzg(j);
        j2 = this.zza.zzb;
        j3 = this.zza.zzc;
        j4 = this.zza.zzb;
        j5 = this.zza.zzf;
        j6 = this.zza.zzb;
        j7 = this.zza.zzc;
        zzxq zzxqVar = new zzxq(j, zzfn.zzo((j2 + (((j3 - j4) * zzg) / j5)) - 30000, j6, j7 - 1));
        return new zzxn(zzxqVar, zzxqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return true;
    }
}
