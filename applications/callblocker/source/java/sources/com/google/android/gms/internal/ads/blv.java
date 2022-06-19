package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/blv.class */
public final class blv implements dht<auq<clg>> {

    /* renamed from: a */
    private final dig<bmh> f11512a;

    /* renamed from: b */
    private final dig<Executor> f11513b;

    private blv(dig<bmh> digVar, dig<Executor> digVar2) {
        this.f11512a = digVar;
        this.f11513b = digVar2;
    }

    /* renamed from: a */
    public static blv m11805a(dig<bmh> digVar, dig<Executor> digVar2) {
        return new blv(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11512a.mo9430a(), this.f11513b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
