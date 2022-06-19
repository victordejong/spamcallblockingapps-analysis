package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ani.class */
public final class ani implements dsi<anj> {

    /* renamed from: a */
    private final dsv<cov> f42473a;

    /* renamed from: b */
    private final dsv<asc> f42474b;

    /* renamed from: c */
    private final dsv<atf> f42475c;

    private ani(dsv<cov> dsvVar, dsv<asc> dsvVar2, dsv<atf> dsvVar3) {
        this.f42473a = dsvVar;
        this.f42474b = dsvVar2;
        this.f42475c = dsvVar3;
    }

    /* renamed from: a */
    public static ani m18537a(dsv<cov> dsvVar, dsv<asc> dsvVar2, dsv<atf> dsvVar3) {
        return new ani(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new anj(this.f42473a.mo14005a(), this.f42474b.mo14005a(), this.f42475c.mo14005a());
    }
}
