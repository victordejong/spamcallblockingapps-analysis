package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmq.class */
public final class cmq implements dsi<cmh<bhx, bhu>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f26080a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cqs> f26081b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<crn> f26082c;

    public cmq(dsv<Context> dsvVar, dsv<cqs> dsvVar2, dsv<crn> dsvVar3) {
        this.f26080a = dsvVar;
        this.f26081b = dsvVar2;
        this.f26082c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        Object obj;
        Context a2 = this.f26080a.a();
        cqs a3 = this.f26081b.a();
        crn a4 = this.f26082c.a();
        if (((Integer) ekb.e().a(aq.dS)).intValue() > 0) {
            crm a5 = a4.a(crf.Rewarded, a2, a3, new clo(new clj()));
            obj = new clk(new cmc(new cly()), new clt(a5.f26307a, zd.f28573a), a5.f26308b, zd.f28573a);
        } else {
            obj = new cly();
        }
        return (cmh) dso.b(obj);
    }
}
