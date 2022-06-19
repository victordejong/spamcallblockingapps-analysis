package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAdPresentationCallback;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efw.class */
public final class efw extends egg {

    /* renamed from: a */
    private final AppOpenAdPresentationCallback f48986a;

    public efw(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.f48986a = appOpenAdPresentationCallback;
    }

    @Override // com.google.android.gms.internal.ads.egh
    /* renamed from: a */
    public final void mo15071a() {
        this.f48986a.onAppOpenAdClosed();
    }
}
