package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
/* renamed from: com.google.android.gms.internal.ads.vl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vl.class */
public final class BinderC12989vl extends AbstractBinderC12971uu {

    /* renamed from: a */
    FullScreenContentCallback f49916a;

    /* renamed from: b */
    OnUserEarnedRewardListener f49917b;

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14082a() {
        FullScreenContentCallback fullScreenContentCallback = this.f49916a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14081a(int i) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14080a(AbstractC12962ul abstractC12962ul) {
        OnUserEarnedRewardListener onUserEarnedRewardListener = this.f49917b;
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.onUserEarnedReward(new C12982ve(abstractC12962ul));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14079a(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f49916a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.zzqh());
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: b */
    public final void mo14078b() {
        FullScreenContentCallback fullScreenContentCallback = this.f49916a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: c */
    public final void mo14077c() {
        FullScreenContentCallback fullScreenContentCallback = this.f49916a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
