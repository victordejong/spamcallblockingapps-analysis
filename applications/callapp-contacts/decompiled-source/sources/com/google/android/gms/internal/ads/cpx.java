package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpx.class */
public final class cpx implements dsi<cpu> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<brs> f26241a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cus> f26242b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cov> f26243c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<coz> f26244d;

    private cpx(dsv<brs> dsvVar, dsv<cus> dsvVar2, dsv<cov> dsvVar3, dsv<coz> dsvVar4) {
        this.f26241a = dsvVar;
        this.f26242b = dsvVar2;
        this.f26243c = dsvVar3;
        this.f26244d = dsvVar4;
    }

    public static cpx a(dsv<brs> dsvVar, dsv<cus> dsvVar2, dsv<cov> dsvVar3, dsv<coz> dsvVar4) {
        return new cpx(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cpu(this.f26241a.a(), this.f26242b.a(), this.f26243c.a(), this.f26244d.a());
    }
}
