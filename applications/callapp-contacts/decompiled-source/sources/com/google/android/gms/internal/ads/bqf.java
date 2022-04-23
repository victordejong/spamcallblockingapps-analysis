package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqf.class */
public final class bqf implements dsi<bqg> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ctz> f24882a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cty> f24883b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<yo> f24884c;

    private bqf(dsv<ctz> dsvVar, dsv<cty> dsvVar2, dsv<yo> dsvVar3) {
        this.f24882a = dsvVar;
        this.f24883b = dsvVar2;
        this.f24884c = dsvVar3;
    }

    public static bqf a(dsv<ctz> dsvVar, dsv<cty> dsvVar2, dsv<yo> dsvVar3) {
        return new bqf(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bqg(this.f24882a.a(), this.f24883b.a(), this.f24884c.a());
    }
}
