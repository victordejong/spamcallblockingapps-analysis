package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apn.class */
public final class apn implements dsi<ans> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cpk> f23713a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cov> f23714b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<asj> f23715c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<ata> f23716d;
    private final dsv<cmi> e;
    private final dsv<arf> f;
    private final dsv<aue> g;

    private apn(dsv<cpk> dsvVar, dsv<cov> dsvVar2, dsv<asj> dsvVar3, dsv<ata> dsvVar4, dsv<cmi> dsvVar5, dsv<arf> dsvVar6, dsv<aue> dsvVar7) {
        this.f23713a = dsvVar;
        this.f23714b = dsvVar2;
        this.f23715c = dsvVar3;
        this.f23716d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    public static apn a(dsv<cpk> dsvVar, dsv<cov> dsvVar2, dsv<asj> dsvVar3, dsv<ata> dsvVar4, dsv<cmi> dsvVar5, dsv<arf> dsvVar6, dsv<aue> dsvVar7) {
        return new apn(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ans(this.f23713a.a(), this.f23714b.a(), this.f23715c.a(), this.f23716d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
