package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayp.class */
public final class ayp implements dsi<ayq> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cov> f24012a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cus> f24013b;

    private ayp(dsv<cov> dsvVar, dsv<cus> dsvVar2) {
        this.f24012a = dsvVar;
        this.f24013b = dsvVar2;
    }

    public static ayp a(dsv<cov> dsvVar, dsv<cus> dsvVar2) {
        return new ayp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ayq(this.f24012a.a(), this.f24013b.a());
    }
}
