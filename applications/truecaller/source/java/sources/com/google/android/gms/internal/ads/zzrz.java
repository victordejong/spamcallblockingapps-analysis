package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrz.class */
public final class zzrz implements zzot {
    public final /* synthetic */ zzsa zza;

    public /* synthetic */ zzrz(zzsa zzsaVar, zzry zzryVar) {
        this.zza = zzsaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        zzsm zzsmVar;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        zzsmVar = this.zza.zzd;
        long zzi = zzsmVar.zzi(j);
        j2 = this.zza.zzb;
        j3 = this.zza.zzc;
        j4 = this.zza.zzb;
        j5 = this.zza.zzf;
        j6 = this.zza.zzb;
        j7 = this.zza.zzc;
        zzou zzouVar = new zzou(j, zzamq.zzy((j2 + (((j3 - j4) * zzi) / j5)) - 30000, j6, j7 - 1));
        return new zzor(zzouVar, zzouVar);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        zzsm zzsmVar;
        long j;
        zzsmVar = this.zza.zzd;
        j = this.zza.zzf;
        return zzsmVar.zzh(j);
    }
}
