package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p118a.AbstractC2244a;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bid.class */
public final class bid implements dht<Set<auq<AbstractC2244a>>> {

    /* renamed from: a */
    private final bhx f11303a;

    /* renamed from: b */
    private final dig<bih> f11304b;

    /* renamed from: c */
    private final dig<Executor> f11305c;

    private bid(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        this.f11303a = bhxVar;
        this.f11304b = digVar;
        this.f11305c = digVar2;
    }

    /* renamed from: a */
    public static bid m11895a(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        return new bid(bhxVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(bhx.m11910b(this.f11304b.mo9430a(), this.f11305c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
