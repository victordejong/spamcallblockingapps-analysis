package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/blx.class */
public final class blx implements dht<bly> {

    /* renamed from: a */
    private final dig<Context> f11516a;

    private blx(dig<Context> digVar) {
        this.f11516a = digVar;
    }

    /* renamed from: a */
    public static blx m11803a(dig<Context> digVar) {
        return new blx(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bly(this.f11516a.mo9430a());
    }
}
