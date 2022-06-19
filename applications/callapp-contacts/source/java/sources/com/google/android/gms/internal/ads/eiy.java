package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiy.class */
public final class eiy extends elc {

    /* renamed from: a */
    private final AdMetadataListener f49063a;

    public eiy(AdMetadataListener adMetadataListener) {
        this.f49063a = adMetadataListener;
    }

    @Override // com.google.android.gms.internal.ads.ekz
    /* renamed from: a */
    public final void mo14811a() {
        AdMetadataListener adMetadataListener = this.f49063a;
        if (adMetadataListener != null) {
            adMetadataListener.onAdMetadataChanged();
        }
    }
}
