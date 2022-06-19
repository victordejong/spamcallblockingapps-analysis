package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bib.class */
public final class bib implements dht<Set<auq<arg>>> {

    /* renamed from: a */
    private final bhx f11297a;

    /* renamed from: b */
    private final dig<bih> f11298b;

    /* renamed from: c */
    private final dig<Executor> f11299c;

    private bib(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        this.f11297a = bhxVar;
        this.f11298b = digVar;
        this.f11299c = digVar2;
    }

    /* renamed from: a */
    public static bib m11897a(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        return new bib(bhxVar, digVar, digVar2);
    }

    /* renamed from: a */
    public static Set<auq<arg>> m11898a(bhx bhxVar, bih bihVar, Executor executor) {
        return (Set) dhz.m9438a(bhx.m11909c(bihVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11898a(this.f11297a, this.f11298b.mo9430a(), this.f11299c.mo9430a());
    }
}
