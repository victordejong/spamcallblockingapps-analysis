package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqd.class */
public final class bqd implements dsi<bqe> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24874a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cpz> f24875b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpk> f24876c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cov> f24877d;
    private final dsv<brs> e;
    private final dsv<cty> f;
    private final dsv<String> g;

    private bqd(dsv<Context> dsvVar, dsv<cpz> dsvVar2, dsv<cpk> dsvVar3, dsv<cov> dsvVar4, dsv<brs> dsvVar5, dsv<cty> dsvVar6, dsv<String> dsvVar7) {
        this.f24874a = dsvVar;
        this.f24875b = dsvVar2;
        this.f24876c = dsvVar3;
        this.f24877d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    public static bqd a(dsv<Context> dsvVar, dsv<cpz> dsvVar2, dsv<cpk> dsvVar3, dsv<cov> dsvVar4, dsv<brs> dsvVar5, dsv<cty> dsvVar6, dsv<String> dsvVar7) {
        return new bqd(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bqe(this.f24874a.a(), this.f24875b.a(), this.f24876c.a(), this.f24877d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
