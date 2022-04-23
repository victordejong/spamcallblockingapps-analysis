package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavq.class */
public final class zzavq extends zzavj {

    /* renamed from: a */
    public final RewardedAdLoadCallback f24538a;

    public zzavq(RewardedAdLoadCallback rewardedAdLoadCallback) {
        this.f24538a = rewardedAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    /* renamed from: c */
    public final void mo16285c(zzva zzvaVar) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f24538a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.m17896a(zzvaVar.m11206i());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    /* renamed from: l */
    public final void mo16284l(int i) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f24538a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.mo5279a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void onRewardedAdLoaded() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f24538a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.mo5280a();
        }
    }
}
