package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqf.class */
public final class bqf implements dsi<bqg> {

    /* renamed from: a */
    private final dsv<ctz> f44484a;

    /* renamed from: b */
    private final dsv<cty> f44485b;

    /* renamed from: c */
    private final dsv<C13075yo> f44486c;

    private bqf(dsv<ctz> dsvVar, dsv<cty> dsvVar2, dsv<C13075yo> dsvVar3) {
        this.f44484a = dsvVar;
        this.f44485b = dsvVar2;
        this.f44486c = dsvVar3;
    }

    /* renamed from: a */
    public static bqf m17677a(dsv<ctz> dsvVar, dsv<cty> dsvVar2, dsv<C13075yo> dsvVar3) {
        return new bqf(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bqg(this.f44484a.mo14005a(), this.f44485b.mo14005a(), this.f44486c.mo14005a());
    }
}
