package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpx.class */
public final class cpx implements dsi<cpu> {

    /* renamed from: a */
    private final dsv<brs> f46363a;

    /* renamed from: b */
    private final dsv<cus> f46364b;

    /* renamed from: c */
    private final dsv<cov> f46365c;

    /* renamed from: d */
    private final dsv<coz> f46366d;

    private cpx(dsv<brs> dsvVar, dsv<cus> dsvVar2, dsv<cov> dsvVar3, dsv<coz> dsvVar4) {
        this.f46363a = dsvVar;
        this.f46364b = dsvVar2;
        this.f46365c = dsvVar3;
        this.f46366d = dsvVar4;
    }

    /* renamed from: a */
    public static cpx m17345a(dsv<brs> dsvVar, dsv<cus> dsvVar2, dsv<cov> dsvVar3, dsv<coz> dsvVar4) {
        return new cpx(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cpu(this.f46363a.mo14005a(), this.f46364b.mo14005a(), this.f46365c.mo14005a(), this.f46366d.mo14005a());
    }
}
