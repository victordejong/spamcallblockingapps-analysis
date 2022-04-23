package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfd.class */
public final class cfd implements dsi<cfb> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25717a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cot> f25718b;

    private cfd(dsv<dbs> dsvVar, dsv<cot> dsvVar2) {
        this.f25717a = dsvVar;
        this.f25718b = dsvVar2;
    }

    public static cfd a(dsv<dbs> dsvVar, dsv<cot> dsvVar2) {
        return new cfd(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cfb(this.f25717a.a(), this.f25718b.a());
    }
}
