package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfv.class */
public final class bfv implements dht<auq<arg>> {

    /* renamed from: a */
    private final dig<bga> f11164a;

    /* renamed from: b */
    private final dig<Executor> f11165b;

    private bfv(dig<bga> digVar, dig<Executor> digVar2) {
        this.f11164a = digVar;
        this.f11165b = digVar2;
    }

    /* renamed from: a */
    public static bfv m11990a(dig<bga> digVar, dig<Executor> digVar2) {
        return new bfv(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11164a.mo9430a(), this.f11165b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
