package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gm.class */
public final class gm extends fr {

    /* renamed from: a  reason: collision with root package name */
    private final UnifiedNativeAd.UnconfirmedClickListener f28018a;

    public gm(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.f28018a = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.fs
    public final void a() {
        this.f28018a.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.fs
    public final void a(String str) {
        this.f28018a.onUnconfirmedClickReceived(str);
    }
}
