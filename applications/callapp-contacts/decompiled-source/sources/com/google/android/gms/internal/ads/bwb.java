package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwb.class */
public final class bwb implements dsi<bvz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cpz> f25252a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bja> f25253b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bli> f25254c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cty> f25255d;

    private bwb(dsv<cpz> dsvVar, dsv<bja> dsvVar2, dsv<bli> dsvVar3, dsv<cty> dsvVar4) {
        this.f25252a = dsvVar;
        this.f25253b = dsvVar2;
        this.f25254c = dsvVar3;
        this.f25255d = dsvVar4;
    }

    public static bwb a(dsv<cpz> dsvVar, dsv<bja> dsvVar2, dsv<bli> dsvVar3, dsv<cty> dsvVar4) {
        return new bwb(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bvz(this.f25252a.a(), this.f25253b.a(), this.f25254c.a(), this.f25255d.a());
    }
}
