package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxo.class */
public class zzxo implements zzxp {
    private final long zza;
    private final zzxn zzb;

    public zzxo(long j, long j2) {
        this.zza = j;
        zzxq zzxqVar = j2 == 0 ? zzxq.zza : new zzxq(0L, j2);
        this.zzb = new zzxn(zzxqVar, zzxqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return false;
    }
}
