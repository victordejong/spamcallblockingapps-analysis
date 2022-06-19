package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekd.class */
public final class ekd extends ell {

    /* renamed from: a */
    private final FullScreenContentCallback f49157a;

    public ekd(FullScreenContentCallback fullScreenContentCallback) {
        this.f49157a = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.internal.ads.elm
    /* renamed from: a */
    public final void mo14808a() {
        FullScreenContentCallback fullScreenContentCallback = this.f49157a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.elm
    /* renamed from: a */
    public final void mo14807a(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f49157a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.zzqh());
        }
    }

    @Override // com.google.android.gms.internal.ads.elm
    /* renamed from: b */
    public final void mo14806b() {
        FullScreenContentCallback fullScreenContentCallback = this.f49157a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.elm
    /* renamed from: c */
    public final void mo14805c() {
        FullScreenContentCallback fullScreenContentCallback = this.f49157a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
