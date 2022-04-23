package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavx.class */
public final class zzavx extends zzavc {

    /* renamed from: a */
    public FullScreenContentCallback f24546a;

    /* renamed from: b */
    public OnUserEarnedRewardListener f24547b;

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: B0 */
    public final void mo16283B0() {
        FullScreenContentCallback fullScreenContentCallback = this.f24546a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.mo18120a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: H0 */
    public final void mo16282H0() {
        FullScreenContentCallback fullScreenContentCallback = this.f24546a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.mo18118b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: a */
    public final void mo16281a(zzaux zzauxVar) {
        OnUserEarnedRewardListener onUserEarnedRewardListener = this.f24547b;
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.m18100a(new zzavm(zzauxVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: e */
    public final void mo16280e(zzva zzvaVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f24546a;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.mo18119a(zzvaVar.m11207f());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: o */
    public final void mo16279o(int i) {
    }
}
