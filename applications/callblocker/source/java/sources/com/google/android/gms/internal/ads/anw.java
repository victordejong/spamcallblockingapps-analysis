package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anw.class */
public final class anw implements dht<ant> {

    /* renamed from: a */
    private final dig<AbstractC2708e> f10074a;

    /* renamed from: b */
    private final dig<C3541uf> f10075b;

    private anw(dig<AbstractC2708e> digVar, dig<C3541uf> digVar2) {
        this.f10074a = digVar;
        this.f10075b = digVar2;
    }

    /* renamed from: a */
    public static anw m12875a(dig<AbstractC2708e> digVar, dig<C3541uf> digVar2) {
        return new anw(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new ant(this.f10074a.mo9430a(), this.f10075b.mo9430a());
    }
}
