package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arb.class */
public final class arb implements dsi<String> {

    /* renamed from: a  reason: collision with root package name */
    private final aqz f23810a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<apf> f23811b;

    private arb(aqz aqzVar, dsv<apf> dsvVar) {
        this.f23810a = aqzVar;
        this.f23811b = dsvVar;
    }

    public static arb a(aqz aqzVar, dsv<apf> dsvVar) {
        return new arb(aqzVar, dsvVar);
    }

    public static String a(apf apfVar) {
        return (String) dso.b(apfVar.f23699a.e);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f23811b.a());
    }
}
