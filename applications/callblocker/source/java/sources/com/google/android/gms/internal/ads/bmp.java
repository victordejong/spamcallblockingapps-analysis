package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmp.class */
public final class bmp implements dht<bmj> {

    /* renamed from: a */
    private final dig<Context> f11557a;

    /* renamed from: b */
    private final dig<aou> f11558b;

    /* renamed from: c */
    private final dig<bmg> f11559c;

    /* renamed from: d */
    private final dig<bma> f11560d;

    private bmp(dig<Context> digVar, dig<aou> digVar2, dig<bmg> digVar3, dig<bma> digVar4) {
        this.f11557a = digVar;
        this.f11558b = digVar2;
        this.f11559c = digVar3;
        this.f11560d = digVar4;
    }

    /* renamed from: a */
    public static bmp m11761a(dig<Context> digVar, dig<aou> digVar2, dig<bmg> digVar3, dig<bma> digVar4) {
        return new bmp(digVar, digVar2, digVar3, digVar4);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bmj(this.f11557a.mo9430a(), this.f11558b.mo9430a(), this.f11559c.mo9430a(), this.f11560d.mo9430a());
    }
}
