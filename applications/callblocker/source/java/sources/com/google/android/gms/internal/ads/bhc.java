package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhc.class */
public final class bhc implements dht<auq<arg>> {

    /* renamed from: a */
    private final dig<bgy> f11235a;

    /* renamed from: b */
    private final dig<Executor> f11236b;

    private bhc(dig<bgy> digVar, dig<Executor> digVar2) {
        this.f11235a = digVar;
        this.f11236b = digVar2;
    }

    /* renamed from: a */
    public static bhc m11949a(dig<bgy> digVar, dig<Executor> digVar2) {
        return new bhc(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11235a.mo9430a(), this.f11236b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
