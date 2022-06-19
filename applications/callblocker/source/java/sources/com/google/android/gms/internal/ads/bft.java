package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bft.class */
public final class bft implements dht<auq<aqi>> {

    /* renamed from: a */
    private final dig<bga> f11160a;

    /* renamed from: b */
    private final dig<Executor> f11161b;

    private bft(dig<bga> digVar, dig<Executor> digVar2) {
        this.f11160a = digVar;
        this.f11161b = digVar2;
    }

    /* renamed from: a */
    public static bft m11992a(dig<bga> digVar, dig<Executor> digVar2) {
        return new bft(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11160a.mo9430a(), this.f11161b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
