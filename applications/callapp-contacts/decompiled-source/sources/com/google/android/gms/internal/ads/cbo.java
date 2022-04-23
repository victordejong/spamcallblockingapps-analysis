package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbo.class */
public final class cbo implements dsi<dbt<cbt>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cti> f25541a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cbs> f25542b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<aqs> f25543c;

    public cbo(dsv<cti> dsvVar, dsv<cbs> dsvVar2, dsv<aqs> dsvVar3) {
        this.f25541a = dsvVar;
        this.f25542b = dsvVar2;
        this.f25543c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        cti a2 = this.f25541a.a();
        return (dbt) dso.b(a2.a((cti) ctj.GENERATE_SIGNALS, (dbt) this.f25543c.a().b()).a((daq<I, O2>) this.f25542b.a()).a(((Integer) ekb.e().a(aq.dh)).intValue(), TimeUnit.SECONDS).a());
    }
}
