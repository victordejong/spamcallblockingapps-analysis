package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vh.class */
public final class vh extends ux {

    /* renamed from: a  reason: collision with root package name */
    private final RewardedAdLoadCallback f28427a;

    /* renamed from: b  reason: collision with root package name */
    private final RewardedAd f28428b;

    public vh(RewardedAdLoadCallback rewardedAdLoadCallback, RewardedAd rewardedAd) {
        this.f28427a = rewardedAdLoadCallback;
        this.f28428b = rewardedAd;
    }

    @Override // com.google.android.gms.internal.ads.uy
    public final void a() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f28427a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdLoaded();
            this.f28427a.onAdLoaded(this.f28428b);
        }
    }

    @Override // com.google.android.gms.internal.ads.uy
    public final void a(int i) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f28427a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.uy
    public final void a(zzvh zzvhVar) {
        if (this.f28427a != null) {
            LoadAdError zzqi = zzvhVar.zzqi();
            this.f28427a.onRewardedAdFailedToLoad(zzqi);
            this.f28427a.onAdFailedToLoad(zzqi);
        }
    }
}
