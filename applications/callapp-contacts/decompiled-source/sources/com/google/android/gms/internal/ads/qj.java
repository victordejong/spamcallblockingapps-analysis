package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qj.class */
public final class qj extends fl {

    /* renamed from: a  reason: collision with root package name */
    private final NativeAd.OnNativeAdLoadedListener f28334a;

    public qj(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.f28334a = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.fm
    public final void a(ft ftVar) {
        this.f28334a.onNativeAdLoaded(new qd(ftVar));
    }
}
