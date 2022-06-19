package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
/* renamed from: com.google.android.gms.internal.ads.bs */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bs.class */
public final class BinderC12251bs extends AbstractBinderC12249bq {

    /* renamed from: a */
    private final OnCustomRenderedAdLoadedListener f44595a;

    public BinderC12251bs(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f44595a = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12246bn
    /* renamed from: a */
    public final void mo17625a(AbstractC12245bm abstractC12245bm) {
        this.f44595a.onCustomRenderedAdLoaded(new C12242bj(abstractC12245bm));
    }
}
