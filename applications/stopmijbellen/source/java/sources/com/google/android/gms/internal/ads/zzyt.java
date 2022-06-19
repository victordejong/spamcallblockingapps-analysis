package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyt.class */
public final class zzyt implements zzws {
    private final long zzb;
    private final zzws zzc;

    public zzyt(long j, zzws zzwsVar) {
        this.zzb = j;
        this.zzc = zzwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final void zzB() {
        this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final void zzL(zzxp zzxpVar) {
        this.zzc.zzL(new zzys(this, zzxpVar));
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final zzxt zzv(int i, int i2) {
        return this.zzc.zzv(i, i2);
    }
}
