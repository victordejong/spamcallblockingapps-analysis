package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmq.class */
public final class cmq implements dsi<cmh<bhx, bhu>> {

    /* renamed from: a */
    private final dsv<Context> f46088a;

    /* renamed from: b */
    private final dsv<cqs> f46089b;

    /* renamed from: c */
    private final dsv<crn> f46090c;

    public cmq(dsv<Context> dsvVar, dsv<cqs> dsvVar2, dsv<crn> dsvVar3) {
        this.f46088a = dsvVar;
        this.f46089b = dsvVar2;
        this.f46090c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        clk clkVar;
        Context mo14005a = this.f46088a.mo14005a();
        cqs mo14005a2 = this.f46089b.mo14005a();
        crn mo14005a3 = this.f46090c.mo14005a();
        if (((Integer) ekb.m14831e().m18571a(C12187aq.f42815dS)).intValue() > 0) {
            crm m17294a = mo14005a3.m17294a(crf.Rewarded, mo14005a, mo14005a2, new clo(new clj()));
            clkVar = new clk(new cmc(new cly()), new clt(m17294a.f46435a, C13091zd.f50118a), m17294a.f46436b, C13091zd.f50118a);
        } else {
            clkVar = new cly();
        }
        return (cmh) dso.m15764b(clkVar);
    }
}
