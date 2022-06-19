package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajf.class */
public final class ajf implements dht<ais> {

    /* renamed from: a */
    private final dig<dtm> f9808a;

    /* renamed from: b */
    private final dig<C3257js> f9809b;

    /* renamed from: c */
    private final dig<Executor> f9810c;

    private ajf(dig<dtm> digVar, dig<C3257js> digVar2, dig<Executor> digVar3) {
        this.f9808a = digVar;
        this.f9809b = digVar2;
        this.f9810c = digVar3;
    }

    /* renamed from: a */
    public static ajf m13075a(dig<dtm> digVar, dig<C3257js> digVar2, dig<Executor> digVar3) {
        return new ajf(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (ais) dhz.m9438a(new ais(this.f9808a.mo9430a().m8624d(), this.f9809b.mo9430a(), this.f9810c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
