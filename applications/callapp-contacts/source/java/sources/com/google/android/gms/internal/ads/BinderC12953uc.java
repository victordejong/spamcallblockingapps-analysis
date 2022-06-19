package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.RewardedVideoAdListener;
/* renamed from: com.google.android.gms.internal.ads.uc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uc.class */
public final class BinderC12953uc extends AbstractBinderC12948ty {

    /* renamed from: a */
    RewardedVideoAdListener f49885a;

    public BinderC12953uc(RewardedVideoAdListener rewardedVideoAdListener) {
        this.f49885a = rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: a */
    public final void mo14128a() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f49885a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: a */
    public final void mo14127a(int i) {
        RewardedVideoAdListener rewardedVideoAdListener = this.f49885a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: a */
    public final void mo14126a(AbstractC12939tp abstractC12939tp) {
        RewardedVideoAdListener rewardedVideoAdListener = this.f49885a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewarded(new C12951ua(abstractC12939tp));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: b */
    public final void mo14125b() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f49885a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: c */
    public final void mo14124c() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f49885a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoStarted();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: d */
    public final void mo14123d() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f49885a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: e */
    public final void mo14122e() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f49885a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: f */
    public final void mo14121f() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f49885a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoCompleted();
        }
    }
}
