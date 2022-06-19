package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anx.class */
public final class anx implements dht<auq<AbstractC2792app>> {

    /* renamed from: a */
    private final dig<aiq> f10076a;

    /* renamed from: b */
    private final dig<Executor> f10077b;

    private anx(dig<aiq> digVar, dig<Executor> digVar2) {
        this.f10076a = digVar;
        this.f10077b = digVar2;
    }

    /* renamed from: a */
    public static anx m12874a(dig<aiq> digVar, dig<Executor> digVar2) {
        return new anx(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10076a.mo9430a(), this.f10077b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
