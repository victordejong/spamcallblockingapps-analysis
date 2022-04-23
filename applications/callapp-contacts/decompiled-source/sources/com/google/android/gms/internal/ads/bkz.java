package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkz.class */
public final class bkz implements dsi<ayi<auf>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bkx> f24618a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24619b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bqg> f24620c;

    private bkz(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        this.f24618a = dsvVar;
        this.f24619b = dsvVar2;
        this.f24620c = dsvVar3;
    }

    public static bkz a(dsv<bkx> dsvVar, dsv<Executor> dsvVar2, dsv<bqg> dsvVar3) {
        return new bkz(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        bkx a2 = this.f24618a.a();
        Executor a3 = this.f24619b.a();
        return (ayi) dso.b(((Boolean) ekb.e().a(aq.fe)).booleanValue() ? new ayi(this.f24620c.a(), a3) : new ayi(a2, a3));
    }
}
