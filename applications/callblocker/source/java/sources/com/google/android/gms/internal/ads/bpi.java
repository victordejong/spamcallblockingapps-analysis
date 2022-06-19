package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpi.class */
public final class bpi implements dht<bpf> {

    /* renamed from: a */
    private final dig<Context> f11740a;

    /* renamed from: b */
    private final dig<axo> f11741b;

    /* renamed from: c */
    private final dig<Executor> f11742c;

    public bpi(dig<Context> digVar, dig<axo> digVar2, dig<Executor> digVar3) {
        this.f11740a = digVar;
        this.f11741b = digVar2;
        this.f11742c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bpf(this.f11740a.mo9430a(), this.f11741b.mo9430a(), this.f11742c.mo9430a());
    }
}
