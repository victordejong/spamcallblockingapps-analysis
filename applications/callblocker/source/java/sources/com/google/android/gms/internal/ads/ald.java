package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ald.class */
public final class ald implements dht<C3505sx> {

    /* renamed from: a */
    private final ako f9939a;

    /* renamed from: b */
    private final dig<Context> f9940b;

    /* renamed from: c */
    private final dig<chh> f9941c;

    public ald(ako akoVar, dig<Context> digVar, dig<chh> digVar2) {
        this.f9939a = akoVar;
        this.f9940b = digVar;
        this.f9941c = digVar2;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (C3505sx) dhz.m9438a(new C3505sx(this.f9940b.mo9430a(), this.f9941c.mo9430a().f13042f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
