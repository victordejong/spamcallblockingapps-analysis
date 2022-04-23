package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ani.class */
public final class ani implements dsi<anj> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cov> f23624a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<asc> f23625b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<atf> f23626c;

    private ani(dsv<cov> dsvVar, dsv<asc> dsvVar2, dsv<atf> dsvVar3) {
        this.f23624a = dsvVar;
        this.f23625b = dsvVar2;
        this.f23626c = dsvVar3;
    }

    public static ani a(dsv<cov> dsvVar, dsv<asc> dsvVar2, dsv<atf> dsvVar3) {
        return new ani(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new anj(this.f23624a.a(), this.f23625b.a(), this.f23626c.a());
    }
}
