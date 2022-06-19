package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhw.class */
public final class bhw implements dht<Set<auq<AbstractC2792app>>> {

    /* renamed from: a */
    private final bhx f11288a;

    /* renamed from: b */
    private final dig<bih> f11289b;

    /* renamed from: c */
    private final dig<Executor> f11290c;

    private bhw(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        this.f11288a = bhxVar;
        this.f11289b = digVar;
        this.f11290c = digVar2;
    }

    /* renamed from: a */
    public static bhw m11913a(bhx bhxVar, dig<bih> digVar, dig<Executor> digVar2) {
        return new bhw(bhxVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Set) dhz.m9438a(bhx.m11907e(this.f11289b.mo9430a(), this.f11290c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
