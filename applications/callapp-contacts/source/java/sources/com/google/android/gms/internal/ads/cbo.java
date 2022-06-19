package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbo.class */
public final class cbo implements dsi<dbt<cbt>> {

    /* renamed from: a */
    private final dsv<cti> f45462a;

    /* renamed from: b */
    private final dsv<cbs> f45463b;

    /* renamed from: c */
    private final dsv<aqs> f45464c;

    public cbo(dsv<cti> dsvVar, dsv<cbs> dsvVar2, dsv<aqs> dsvVar3) {
        this.f45462a = dsvVar;
        this.f45463b = dsvVar2;
        this.f45464c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        cti mo14005a = this.f45462a.mo14005a();
        return (dbt) dso.m15764b(mo14005a.m17259a((cti) ctj.GENERATE_SIGNALS, (dbt) this.f45464c.mo14005a().m18459b()).m17248a((daq<I, O2>) this.f45463b.mo14005a()).m17250a(((Integer) ekb.m14831e().m18571a(C12187aq.f42830dh)).intValue(), TimeUnit.SECONDS).m17251a());
    }
}
