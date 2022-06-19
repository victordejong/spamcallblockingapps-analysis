package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bid.class */
public final class bid implements dsi<eht.C12447a.EnumC12448a> {

    /* renamed from: a */
    private final dsv<cpo> f44011a;

    public bid(dsv<cpo> dsvVar) {
        this.f44011a = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (eht.C12447a.EnumC12448a) dso.m15764b(this.f44011a.mo14005a().f46335o.f46299a == cpg.f46309c ? eht.C12447a.EnumC12448a.REWARDED_INTERSTITIAL : eht.C12447a.EnumC12448a.REWARD_BASED_VIDEO_AD);
    }
}
