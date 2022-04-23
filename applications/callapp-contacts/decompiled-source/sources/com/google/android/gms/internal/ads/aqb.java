package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqb.class */
public final class aqb implements dsi<ayi<ash>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bkv> f23746a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23747b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bqe> f23748c;

    private aqb(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        this.f23746a = dsvVar;
        this.f23747b = dsvVar2;
        this.f23748c = dsvVar3;
    }

    public static aqb a(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        return new aqb(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        bkv a2 = this.f23746a.a();
        Executor a3 = this.f23747b.a();
        return (ayi) dso.b(((Boolean) ekb.e().a(aq.fe)).booleanValue() ? new ayi(this.f23748c.a(), a3) : new ayi(a2, a3));
    }
}
