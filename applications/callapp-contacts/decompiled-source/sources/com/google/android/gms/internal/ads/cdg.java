package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdg.class */
public final class cdg implements dsi<cde> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<String> f25627a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<String> f25628b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<apf> f25629c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cqm> f25630d;
    private final dsv<cpo> e;

    private cdg(dsv<String> dsvVar, dsv<String> dsvVar2, dsv<apf> dsvVar3, dsv<cqm> dsvVar4, dsv<cpo> dsvVar5) {
        this.f25627a = dsvVar;
        this.f25628b = dsvVar2;
        this.f25629c = dsvVar3;
        this.f25630d = dsvVar4;
        this.e = dsvVar5;
    }

    public static cdg a(dsv<String> dsvVar, dsv<String> dsvVar2, dsv<apf> dsvVar3, dsv<cqm> dsvVar4, dsv<cpo> dsvVar5) {
        return new cdg(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cde(this.f25627a.a(), this.f25628b.a(), this.f25629c.a(), this.f25630d.a(), this.e.a());
    }
}
