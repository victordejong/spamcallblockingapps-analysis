package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
/* renamed from: com.google.android.gms.internal.ads.vh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vh.class */
public final class BinderC12985vh extends AbstractBinderC12974ux {

    /* renamed from: a */
    private final RewardedAdLoadCallback f49905a;

    /* renamed from: b */
    private final RewardedAd f49906b;

    public BinderC12985vh(RewardedAdLoadCallback rewardedAdLoadCallback, RewardedAd rewardedAd) {
        this.f49905a = rewardedAdLoadCallback;
        this.f49906b = rewardedAd;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14073a() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f49905a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdLoaded();
            this.f49905a.onAdLoaded(this.f49906b);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14072a(int i) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f49905a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14071a(zzvh zzvhVar) {
        if (this.f49905a != null) {
            LoadAdError zzqi = zzvhVar.zzqi();
            this.f49905a.onRewardedAdFailedToLoad(zzqi);
            this.f49905a.onAdFailedToLoad(zzqi);
        }
    }
}
