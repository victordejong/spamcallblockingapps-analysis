package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzos.class */
public class zzos implements zzot {
    private final long zza;
    private final zzor zzb;

    public zzos(long j, long j2) {
        this.zza = j;
        zzou zzouVar = j2 == 0 ? zzou.zza : new zzou(0L, j2);
        this.zzb = new zzor(zzouVar, zzouVar);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zza;
    }
}
