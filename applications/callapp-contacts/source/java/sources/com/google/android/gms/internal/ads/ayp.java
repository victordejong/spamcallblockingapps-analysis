package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayp.class */
public final class ayp implements dsi<ayq> {

    /* renamed from: a */
    private final dsv<cov> f43326a;

    /* renamed from: b */
    private final dsv<cus> f43327b;

    private ayp(dsv<cov> dsvVar, dsv<cus> dsvVar2) {
        this.f43326a = dsvVar;
        this.f43327b = dsvVar2;
    }

    /* renamed from: a */
    public static ayp m18317a(dsv<cov> dsvVar, dsv<cus> dsvVar2) {
        return new ayp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ayq(this.f43326a.mo14005a(), this.f43327b.mo14005a());
    }
}
