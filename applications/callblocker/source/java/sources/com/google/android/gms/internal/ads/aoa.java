package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoa.class */
public final class aoa implements dht<auq<aqi>> {

    /* renamed from: a */
    private final dig<aiq> f10093a;

    /* renamed from: b */
    private final dig<Executor> f10094b;

    private aoa(dig<aiq> digVar, dig<Executor> digVar2) {
        this.f10093a = digVar;
        this.f10094b = digVar2;
    }

    /* renamed from: a */
    public static aoa m12870a(dig<aiq> digVar, dig<Executor> digVar2) {
        return new aoa(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10093a.mo9430a(), this.f10094b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
