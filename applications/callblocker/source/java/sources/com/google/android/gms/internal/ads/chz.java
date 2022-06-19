package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/chz.class */
public final class chz implements dht<cia> {

    /* renamed from: a */
    private final dig<Context> f13080a;

    /* renamed from: b */
    private final dig<C3553ur> f13081b;

    private chz(dig<Context> digVar, dig<C3553ur> digVar2) {
        this.f13080a = digVar;
        this.f13081b = digVar2;
    }

    /* renamed from: a */
    public static chz m11263a(dig<Context> digVar, dig<C3553ur> digVar2) {
        return new chz(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new cia(this.f13080a.mo9430a(), this.f13081b.mo9430a());
    }
}
