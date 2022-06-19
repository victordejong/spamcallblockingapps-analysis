package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdb.class */
public final class cdb implements dsi<ccz> {

    /* renamed from: a */
    private final dsv<dbs> f45543a;

    /* renamed from: b */
    private final dsv<cpo> f45544b;

    /* renamed from: c */
    private final dsv<zzbar> f45545c;

    private cdb(dsv<dbs> dsvVar, dsv<cpo> dsvVar2, dsv<zzbar> dsvVar3) {
        this.f45543a = dsvVar;
        this.f45544b = dsvVar2;
        this.f45545c = dsvVar3;
    }

    /* renamed from: a */
    public static cdb m17496a(dsv<dbs> dsvVar, dsv<cpo> dsvVar2, dsv<zzbar> dsvVar3) {
        return new cdb(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ccz(this.f45543a.mo14005a(), this.f45544b.mo14005a(), this.f45545c.mo14005a());
    }
}
