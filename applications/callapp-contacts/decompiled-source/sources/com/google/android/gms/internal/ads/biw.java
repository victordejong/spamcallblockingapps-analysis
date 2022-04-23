package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/biw.class */
public final class biw implements dsi<bix> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<adt> f24530a;

    private biw(dsv<adt> dsvVar) {
        this.f24530a = dsvVar;
    }

    public static biw a(dsv<adt> dsvVar) {
        return new biw(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bix(this.f24530a.a());
    }
}
