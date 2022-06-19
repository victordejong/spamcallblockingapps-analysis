package com.google.ads.mediation;

import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.mediation.AbstractC5781n;
import com.google.android.gms.ads.p265x.AbstractC5859a;
import com.google.android.gms.ads.p265x.AbstractC5860b;
/* renamed from: com.google.ads.mediation.h */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/h.class */
final class C4598h extends AbstractC5860b {

    /* renamed from: a */
    final AbstractAdViewAdapter f13998a;

    /* renamed from: b */
    final AbstractC5781n f13999b;

    public C4598h(AbstractAdViewAdapter abstractAdViewAdapter, AbstractC5781n abstractC5781n) {
        this.f13998a = abstractAdViewAdapter;
        this.f13999b = abstractC5781n;
    }

    @Override // com.google.android.gms.ads.AbstractC5598c
    /* renamed from: a */
    public final void mo18297a(C5756j c5756j) {
        this.f13999b.mo10776m(this.f13998a, c5756j);
    }

    @Override // com.google.android.gms.ads.AbstractC5598c
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo18296b(AbstractC5859a abstractC5859a) {
        AbstractC5859a abstractC5859a2 = abstractC5859a;
        AbstractAdViewAdapter abstractAdViewAdapter = this.f13998a;
        abstractAdViewAdapter.mInterstitialAd = abstractC5859a2;
        abstractC5859a2.mo11727b(new C4599i(abstractAdViewAdapter, this.f13999b));
        this.f13999b.mo10775n(this.f13998a);
    }
}
