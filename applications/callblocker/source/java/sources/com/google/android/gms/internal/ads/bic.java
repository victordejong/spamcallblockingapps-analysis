package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bic.class */
public final class bic implements dht<Set<auq<dxs>>> {

    /* renamed from: a */
    private final bhx f11300a;

    /* renamed from: b */
    private final dig<bih> f11301b;

    /* renamed from: c */
    private final dig<Executor> f11302c;

    private bic(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        this.f11300a = bhxVar;
        this.f11301b = digVar;
        this.f11302c = digVar2;
    }

    /* renamed from: a */
    public static bic m11896a(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        return new bic(bhxVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(bhx.m11905g(this.f11301b.mo9430a(), this.f11302c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
