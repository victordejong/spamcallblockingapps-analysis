package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bko.class */
public final class bko implements dht<bkm> {

    /* renamed from: a */
    private final dig<Context> f11433a;

    /* renamed from: b */
    private final dig<C3509ta> f11434b;

    private bko(dig<Context> digVar, dig<C3509ta> digVar2) {
        this.f11433a = digVar;
        this.f11434b = digVar2;
    }

    /* renamed from: a */
    public static bko m11828a(dig<Context> digVar, dig<C3509ta> digVar2) {
        return new bko(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bkm(this.f11433a.mo9430a(), this.f11434b.mo9430a());
    }
}
