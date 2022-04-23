package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.RewardedVideoAdListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uc.class */
public final class uc extends ty {

    /* renamed from: a  reason: collision with root package name */
    RewardedVideoAdListener f28413a;

    public uc(RewardedVideoAdListener rewardedVideoAdListener) {
        this.f28413a = rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void a() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f28413a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void a(int i) {
        RewardedVideoAdListener rewardedVideoAdListener = this.f28413a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void a(tp tpVar) {
        RewardedVideoAdListener rewardedVideoAdListener = this.f28413a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewarded(new ua(tpVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void b() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f28413a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void c() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f28413a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoStarted();
        }
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void d() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f28413a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void e() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f28413a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void f() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f28413a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoCompleted();
        }
    }
}
