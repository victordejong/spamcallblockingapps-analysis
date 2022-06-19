package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkh.class */
public final class bkh implements dsi<bjz> {

    /* renamed from: a */
    private final dsv<ehk> f44137a;

    /* renamed from: b */
    private final dsv<cmp> f44138b;

    private bkh(dsv<ehk> dsvVar, dsv<cmp> dsvVar2) {
        this.f44137a = dsvVar;
        this.f44138b = dsvVar2;
    }

    /* renamed from: a */
    public static bkh m17789a(dsv<ehk> dsvVar, dsv<cmp> dsvVar2) {
        return new bkh(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bjz(this.f44137a.mo14005a(), this.f44138b.mo14005a());
    }
}
