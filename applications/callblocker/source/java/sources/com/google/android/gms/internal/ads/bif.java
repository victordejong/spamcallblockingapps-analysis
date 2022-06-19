package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bif.class */
public final class bif implements dht<Set<auq<aqi>>> {

    /* renamed from: a */
    private final bhx f11309a;

    /* renamed from: b */
    private final dig<bih> f11310b;

    /* renamed from: c */
    private final dig<Executor> f11311c;

    private bif(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        this.f11309a = bhxVar;
        this.f11310b = digVar;
        this.f11311c = digVar2;
    }

    /* renamed from: a */
    public static bif m11893a(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        return new bif(bhxVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(bhx.m11906f(this.f11310b.mo9430a(), this.f11311c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
