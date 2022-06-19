package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bcu.class */
public final class bcu implements dht<bcs> {

    /* renamed from: a */
    private final dig<Context> f10969a;

    /* renamed from: b */
    private final dig<ayx> f10970b;

    /* renamed from: c */
    private final dig<azv> f10971c;

    /* renamed from: d */
    private final dig<aym> f10972d;

    private bcu(dig<Context> digVar, dig<ayx> digVar2, dig<azv> digVar3, dig<aym> digVar4) {
        this.f10969a = digVar;
        this.f10970b = digVar2;
        this.f10971c = digVar3;
        this.f10972d = digVar4;
    }

    /* renamed from: a */
    public static bcu m12094a(dig<Context> digVar, dig<ayx> digVar2, dig<azv> digVar3, dig<aym> digVar4) {
        return new bcu(digVar, digVar2, digVar3, digVar4);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bcs(this.f10969a.mo9430a(), this.f10970b.mo9430a(), this.f10971c.mo9430a(), this.f10972d.mo9430a());
    }
}
