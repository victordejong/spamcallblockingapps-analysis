package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqe.class */
public final class bqe implements dht<bqc> {

    /* renamed from: a */
    private final dig<Context> f11812a;

    /* renamed from: b */
    private final dig<Executor> f11813b;

    /* renamed from: c */
    private final dig<bdu> f11814c;

    public bqe(dig<Context> digVar, dig<Executor> digVar2, dig<bdu> digVar3) {
        this.f11812a = digVar;
        this.f11813b = digVar2;
        this.f11814c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bqc(this.f11812a.mo9430a(), this.f11813b.mo9430a(), this.f11814c.mo9430a());
    }
}
