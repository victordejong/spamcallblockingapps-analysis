package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cny.class */
public final class cny implements dsi<cnc> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cqs> f26135a;

    private cny(dsv<cqs> dsvVar) {
        this.f26135a = dsvVar;
    }

    public static cny a(dsv<cqs> dsvVar) {
        return new cny(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cnc(this.f26135a.a());
    }
}
