package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgb.class */
public final class bgb implements dht<Set<auq<clg>>> {

    /* renamed from: a */
    private final dig<Executor> f11184a;

    /* renamed from: b */
    private final dig<bgs> f11185b;

    private bgb(dig<Executor> digVar, dig<bgs> digVar2) {
        this.f11184a = digVar;
        this.f11185b = digVar2;
    }

    /* renamed from: a */
    public static bgb m11973a(dig<Executor> digVar, dig<bgs> digVar2) {
        return new bgb(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        Executor mo9430a = this.f11184a.mo9430a();
        return (Set) dhz.m9438a(((Boolean) dyx.m8158e().m7876a(edi.f16481ch)).booleanValue() ? Collections.singleton(new auq(this.f11185b.mo9430a(), mo9430a)) : Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
