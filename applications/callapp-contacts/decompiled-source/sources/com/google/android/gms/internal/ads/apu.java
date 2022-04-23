package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apu.class */
public final class apu implements dsi<ayi<art>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bkv> f23726a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23727b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bqe> f23728c;

    private apu(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        this.f23726a = dsvVar;
        this.f23727b = dsvVar2;
        this.f23728c = dsvVar3;
    }

    public static apu a(dsv<bkv> dsvVar, dsv<Executor> dsvVar2, dsv<bqe> dsvVar3) {
        return new apu(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        bkv a2 = this.f23726a.a();
        Executor a3 = this.f23727b.a();
        return (ayi) dso.b(((Boolean) ekb.e().a(aq.fe)).booleanValue() ? new ayi(this.f23728c.a(), a3) : new ayi(a2, a3));
    }
}
