package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsf.class */
public final class dsf<T> implements dsi<T> {

    /* renamed from: a  reason: collision with root package name */
    private dsv<T> f27153a;

    public static <T> void a(dsv<T> dsvVar, dsv<T> dsvVar2) {
        dso.a(dsvVar2);
        dsf dsfVar = (dsf) dsvVar;
        if (dsfVar.f27153a == null) {
            dsfVar.f27153a = dsvVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final T a() {
        dsv<T> dsvVar = this.f27153a;
        if (dsvVar != null) {
            return dsvVar.a();
        }
        throw new IllegalStateException();
    }
}
