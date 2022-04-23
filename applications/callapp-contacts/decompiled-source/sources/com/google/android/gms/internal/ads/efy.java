package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efy.class */
public final class efy extends egl {

    /* renamed from: a  reason: collision with root package name */
    FullScreenContentCallback f27805a;

    @Override // com.google.android.gms.internal.ads.egi
    public final void a() {
        FullScreenContentCallback fullScreenContentCallback = this.f27805a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.egi
    public final void a(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f27805a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.zzqh());
        }
    }

    @Override // com.google.android.gms.internal.ads.egi
    public final void b() {
        FullScreenContentCallback fullScreenContentCallback = this.f27805a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.egi
    public final void c() {
        FullScreenContentCallback fullScreenContentCallback = this.f27805a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
