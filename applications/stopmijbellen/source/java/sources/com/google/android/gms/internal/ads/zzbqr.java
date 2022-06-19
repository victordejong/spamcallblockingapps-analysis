package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqr.class */
public final class zzbqr extends zzbqb {
    private final UnifiedNativeAd.UnconfirmedClickListener zza;

    public zzbqr(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zza = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zze() {
        this.zza.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zzf(String str) {
        this.zza.onUnconfirmedClickReceived(str);
    }
}
