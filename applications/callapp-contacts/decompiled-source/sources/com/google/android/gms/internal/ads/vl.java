package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vl.class */
public final class vl extends uu {

    /* renamed from: a  reason: collision with root package name */
    FullScreenContentCallback f28434a;

    /* renamed from: b  reason: collision with root package name */
    OnUserEarnedRewardListener f28435b;

    @Override // com.google.android.gms.internal.ads.ur
    public final void a() {
        FullScreenContentCallback fullScreenContentCallback = this.f28434a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(int i) {
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(ul ulVar) {
        OnUserEarnedRewardListener onUserEarnedRewardListener = this.f28435b;
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.onUserEarnedReward(new ve(ulVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f28434a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.zzqh());
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void b() {
        FullScreenContentCallback fullScreenContentCallback = this.f28434a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void c() {
        FullScreenContentCallback fullScreenContentCallback = this.f28434a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
