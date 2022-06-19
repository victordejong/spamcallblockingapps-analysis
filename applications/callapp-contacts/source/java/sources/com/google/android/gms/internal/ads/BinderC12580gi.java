package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeContentAd;
/* renamed from: com.google.android.gms.internal.ads.gi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gi.class */
public final class BinderC12580gi extends AbstractBinderC12540ew {

    /* renamed from: a */
    private final NativeContentAd.OnContentAdLoadedListener f49302a;

    public BinderC12580gi(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.f49302a = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12541ex
    /* renamed from: a */
    public final void mo14638a(AbstractC12527ek abstractC12527ek) {
        this.f49302a.onContentAdLoaded(new C12533ep(abstractC12527ek));
    }
}
