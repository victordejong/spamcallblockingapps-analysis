package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmz.class */
public final class bmz implements dsi<bmw> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f24738a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<dbs> f24739b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<boh> f24740c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bpk> f24741d;

    private bmz(dsv<dbs> dsvVar, dsv<dbs> dsvVar2, dsv<boh> dsvVar3, dsv<bpk> dsvVar4) {
        this.f24738a = dsvVar;
        this.f24739b = dsvVar2;
        this.f24740c = dsvVar3;
        this.f24741d = dsvVar4;
    }

    public static bmz a(dsv<dbs> dsvVar, dsv<dbs> dsvVar2, dsv<boh> dsvVar3, dsv<bpk> dsvVar4) {
        return new bmz(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bmw(this.f24738a.a(), this.f24739b.a(), this.f24740c.a(), dsj.b(this.f24741d));
    }
}
