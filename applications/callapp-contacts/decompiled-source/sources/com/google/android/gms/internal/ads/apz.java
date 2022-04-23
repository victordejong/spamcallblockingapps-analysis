package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apz.class */
public final class apz implements dsi<ayi<avw>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bkv> f23737a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23738b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bqe> f23739c;

    private apz(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        this.f23737a = dsvVar;
        this.f23738b = dsvVar2;
        this.f23739c = dsvVar3;
    }

    public static apz a(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        return new apz(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        bkv a2 = this.f23737a.a();
        Executor a3 = this.f23738b.a();
        return (ayi) dso.b(((Boolean) ekb.e().a(aq.fe)).booleanValue() ? new ayi(this.f23739c.a(), a3) : new ayi(a2, a3));
    }
}
