package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccx.class */
public final class ccx implements dsi<ccp> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25605a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bjg> f25606b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bmi> f25607c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<ccr> f25608d;

    private ccx(dsv<dbs> dsvVar, dsv<bjg> dsvVar2, dsv<bmi> dsvVar3, dsv<ccr> dsvVar4) {
        this.f25605a = dsvVar;
        this.f25606b = dsvVar2;
        this.f25607c = dsvVar3;
        this.f25608d = dsvVar4;
    }

    public static ccx a(dsv<dbs> dsvVar, dsv<bjg> dsvVar2, dsv<bmi> dsvVar3, dsv<ccr> dsvVar4) {
        return new ccx(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ccp(this.f25605a.a(), this.f25606b.a(), this.f25607c.a(), this.f25608d.a());
    }
}
