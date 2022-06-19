package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzv;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgu.class */
final /* synthetic */ class zzcgu implements zzv {
    private final zzbsm zzgjh;

    private zzcgu(zzbsm zzbsmVar) {
        this.zzgjh = zzbsmVar;
    }

    public static zzv zza(zzbsm zzbsmVar) {
        return new zzcgu(zzbsmVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzwg() {
        this.zzgjh.onAdLeftApplication();
    }
}
