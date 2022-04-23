package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bid.class */
public final class bid implements dsi<eht.a.EnumC0477a> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cpo> f24495a;

    public bid(dsv<cpo> dsvVar) {
        this.f24495a = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (eht.a.EnumC0477a) dso.b(this.f24495a.a().o.f26202a == cpg.f26212c ? eht.a.EnumC0477a.REWARDED_INTERSTITIAL : eht.a.EnumC0477a.REWARD_BASED_VIDEO_AD);
    }
}
