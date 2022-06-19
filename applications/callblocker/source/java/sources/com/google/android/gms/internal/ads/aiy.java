package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aiy.class */
public final class aiy implements dht<aiz> {

    /* renamed from: a */
    private final dig<Context> f9774a;

    /* renamed from: b */
    private final dig<dtm> f9775b;

    private aiy(dig<Context> digVar, dig<dtm> digVar2) {
        this.f9774a = digVar;
        this.f9775b = digVar2;
    }

    /* renamed from: a */
    public static aiy m13084a(dig<Context> digVar, dig<dtm> digVar2) {
        return new aiy(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aiz(this.f9774a.mo9430a(), this.f9775b.mo9430a());
    }
}
