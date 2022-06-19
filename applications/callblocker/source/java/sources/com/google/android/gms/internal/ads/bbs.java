package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bbs.class */
public final class bbs implements dht<bbo> {

    /* renamed from: a */
    private final dig<Executor> f10896a;

    /* renamed from: b */
    private final dig<bbe> f10897b;

    public bbs(dig<Executor> digVar, dig<bbe> digVar2) {
        this.f10896a = digVar;
        this.f10897b = digVar2;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bbo(this.f10896a.mo9430a(), this.f10897b.mo9430a());
    }
}
