package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
/* renamed from: com.google.android.gms.internal.ads.vo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vo.class */
public final class BinderC12992vo extends AbstractBinderC12974ux {

    /* renamed from: a */
    private final RewardedInterstitialAdLoadCallback f49927a;

    /* renamed from: b */
    private final C12991vn f49928b;

    public BinderC12992vo(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, C12991vn c12991vn) {
        this.f49927a = rewardedInterstitialAdLoadCallback;
        this.f49928b = c12991vn;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14073a() {
        C12991vn c12991vn;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f49927a;
        if (rewardedInterstitialAdLoadCallback == null || (c12991vn = this.f49928b) == null) {
            return;
        }
        rewardedInterstitialAdLoadCallback.onRewardedInterstitialAdLoaded(c12991vn);
        this.f49927a.onAdLoaded(this.f49928b);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14072a(int i) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f49927a;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onRewardedInterstitialAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14071a(zzvh zzvhVar) {
        if (this.f49927a != null) {
            LoadAdError zzqi = zzvhVar.zzqi();
            this.f49927a.onRewardedInterstitialAdFailedToLoad(zzqi);
            this.f49927a.onAdFailedToLoad(zzqi);
        }
    }
}
