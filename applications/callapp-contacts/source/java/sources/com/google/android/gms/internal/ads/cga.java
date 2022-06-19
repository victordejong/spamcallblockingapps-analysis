package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cga.class */
public final class cga implements dsi<cfx> {

    /* renamed from: a */
    private final dsv<String> f45700a;

    /* renamed from: b */
    private final dsv<String> f45701b;

    private cga(dsv<String> dsvVar, dsv<String> dsvVar2) {
        this.f45700a = dsvVar;
        this.f45701b = dsvVar2;
    }

    /* renamed from: a */
    public static cfx m17472a(String str, String str2) {
        return new cfx(str, str2);
    }

    /* renamed from: a */
    public static cga m17473a(dsv<String> dsvVar, dsv<String> dsvVar2) {
        return new cga(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17472a(this.f45700a.mo14005a(), this.f45701b.mo14005a());
    }
}
