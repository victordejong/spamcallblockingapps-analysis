package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.RewardedVideoAdListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaun.class */
public final class zzaun extends zzauj {

    /* renamed from: a */
    public RewardedVideoAdListener f24526a;

    public zzaun(RewardedVideoAdListener rewardedVideoAdListener) {
        this.f24526a = rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: H */
    public final void mo16336H() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f24526a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.mo17912H();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: a */
    public final void mo16335a(zzatw zzatwVar) {
        RewardedVideoAdListener rewardedVideoAdListener = this.f24526a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.mo17911a(new zzaul(zzatwVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: c */
    public final void mo16334c(int i) {
        RewardedVideoAdListener rewardedVideoAdListener = this.f24526a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.mo17910c(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: g0 */
    public final void mo16333g0() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f24526a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.mo17909g0();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: n0 */
    public final void mo16332n0() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f24526a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.mo17908n0();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: o0 */
    public final void mo16331o0() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f24526a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.mo17907o0();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    public final void onRewardedVideoCompleted() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f24526a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoCompleted();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: q0 */
    public final void mo16330q0() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f24526a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.mo17906q0();
        }
    }
}
