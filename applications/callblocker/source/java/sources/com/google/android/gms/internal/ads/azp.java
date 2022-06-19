package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azp.class */
public final class azp implements dht<C3505sx> {

    /* renamed from: a */
    private final azl f10708a;

    /* renamed from: b */
    private final dig<Context> f10709b;

    /* renamed from: c */
    private final dig<chh> f10710c;

    private azp(azl azlVar, dig<Context> digVar, dig<chh> digVar2) {
        this.f10708a = azlVar;
        this.f10709b = digVar;
        this.f10710c = digVar2;
    }

    /* renamed from: a */
    public static azp m12197a(azl azlVar, dig<Context> digVar, dig<chh> digVar2) {
        return new azp(azlVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (C3505sx) dhz.m9438a(new C3505sx(this.f10709b.mo9430a(), this.f10710c.mo9430a().f13042f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
