package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akz.class */
public final class akz implements dht<Set<auq<arg>>> {

    /* renamed from: a */
    private final ako f9928a;

    /* renamed from: b */
    private final dig<amc> f9929b;

    public akz(ako akoVar, dig<amc> digVar) {
        this.f9928a = akoVar;
        this.f9929b = digVar;
    }

    /* renamed from: a */
    public static Set<auq<arg>> m12981a(ako akoVar, amc amcVar) {
        return (Set) dhz.m9438a(Collections.singleton(new auq(amcVar, C3650yg.f17647f)), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12981a(this.f9928a, this.f9929b.mo9430a());
    }
}
