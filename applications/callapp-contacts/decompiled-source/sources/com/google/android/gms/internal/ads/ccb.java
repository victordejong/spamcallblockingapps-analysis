package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccb.class */
public final class ccb implements dsi<ccc> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cpo> f25571a;

    private ccb(dsv<cpo> dsvVar) {
        this.f25571a = dsvVar;
    }

    public static ccb a(dsv<cpo> dsvVar) {
        return new ccb(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ccc(this.f25571a.a());
    }
}
