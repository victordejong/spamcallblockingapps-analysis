package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhz.class */
public final class bhz implements dht<Set<auq<apv>>> {

    /* renamed from: a */
    private final bhx f11294a;

    /* renamed from: b */
    private final dig<bih> f11295b;

    /* renamed from: c */
    private final dig<Executor> f11296c;

    private bhz(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        this.f11294a = bhxVar;
        this.f11295b = digVar;
        this.f11296c = digVar2;
    }

    /* renamed from: a */
    public static bhz m11901a(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        return new bhz(bhxVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(bhx.m11908d(this.f11295b.mo9430a(), this.f11296c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
