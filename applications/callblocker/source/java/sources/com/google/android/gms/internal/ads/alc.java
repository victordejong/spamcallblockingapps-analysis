package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alc.class */
public final class alc implements dht<auq<dtr>> {

    /* renamed from: a */
    private final ako f9936a;

    /* renamed from: b */
    private final dig<amg> f9937b;

    /* renamed from: c */
    private final dig<Executor> f9938c;

    public alc(ako akoVar, dig<amg> digVar, dig<Executor> digVar2) {
        this.f9936a = akoVar;
        this.f9937b = digVar;
        this.f9938c = digVar2;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f9937b.mo9430a(), this.f9938c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
