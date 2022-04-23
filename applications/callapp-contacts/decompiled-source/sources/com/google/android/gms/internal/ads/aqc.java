package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqc.class */
public final class aqc implements dsi<ayi<eir>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bkv> f23749a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23750b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bqe> f23751c;

    private aqc(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        this.f23749a = dsvVar;
        this.f23750b = dsvVar2;
        this.f23751c = dsvVar3;
    }

    public static aqc a(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        return new aqc(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        bkv a2 = this.f23749a.a();
        Executor a3 = this.f23750b.a();
        return (ayi) dso.b(((Boolean) ekb.e().a(aq.fe)).booleanValue() ? new ayi(this.f23751c.a(), a3) : new ayi(a2, a3));
    }
}
