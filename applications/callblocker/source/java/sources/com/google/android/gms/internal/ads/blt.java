package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/blt.class */
public final class blt implements dht<auq<apv>> {

    /* renamed from: a */
    private final dig<bme> f11506a;

    /* renamed from: b */
    private final dig<Executor> f11507b;

    private blt(dig<bme> digVar, dig<Executor> digVar2) {
        this.f11506a = digVar;
        this.f11507b = digVar2;
    }

    /* renamed from: a */
    public static blt m11806a(dig<bme> digVar, dig<Executor> digVar2) {
        return new blt(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11506a.mo9430a(), this.f11507b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
