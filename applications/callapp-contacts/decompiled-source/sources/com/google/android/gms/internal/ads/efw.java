package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAdPresentationCallback;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efw.class */
public final class efw extends egg {

    /* renamed from: a  reason: collision with root package name */
    private final AppOpenAdPresentationCallback f27802a;

    public efw(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.f27802a = appOpenAdPresentationCallback;
    }

    @Override // com.google.android.gms.internal.ads.egh
    public final void a() {
        this.f27802a.onAppOpenAdClosed();
    }
}
