package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqt.class */
public final class cqt implements dsi<yo> {

    /* renamed from: a  reason: collision with root package name */
    private final cqo f26275a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<yd> f26276b;

    private cqt(cqo cqoVar, dsv<yd> dsvVar) {
        this.f26275a = cqoVar;
        this.f26276b = dsvVar;
    }

    public static cqt a(cqo cqoVar, dsv<yd> dsvVar) {
        return new cqt(cqoVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (yo) dso.b(this.f26276b.a().f28527b);
    }
}
