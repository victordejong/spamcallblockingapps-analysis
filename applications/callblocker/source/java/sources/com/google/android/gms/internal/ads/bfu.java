package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfu.class */
public final class bfu implements dht<auq<ash>> {

    /* renamed from: a */
    private final dig<bga> f11162a;

    /* renamed from: b */
    private final dig<Executor> f11163b;

    private bfu(dig<bga> digVar, dig<Executor> digVar2) {
        this.f11162a = digVar;
        this.f11163b = digVar2;
    }

    /* renamed from: a */
    public static bfu m11991a(dig<bga> digVar, dig<Executor> digVar2) {
        return new bfu(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11162a.mo9430a(), this.f11163b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
