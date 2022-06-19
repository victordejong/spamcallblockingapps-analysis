package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aov.class */
public final class aov implements dht<aos> {

    /* renamed from: a */
    private final dig<Context> f10149a;

    /* renamed from: b */
    private final dig<cgr> f10150b;

    /* renamed from: c */
    private final dig<AbstractC3379of> f10151c;

    private aov(dig<Context> digVar, dig<cgr> digVar2, dig<AbstractC3379of> digVar3) {
        this.f10149a = digVar;
        this.f10150b = digVar2;
        this.f10151c = digVar3;
    }

    /* renamed from: a */
    public static aov m12855a(dig<Context> digVar, dig<cgr> digVar2, dig<AbstractC3379of> digVar3) {
        return new aov(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aos(this.f10149a.mo9430a(), this.f10150b.mo9430a(), this.f10151c.mo9430a());
    }
}
