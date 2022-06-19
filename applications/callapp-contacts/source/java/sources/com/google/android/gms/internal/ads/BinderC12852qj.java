package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* renamed from: com.google.android.gms.internal.ads.qj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qj.class */
public final class BinderC12852qj extends AbstractBinderC12556fl {

    /* renamed from: a */
    private final NativeAd.OnNativeAdLoadedListener f49739a;

    public BinderC12852qj(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.f49739a = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12557fm
    /* renamed from: a */
    public final void mo14237a(AbstractC12564ft abstractC12564ft) {
        this.f49739a.onNativeAdLoaded(new C12846qd(abstractC12564ft));
    }
}
