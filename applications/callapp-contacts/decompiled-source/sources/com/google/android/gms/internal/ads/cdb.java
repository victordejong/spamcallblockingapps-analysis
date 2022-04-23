package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdb.class */
public final class cdb implements dsi<ccz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25616a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cpo> f25617b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzbar> f25618c;

    private cdb(dsv<dbs> dsvVar, dsv<cpo> dsvVar2, dsv<zzbar> dsvVar3) {
        this.f25616a = dsvVar;
        this.f25617b = dsvVar2;
        this.f25618c = dsvVar3;
    }

    public static cdb a(dsv<dbs> dsvVar, dsv<cpo> dsvVar2, dsv<zzbar> dsvVar3) {
        return new cdb(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ccz(this.f25616a.a(), this.f25617b.a(), this.f25618c.a());
    }
}
