package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* renamed from: com.google.android.gms.internal.ads.gj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gj.class */
public final class BinderC12581gj extends AbstractBinderC12556fl {

    /* renamed from: a */
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener f49303a;

    public BinderC12581gj(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.f49303a = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12557fm
    /* renamed from: a */
    public final void mo14237a(AbstractC12564ft abstractC12564ft) {
        this.f49303a.onUnifiedNativeAdLoaded(new C12569fy(abstractC12564ft));
    }
}
