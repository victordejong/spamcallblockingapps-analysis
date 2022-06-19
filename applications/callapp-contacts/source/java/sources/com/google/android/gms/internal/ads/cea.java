package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cea.class */
public final class cea implements dsi<cdy> {

    /* renamed from: a */
    private final dsv<dbs> f45607a;

    /* renamed from: b */
    private final dsv<bji> f45608b;

    /* renamed from: c */
    private final dsv<cpo> f45609c;

    /* renamed from: d */
    private final dsv<String> f45610d;

    private cea(dsv<dbs> dsvVar, dsv<bji> dsvVar2, dsv<cpo> dsvVar3, dsv<String> dsvVar4) {
        this.f45607a = dsvVar;
        this.f45608b = dsvVar2;
        this.f45609c = dsvVar3;
        this.f45610d = dsvVar4;
    }

    /* renamed from: a */
    public static cea m17489a(dsv<dbs> dsvVar, dsv<bji> dsvVar2, dsv<cpo> dsvVar3, dsv<String> dsvVar4) {
        return new cea(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cdy(this.f45607a.mo14005a(), this.f45608b.mo14005a(), this.f45609c.mo14005a(), this.f45610d.mo14005a());
    }
}
