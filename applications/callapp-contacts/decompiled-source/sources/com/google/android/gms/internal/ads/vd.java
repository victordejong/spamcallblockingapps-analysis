package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vd.class */
public final class vd extends uu {

    /* renamed from: a  reason: collision with root package name */
    RewardedAdCallback f28423a;

    /* renamed from: b  reason: collision with root package name */
    FullScreenContentCallback f28424b;

    @Override // com.google.android.gms.internal.ads.ur
    public final void a() {
        RewardedAdCallback rewardedAdCallback = this.f28423a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdOpened();
        }
        FullScreenContentCallback fullScreenContentCallback = this.f28424b;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(int i) {
        RewardedAdCallback rewardedAdCallback = this.f28423a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(ul ulVar) {
        RewardedAdCallback rewardedAdCallback = this.f28423a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onUserEarnedReward(new ve(ulVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(zzvh zzvhVar) {
        AdError zzqh = zzvhVar.zzqh();
        RewardedAdCallback rewardedAdCallback = this.f28423a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(zzqh);
        }
        FullScreenContentCallback fullScreenContentCallback = this.f28424b;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzqh);
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void b() {
        RewardedAdCallback rewardedAdCallback = this.f28423a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdClosed();
        }
        FullScreenContentCallback fullScreenContentCallback = this.f28424b;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void c() {
        FullScreenContentCallback fullScreenContentCallback = this.f28424b;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
