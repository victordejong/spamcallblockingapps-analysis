package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcia.class */
public final /* synthetic */ class zzcia implements zzbyq {
    private final zzbeb zzeuk;

    private zzcia(zzbeb zzbebVar) {
        this.zzeuk = zzbebVar;
    }

    public static zzbyq zzk(zzbeb zzbebVar) {
        return new zzcia(zzbebVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zzams() {
        this.zzeuk.destroy();
    }
}
