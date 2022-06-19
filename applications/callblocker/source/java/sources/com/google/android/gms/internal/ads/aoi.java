package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoi.class */
public final class aoi implements dht<auq<aso>> {

    /* renamed from: a */
    private final dig<bgw> f10110a;

    /* renamed from: b */
    private final dig<Executor> f10111b;

    private aoi(dig<bgw> digVar, dig<Executor> digVar2) {
        this.f10110a = digVar;
        this.f10111b = digVar2;
    }

    /* renamed from: a */
    public static aoi m12864a(dig<bgw> digVar, dig<Executor> digVar2) {
        return new aoi(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10110a.mo9430a(), this.f10111b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
