package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeContentAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gi.class */
public final class gi extends ew {

    /* renamed from: a  reason: collision with root package name */
    private final NativeContentAd.OnContentAdLoadedListener f28012a;

    public gi(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.f28012a = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.ex
    public final void a(ek ekVar) {
        this.f28012a.onContentAdLoaded(new ep(ekVar));
    }
}
