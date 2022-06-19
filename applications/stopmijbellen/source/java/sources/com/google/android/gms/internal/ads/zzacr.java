package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacr.class */
final class zzacr implements zzacx {
    private final zzxd zza;
    private final zzxc zzb;
    private long zzc = -1;
    private long zzd = -1;

    public zzacr(zzxd zzxdVar, zzxc zzxcVar) {
        this.zza = zzxdVar;
        this.zzb = zzxcVar;
    }

    public final void zza(long j) {
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final long zzd(zzwq zzwqVar) {
        long j = this.zzd;
        if (j >= 0) {
            this.zzd = -1L;
            return -(j + 2);
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final zzxp zze() {
        zzdy.zzf(this.zzc != -1);
        return new zzxb(this.zza, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final void zzg(long j) {
        long[] jArr = this.zzb.zza;
        this.zzd = jArr[zzfn.zzd(jArr, j, true, true)];
    }
}
