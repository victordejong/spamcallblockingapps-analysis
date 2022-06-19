package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqd.class */
public final class bqd implements dsi<bqe> {

    /* renamed from: a */
    private final dsv<Context> f44468a;

    /* renamed from: b */
    private final dsv<cpz> f44469b;

    /* renamed from: c */
    private final dsv<cpk> f44470c;

    /* renamed from: d */
    private final dsv<cov> f44471d;

    /* renamed from: e */
    private final dsv<brs> f44472e;

    /* renamed from: f */
    private final dsv<cty> f44473f;

    /* renamed from: g */
    private final dsv<String> f44474g;

    private bqd(dsv<Context> dsvVar, dsv<cpz> dsvVar2, dsv<cpk> dsvVar3, dsv<cov> dsvVar4, dsv<brs> dsvVar5, dsv<cty> dsvVar6, dsv<String> dsvVar7) {
        this.f44468a = dsvVar;
        this.f44469b = dsvVar2;
        this.f44470c = dsvVar3;
        this.f44471d = dsvVar4;
        this.f44472e = dsvVar5;
        this.f44473f = dsvVar6;
        this.f44474g = dsvVar7;
    }

    /* renamed from: a */
    public static bqd m17687a(dsv<Context> dsvVar, dsv<cpz> dsvVar2, dsv<cpk> dsvVar3, dsv<cov> dsvVar4, dsv<brs> dsvVar5, dsv<cty> dsvVar6, dsv<String> dsvVar7) {
        return new bqd(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bqe(this.f44468a.mo14005a(), this.f44469b.mo14005a(), this.f44470c.mo14005a(), this.f44471d.mo14005a(), this.f44472e.mo14005a(), this.f44473f.mo14005a(), this.f44474g.mo14005a());
    }
}
