package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/blw.class */
public final class blw implements dht<auq<arg>> {

    /* renamed from: a */
    private final dig<bme> f11514a;

    /* renamed from: b */
    private final dig<Executor> f11515b;

    private blw(dig<bme> digVar, dig<Executor> digVar2) {
        this.f11514a = digVar;
        this.f11515b = digVar2;
    }

    /* renamed from: a */
    public static blw m11804a(dig<bme> digVar, dig<Executor> digVar2) {
        return new blw(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11514a.mo9430a(), this.f11515b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
