package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ala.class */
public final class ala implements dht<Set<auq<dtr>>> {

    /* renamed from: a */
    private final ako f9932a;

    /* renamed from: b */
    private final dig<amc> f9933b;

    public ala(ako akoVar, dig<amc> digVar) {
        this.f9932a = akoVar;
        this.f9933b = digVar;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(Collections.singleton(new auq(this.f9933b.mo9430a(), C3650yg.f17647f)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
