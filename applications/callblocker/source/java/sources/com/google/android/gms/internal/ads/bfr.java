package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfr.class */
public final class bfr implements dht<auq<dxs>> {

    /* renamed from: a */
    private final dig<bga> f11156a;

    /* renamed from: b */
    private final dig<Executor> f11157b;

    private bfr(dig<bga> digVar, dig<Executor> digVar2) {
        this.f11156a = digVar;
        this.f11157b = digVar2;
    }

    /* renamed from: a */
    public static bfr m11994a(dig<bga> digVar, dig<Executor> digVar2) {
        return new bfr(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11156a.mo9430a(), this.f11157b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
