package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdg.class */
public final class cdg implements dsi<cde> {

    /* renamed from: a */
    private final dsv<String> f45557a;

    /* renamed from: b */
    private final dsv<String> f45558b;

    /* renamed from: c */
    private final dsv<apf> f45559c;

    /* renamed from: d */
    private final dsv<cqm> f45560d;

    /* renamed from: e */
    private final dsv<cpo> f45561e;

    private cdg(dsv<String> dsvVar, dsv<String> dsvVar2, dsv<apf> dsvVar3, dsv<cqm> dsvVar4, dsv<cpo> dsvVar5) {
        this.f45557a = dsvVar;
        this.f45558b = dsvVar2;
        this.f45559c = dsvVar3;
        this.f45560d = dsvVar4;
        this.f45561e = dsvVar5;
    }

    /* renamed from: a */
    public static cdg m17493a(dsv<String> dsvVar, dsv<String> dsvVar2, dsv<apf> dsvVar3, dsv<cqm> dsvVar4, dsv<cpo> dsvVar5) {
        return new cdg(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cde(this.f45557a.mo14005a(), this.f45558b.mo14005a(), this.f45559c.mo14005a(), this.f45560d.mo14005a(), this.f45561e.mo14005a());
    }
}
