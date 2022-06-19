package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfs.class */
public final class bfs implements dht<auq<atb>> {

    /* renamed from: a */
    private final dig<bga> f11158a;

    /* renamed from: b */
    private final dig<Executor> f11159b;

    private bfs(dig<bga> digVar, dig<Executor> digVar2) {
        this.f11158a = digVar;
        this.f11159b = digVar2;
    }

    /* renamed from: a */
    public static bfs m11993a(dig<bga> digVar, dig<Executor> digVar2) {
        return new bfs(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11158a.mo9430a(), this.f11159b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
