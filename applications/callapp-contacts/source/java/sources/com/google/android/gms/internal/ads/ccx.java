package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccx.class */
public final class ccx implements dsi<ccp> {

    /* renamed from: a */
    private final dsv<dbs> f45532a;

    /* renamed from: b */
    private final dsv<bjg> f45533b;

    /* renamed from: c */
    private final dsv<bmi> f45534c;

    /* renamed from: d */
    private final dsv<ccr> f45535d;

    private ccx(dsv<dbs> dsvVar, dsv<bjg> dsvVar2, dsv<bmi> dsvVar3, dsv<ccr> dsvVar4) {
        this.f45532a = dsvVar;
        this.f45533b = dsvVar2;
        this.f45534c = dsvVar3;
        this.f45535d = dsvVar4;
    }

    /* renamed from: a */
    public static ccx m17497a(dsv<dbs> dsvVar, dsv<bjg> dsvVar2, dsv<bmi> dsvVar3, dsv<ccr> dsvVar4) {
        return new ccx(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ccp(this.f45532a.mo14005a(), this.f45533b.mo14005a(), this.f45534c.mo14005a(), this.f45535d.mo14005a());
    }
}
