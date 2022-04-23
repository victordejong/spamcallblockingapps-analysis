package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekd.class */
public final class ekd extends ell {

    /* renamed from: a  reason: collision with root package name */
    private final FullScreenContentCallback f27936a;

    public ekd(FullScreenContentCallback fullScreenContentCallback) {
        this.f27936a = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.internal.ads.elm
    public final void a() {
        FullScreenContentCallback fullScreenContentCallback = this.f27936a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.elm
    public final void a(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f27936a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.zzqh());
        }
    }

    @Override // com.google.android.gms.internal.ads.elm
    public final void b() {
        FullScreenContentCallback fullScreenContentCallback = this.f27936a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.elm
    public final void c() {
        FullScreenContentCallback fullScreenContentCallback = this.f27936a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
