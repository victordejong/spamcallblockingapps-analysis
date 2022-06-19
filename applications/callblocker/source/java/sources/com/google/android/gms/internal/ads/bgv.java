package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgv.class */
public final class bgv implements dht<bgw> {

    /* renamed from: a */
    private final dig<Context> f11208a;

    /* renamed from: b */
    private final dig<cho> f11209b;

    /* renamed from: c */
    private final dig<bhi> f11210c;

    /* renamed from: d */
    private final dig<chd> f11211d;

    /* renamed from: e */
    private final dig<cgr> f11212e;

    private bgv(dig<Context> digVar, dig<cho> digVar2, dig<bhi> digVar3, dig<chd> digVar4, dig<cgr> digVar5) {
        this.f11208a = digVar;
        this.f11209b = digVar2;
        this.f11210c = digVar3;
        this.f11211d = digVar4;
        this.f11212e = digVar5;
    }

    /* renamed from: a */
    public static bgv m11962a(dig<Context> digVar, dig<cho> digVar2, dig<bhi> digVar3, dig<chd> digVar4, dig<cgr> digVar5) {
        return new bgv(digVar, digVar2, digVar3, digVar4, digVar5);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bgw(this.f11208a.mo9430a(), this.f11209b.mo9430a(), this.f11210c.mo9430a(), this.f11211d.mo9430a(), this.f11212e.mo9430a());
    }
}
