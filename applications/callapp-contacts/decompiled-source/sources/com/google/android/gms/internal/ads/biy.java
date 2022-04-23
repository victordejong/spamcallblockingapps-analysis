package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/biy.class */
public final class biy implements dsi<ayi<asg>> {

    /* renamed from: a  reason: collision with root package name */
    private final biz f24532a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bix> f24533b;

    private biy(biz bizVar, dsv<bix> dsvVar) {
        this.f24532a = bizVar;
        this.f24533b = dsvVar;
    }

    public static biy a(biz bizVar, dsv<bix> dsvVar) {
        return new biy(bizVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24533b.a(), zd.e));
    }
}
