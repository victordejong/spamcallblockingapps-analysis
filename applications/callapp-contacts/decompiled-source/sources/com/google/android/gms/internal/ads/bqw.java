package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqw.class */
public final class bqw implements dsi<bqv> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bqt> f24913a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<dbs> f24914b;

    private bqw(dsv<bqt> dsvVar, dsv<dbs> dsvVar2) {
        this.f24913a = dsvVar;
        this.f24914b = dsvVar2;
    }

    public static bqw a(dsv<bqt> dsvVar, dsv<dbs> dsvVar2) {
        return new bqw(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bqv(this.f24913a.a(), this.f24914b.a());
    }
}
