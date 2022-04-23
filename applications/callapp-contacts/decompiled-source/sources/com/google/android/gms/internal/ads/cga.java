package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cga.class */
public final class cga implements dsi<cfx> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<String> f25764a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<String> f25765b;

    private cga(dsv<String> dsvVar, dsv<String> dsvVar2) {
        this.f25764a = dsvVar;
        this.f25765b = dsvVar2;
    }

    public static cfx a(String str, String str2) {
        return new cfx(str, str2);
    }

    public static cga a(dsv<String> dsvVar, dsv<String> dsvVar2) {
        return new cga(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f25764a.a(), this.f25765b.a());
    }
}
