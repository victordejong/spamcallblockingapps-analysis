package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bha.class */
public final class bha implements dht<auq<ash>> {

    /* renamed from: a */
    private final dig<bgy> f11231a;

    /* renamed from: b */
    private final dig<Executor> f11232b;

    private bha(dig<bgy> digVar, dig<Executor> digVar2) {
        this.f11231a = digVar;
        this.f11232b = digVar2;
    }

    /* renamed from: a */
    public static bha m11951a(dig<bgy> digVar, dig<Executor> digVar2) {
        return new bha(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11231a.mo9430a(), this.f11232b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
