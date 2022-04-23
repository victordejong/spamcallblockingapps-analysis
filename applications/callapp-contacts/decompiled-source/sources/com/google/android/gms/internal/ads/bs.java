package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bs.class */
public final class bs extends bq {

    /* renamed from: a  reason: collision with root package name */
    private final OnCustomRenderedAdLoadedListener f24979a;

    public bs(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f24979a = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.bn
    public final void a(bm bmVar) {
        this.f24979a.onCustomRenderedAdLoaded(new bj(bmVar));
    }
}
