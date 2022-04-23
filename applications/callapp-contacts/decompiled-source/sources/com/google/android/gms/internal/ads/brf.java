package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brf.class */
public final class brf implements dsi<brc> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<brb> f24936a;

    private brf(dsv<brb> dsvVar) {
        this.f24936a = dsvVar;
    }

    public static brf a(dsv<brb> dsvVar) {
        return new brf(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new brc(this.f24936a.a());
    }
}
