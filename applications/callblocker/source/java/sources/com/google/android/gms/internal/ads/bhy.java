package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhy.class */
public final class bhy implements dht<Set<auq<aql>>> {

    /* renamed from: a */
    private final bhx f11291a;

    /* renamed from: b */
    private final dig<bih> f11292b;

    /* renamed from: c */
    private final dig<Executor> f11293c;

    private bhy(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        this.f11291a = bhxVar;
        this.f11292b = digVar;
        this.f11293c = digVar2;
    }

    /* renamed from: a */
    public static bhy m11902a(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        return new bhy(bhxVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(bhx.m11912a(this.f11292b.mo9430a(), this.f11293c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
