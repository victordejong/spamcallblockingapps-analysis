package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anv.class */
public final class anv implements dht<auq<auv>> {

    /* renamed from: a */
    private final dig<auz> f10072a;

    /* renamed from: b */
    private final dig<Executor> f10073b;

    private anv(dig<auz> digVar, dig<Executor> digVar2) {
        this.f10072a = digVar;
        this.f10073b = digVar2;
    }

    /* renamed from: a */
    public static anv m12876a(dig<auz> digVar, dig<Executor> digVar2) {
        return new anv(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10072a.mo9430a(), this.f10073b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
