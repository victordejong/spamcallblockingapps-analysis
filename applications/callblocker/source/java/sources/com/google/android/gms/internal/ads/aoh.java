package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoh.class */
public final class aoh implements dht<auq<aqi>> {

    /* renamed from: a */
    private final dig<bgw> f10108a;

    /* renamed from: b */
    private final dig<Executor> f10109b;

    private aoh(dig<bgw> digVar, dig<Executor> digVar2) {
        this.f10108a = digVar;
        this.f10109b = digVar2;
    }

    /* renamed from: a */
    public static aoh m12865a(dig<bgw> digVar, dig<Executor> digVar2) {
        return new aoh(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10108a.mo9430a(), this.f10109b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
