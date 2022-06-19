package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgz.class */
public final class bgz implements dht<auq<apv>> {

    /* renamed from: a */
    private final dig<bgy> f11224a;

    /* renamed from: b */
    private final dig<Executor> f11225b;

    private bgz(dig<bgy> digVar, dig<Executor> digVar2) {
        this.f11224a = digVar;
        this.f11225b = digVar2;
    }

    /* renamed from: a */
    public static bgz m11952a(dig<bgy> digVar, dig<Executor> digVar2) {
        return new bgz(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11224a.mo9430a(), this.f11225b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
