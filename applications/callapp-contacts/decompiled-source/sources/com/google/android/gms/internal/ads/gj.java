package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gj.class */
public final class gj extends fl {

    /* renamed from: a  reason: collision with root package name */
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener f28013a;

    public gj(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.f28013a = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.fm
    public final void a(ft ftVar) {
        this.f28013a.onUnifiedNativeAdLoaded(new fy(ftVar));
    }
}
