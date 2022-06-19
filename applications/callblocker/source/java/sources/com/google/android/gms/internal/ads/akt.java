package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akt.class */
public final class akt implements dht<arb> {

    /* renamed from: a */
    private final ako f9915a;

    /* renamed from: b */
    private final dig<Set<auq<arg>>> f9916b;

    public akt(ako akoVar, dig<Set<auq<arg>>> digVar) {
        this.f9915a = akoVar;
        this.f9916b = digVar;
    }

    /* renamed from: a */
    public static arb m12986a(ako akoVar, Set<auq<arg>> set) {
        return (arb) dhz.m9438a(akoVar.mo11693a(set), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12986a(this.f9915a, this.f9916b.mo9430a());
    }
}
