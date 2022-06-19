package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvm.class */
public final class zzvm extends zzxr {
    private final AdMetadataListener zzcid;

    public zzvm(AdMetadataListener adMetadataListener) {
        this.zzcid = adMetadataListener;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final void onAdMetadataChanged() {
        AdMetadataListener adMetadataListener = this.zzcid;
        if (adMetadataListener != null) {
            adMetadataListener.onAdMetadataChanged();
        }
    }
}
