package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpx.class */
public final class zzpx implements zznx {
    private final long zzb;
    private final zznx zzc;

    public zzpx(long j, zznx zznxVar) {
        this.zzb = j;
        this.zzc = zznxVar;
    }

    @Override // com.google.android.gms.internal.ads.zznx
    public final zzox zzB(int i, int i2) {
        return this.zzc.zzB(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zznx
    public final void zzC() {
        this.zzc.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zznx
    public final void zzD(zzot zzotVar) {
        this.zzc.zzD(new zzpw(this, zzotVar));
    }
}
