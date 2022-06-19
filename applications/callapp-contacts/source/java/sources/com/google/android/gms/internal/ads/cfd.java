package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfd.class */
public final class cfd implements dsi<cfb> {

    /* renamed from: a */
    private final dsv<dbs> f45652a;

    /* renamed from: b */
    private final dsv<cot> f45653b;

    private cfd(dsv<dbs> dsvVar, dsv<cot> dsvVar2) {
        this.f45652a = dsvVar;
        this.f45653b = dsvVar2;
    }

    /* renamed from: a */
    public static cfd m17479a(dsv<dbs> dsvVar, dsv<cot> dsvVar2) {
        return new cfd(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cfb(this.f45652a.mo14005a(), this.f45653b.mo14005a());
    }
}
