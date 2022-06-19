package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfq.class */
public final class bfq implements dht<auq<apv>> {

    /* renamed from: a */
    private final dig<bga> f11154a;

    /* renamed from: b */
    private final dig<Executor> f11155b;

    private bfq(dig<bga> digVar, dig<Executor> digVar2) {
        this.f11154a = digVar;
        this.f11155b = digVar2;
    }

    /* renamed from: a */
    public static bfq m11995a(dig<bga> digVar, dig<Executor> digVar2) {
        return new bfq(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11154a.mo9430a(), this.f11155b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
