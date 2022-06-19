package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bci.class */
public final class bci implements dht<bca> {

    /* renamed from: a */
    private final dig<Executor> f10938a;

    /* renamed from: b */
    private final dig<ajk> f10939b;

    /* renamed from: c */
    private final dig<aup> f10940c;

    public bci(dig<Executor> digVar, dig<ajk> digVar2, dig<aup> digVar3) {
        this.f10938a = digVar;
        this.f10939b = digVar2;
        this.f10940c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bca(this.f10938a.mo9430a(), this.f10939b.mo9430a(), this.f10940c.mo9430a());
    }
}
