package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anu.class */
public final class anu implements dht<C3541uf> {

    /* renamed from: a */
    private final dig<AbstractC2708e> f10069a;

    /* renamed from: b */
    private final dig<C3553ur> f10070b;

    /* renamed from: c */
    private final dig<chh> f10071c;

    private anu(dig<AbstractC2708e> digVar, dig<C3553ur> digVar2, dig<chh> digVar3) {
        this.f10069a = digVar;
        this.f10070b = digVar2;
        this.f10071c = digVar3;
    }

    /* renamed from: a */
    public static anu m12877a(dig<AbstractC2708e> digVar, dig<C3553ur> digVar2, dig<chh> digVar3) {
        return new anu(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (C3541uf) dhz.m9438a(this.f10070b.mo9430a().m7060a(this.f10069a.mo9430a(), this.f10071c.mo9430a().f13042f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
