package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbop.class */
public final class zzbop extends zzboa {
    private final UnifiedNativeAd.UnconfirmedClickListener zza;

    public zzbop(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zza = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbob
    public final void zze(String str) {
        this.zza.onUnconfirmedClickReceived(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbob
    public final void zzf() {
        this.zza.onUnconfirmedClickCancelled();
    }
}
