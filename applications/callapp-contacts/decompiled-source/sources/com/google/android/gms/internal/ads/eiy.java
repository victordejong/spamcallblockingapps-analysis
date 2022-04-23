package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiy.class */
public final class eiy extends elc {

    /* renamed from: a  reason: collision with root package name */
    private final AdMetadataListener f27872a;

    public eiy(AdMetadataListener adMetadataListener) {
        this.f27872a = adMetadataListener;
    }

    @Override // com.google.android.gms.internal.ads.ekz
    public final void a() {
        AdMetadataListener adMetadataListener = this.f27872a;
        if (adMetadataListener != null) {
            adMetadataListener.onAdMetadataChanged();
        }
    }
}
