package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhr.class */
public final class dhr<T> implements dht<T> {

    /* renamed from: a */
    private dig<T> f14381a;

    /* renamed from: a */
    public static <T> void m9452a(dig<T> digVar, dig<T> digVar2) {
        dhz.m9440a(digVar2);
        dhr dhrVar = (dhr) digVar;
        if (dhrVar.f14381a != null) {
            throw new IllegalStateException();
        }
        dhrVar.f14381a = digVar2;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final T mo9430a() {
        if (this.f14381a == null) {
            throw new IllegalStateException();
        }
        return this.f14381a.mo9430a();
    }
}
