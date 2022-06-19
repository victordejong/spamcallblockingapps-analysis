package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ane.class */
public final class ane implements dht<auq<aqi>> {

    /* renamed from: a */
    private final dig<arv> f10038a;

    /* renamed from: b */
    private final dig<Executor> f10039b;

    private ane(dig<arv> digVar, dig<Executor> digVar2) {
        this.f10038a = digVar;
        this.f10039b = digVar2;
    }

    /* renamed from: a */
    public static ane m12899a(dig<arv> digVar, dig<Executor> digVar2) {
        return new ane(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10038a.mo9430a(), this.f10039b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
