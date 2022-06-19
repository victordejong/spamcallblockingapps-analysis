package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpw.class */
public final class zzpw implements zzot {
    public final /* synthetic */ zzot zza;
    public final /* synthetic */ zzpx zzb;

    public zzpw(zzpx zzpxVar, zzot zzotVar) {
        this.zzb = zzpxVar;
        this.zza = zzotVar;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        long j2;
        long j3;
        zzor zzf = this.zza.zzf(j);
        zzou zzouVar = zzf.zza;
        long j4 = zzouVar.zzb;
        long j5 = zzouVar.zzc;
        j2 = this.zzb.zzb;
        zzou zzouVar2 = new zzou(j4, j2 + j5);
        zzou zzouVar3 = zzf.zzb;
        long j6 = zzouVar3.zzb;
        long j7 = zzouVar3.zzc;
        j3 = this.zzb.zzb;
        return new zzor(zzouVar2, new zzou(j6, j3 + j7));
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zza.zzg();
    }
}
