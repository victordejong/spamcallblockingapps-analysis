package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blb.class */
public final class blb implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bkx> f24624a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24625b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bqg> f24626c;

    private blb(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        this.f24624a = dsvVar;
        this.f24625b = dsvVar2;
        this.f24626c = dsvVar3;
    }

    public static blb a(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        return new blb(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        bkx a2 = this.f24624a.a();
        Executor a3 = this.f24625b.a();
        return (ayi) dso.b(((Boolean) ekb.e().a(aq.fe)).booleanValue() ? new ayi(this.f24626c.a(), a3) : new ayi(a2, a3));
    }
}
