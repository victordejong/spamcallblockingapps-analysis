package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
/* renamed from: com.google.android.gms.internal.ads.vd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vd.class */
public final class BinderC12981vd extends AbstractBinderC12971uu {

    /* renamed from: a */
    RewardedAdCallback f49901a;

    /* renamed from: b */
    FullScreenContentCallback f49902b;

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14082a() {
        RewardedAdCallback rewardedAdCallback = this.f49901a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdOpened();
        }
        FullScreenContentCallback fullScreenContentCallback = this.f49902b;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14081a(int i) {
        RewardedAdCallback rewardedAdCallback = this.f49901a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14080a(AbstractC12962ul abstractC12962ul) {
        RewardedAdCallback rewardedAdCallback = this.f49901a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onUserEarnedReward(new C12982ve(abstractC12962ul));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: a */
    public final void mo14079a(zzvh zzvhVar) {
        AdError zzqh = zzvhVar.zzqh();
        RewardedAdCallback rewardedAdCallback = this.f49901a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(zzqh);
        }
        FullScreenContentCallback fullScreenContentCallback = this.f49902b;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzqh);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: b */
    public final void mo14078b() {
        RewardedAdCallback rewardedAdCallback = this.f49901a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdClosed();
        }
        FullScreenContentCallback fullScreenContentCallback = this.f49902b;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12968ur
    /* renamed from: c */
    public final void mo14077c() {
        FullScreenContentCallback fullScreenContentCallback = this.f49902b;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
