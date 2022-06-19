package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqw.class */
public final class bqw implements dsi<bqv> {

    /* renamed from: a */
    private final dsv<bqt> f44516a;

    /* renamed from: b */
    private final dsv<dbs> f44517b;

    private bqw(dsv<bqt> dsvVar, dsv<dbs> dsvVar2) {
        this.f44516a = dsvVar;
        this.f44517b = dsvVar2;
    }

    /* renamed from: a */
    public static bqw m17662a(dsv<bqt> dsvVar, dsv<dbs> dsvVar2) {
        return new bqw(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bqv(this.f44516a.mo14005a(), this.f44517b.mo14005a());
    }
}
