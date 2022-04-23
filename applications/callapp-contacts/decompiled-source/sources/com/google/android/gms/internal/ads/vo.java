package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vo.class */
public final class vo extends ux {

    /* renamed from: a  reason: collision with root package name */
    private final RewardedInterstitialAdLoadCallback f28442a;

    /* renamed from: b  reason: collision with root package name */
    private final vn f28443b;

    public vo(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, vn vnVar) {
        this.f28442a = rewardedInterstitialAdLoadCallback;
        this.f28443b = vnVar;
    }

    @Override // com.google.android.gms.internal.ads.uy
    public final void a() {
        vn vnVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f28442a;
        if (rewardedInterstitialAdLoadCallback != null && (vnVar = this.f28443b) != null) {
            rewardedInterstitialAdLoadCallback.onRewardedInterstitialAdLoaded(vnVar);
            this.f28442a.onAdLoaded(this.f28443b);
        }
    }

    @Override // com.google.android.gms.internal.ads.uy
    public final void a(int i) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f28442a;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onRewardedInterstitialAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.uy
    public final void a(zzvh zzvhVar) {
        if (this.f28442a != null) {
            LoadAdError zzqi = zzvhVar.zzqi();
            this.f28442a.onRewardedInterstitialAdFailedToLoad(zzqi);
            this.f28442a.onAdFailedToLoad(zzqi);
        }
    }
}
