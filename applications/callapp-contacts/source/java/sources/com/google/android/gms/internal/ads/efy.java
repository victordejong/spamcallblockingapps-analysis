package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efy.class */
public final class efy extends egl {

    /* renamed from: a */
    FullScreenContentCallback f48989a;

    @Override // com.google.android.gms.internal.ads.egi
    /* renamed from: a */
    public final void mo15070a() {
        FullScreenContentCallback fullScreenContentCallback = this.f48989a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.egi
    /* renamed from: a */
    public final void mo15069a(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f48989a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.zzqh());
        }
    }

    @Override // com.google.android.gms.internal.ads.egi
    /* renamed from: b */
    public final void mo15068b() {
        FullScreenContentCallback fullScreenContentCallback = this.f48989a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.egi
    /* renamed from: c */
    public final void mo15067c() {
        FullScreenContentCallback fullScreenContentCallback = this.f48989a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
