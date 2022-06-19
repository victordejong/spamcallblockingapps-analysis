package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/auw.class */
public final class auw implements dht<auu> {

    /* renamed from: a */
    private final dig<Set<auq<auv>>> f10401a;

    private auw(dig<Set<auq<auv>>> digVar) {
        this.f10401a = digVar;
    }

    /* renamed from: a */
    public static auw m12415a(dig<Set<auq<auv>>> digVar) {
        return new auw(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new auu(this.f10401a.mo9430a());
    }
}
