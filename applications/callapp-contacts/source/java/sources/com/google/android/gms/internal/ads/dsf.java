package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsf.class */
public final class dsf<T> implements dsi<T> {

    /* renamed from: a */
    private dsv<T> f47509a;

    /* renamed from: a */
    public static <T> void m15778a(dsv<T> dsvVar, dsv<T> dsvVar2) {
        dso.m15767a(dsvVar2);
        dsf dsfVar = (dsf) dsvVar;
        if (dsfVar.f47509a == null) {
            dsfVar.f47509a = dsvVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final T mo14005a() {
        dsv<T> dsvVar = this.f47509a;
        if (dsvVar != null) {
            return dsvVar.mo14005a();
        }
        throw new IllegalStateException();
    }
}
