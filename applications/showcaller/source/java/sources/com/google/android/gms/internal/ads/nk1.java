package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nk1.class */
public final class nk1 implements cj3<zzazj> {

    /* renamed from: a */
    private final pj3<xj2> f27168a;

    public nk1(pj3<xj2> pj3Var) {
        this.f27168a = pj3Var;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        zzazj zzazjVar = ((o21) this.f27168a).m12759a().f32088o.f27162a == 3 ? zzazj.REWARDED_INTERSTITIAL : zzazj.REWARD_BASED_VIDEO_AD;
        kj3.m13879b(zzazjVar);
        return zzazjVar;
    }
}
