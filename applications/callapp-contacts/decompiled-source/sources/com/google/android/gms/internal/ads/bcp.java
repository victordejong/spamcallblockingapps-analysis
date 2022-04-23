package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcp.class */
public final class bcp implements dsi<bcm> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bcd> f24181a;

    private bcp(dsv<bcd> dsvVar) {
        this.f24181a = dsvVar;
    }

    public static bcp a(dsv<bcd> dsvVar) {
        return new bcp(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bcm(this.f24181a.a());
    }
}
