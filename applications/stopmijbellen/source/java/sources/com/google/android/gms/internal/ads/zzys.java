package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzys.class */
final class zzys implements zzxp {
    public final /* synthetic */ zzxp zza;
    public final /* synthetic */ zzyt zzb;

    public zzys(zzyt zzytVar, zzxp zzxpVar) {
        this.zzb = zzytVar;
        this.zza = zzxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        long j2;
        long j3;
        zzxn zzg = this.zza.zzg(j);
        zzxq zzxqVar = zzg.zza;
        long j4 = zzxqVar.zzb;
        long j5 = zzxqVar.zzc;
        j2 = this.zzb.zzb;
        zzxq zzxqVar2 = new zzxq(j4, j2 + j5);
        zzxq zzxqVar3 = zzg.zzb;
        long j6 = zzxqVar3.zzb;
        long j7 = zzxqVar3.zzc;
        j3 = this.zzb.zzb;
        return new zzxn(zzxqVar2, new zzxq(j6, j3 + j7));
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return this.zza.zzh();
    }
}
