package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bie.class */
public final class bie implements dht<Set<auq<clg>>> {

    /* renamed from: a */
    private final bhx f11306a;

    /* renamed from: b */
    private final dig<bih> f11307b;

    /* renamed from: c */
    private final dig<Executor> f11308c;

    private bie(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        this.f11306a = bhxVar;
        this.f11307b = digVar;
        this.f11308c = digVar2;
    }

    /* renamed from: a */
    public static bie m11894a(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        return new bie(bhxVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(bhx.m11904h(this.f11307b.mo9430a(), this.f11308c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
