package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alx.class */
public final class alx implements dht<als> {

    /* renamed from: a */
    private final dig<amk> f9967a;

    /* renamed from: b */
    private final dig<AbstractC3008dp> f9968b;

    /* renamed from: c */
    private final dig<Runnable> f9969c;

    /* renamed from: d */
    private final dig<Executor> f9970d;

    public alx(dig<amk> digVar, dig<AbstractC3008dp> digVar2, dig<Runnable> digVar3, dig<Executor> digVar4) {
        this.f9967a = digVar;
        this.f9968b = digVar2;
        this.f9969c = digVar3;
        this.f9970d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new als(this.f9967a.mo9430a(), this.f9968b.mo9430a(), this.f9969c.mo9430a(), this.f9970d.mo9430a());
    }
}
