package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavp.class */
public final class zzavp extends zzavc {

    /* renamed from: a */
    public final RewardedAdCallback f24537a;

    public zzavp(RewardedAdCallback rewardedAdCallback) {
        this.f24537a = rewardedAdCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: B0 */
    public final void mo16283B0() {
        RewardedAdCallback rewardedAdCallback = this.f24537a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.mo17901a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: H0 */
    public final void mo16282H0() {
        RewardedAdCallback rewardedAdCallback = this.f24537a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.mo17897b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: a */
    public final void mo16281a(zzaux zzauxVar) {
        RewardedAdCallback rewardedAdCallback = this.f24537a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.mo17898a(new zzavm(zzauxVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: e */
    public final void mo16280e(zzva zzvaVar) {
        RewardedAdCallback rewardedAdCallback = this.f24537a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.m17899a(zzvaVar.m11207f());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: o */
    public final void mo16279o(int i) {
        RewardedAdCallback rewardedAdCallback = this.f24537a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.mo17900a(i);
        }
    }
}
