package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bno.class */
public final class bno implements dht<bnm> {

    /* renamed from: a */
    private final dig<Context> f11618a;

    /* renamed from: b */
    private final dig<C3647yd> f11619b;

    /* renamed from: c */
    private final dig<alh> f11620c;

    /* renamed from: d */
    private final dig<Executor> f11621d;

    public bno(dig<Context> digVar, dig<C3647yd> digVar2, dig<alh> digVar3, dig<Executor> digVar4) {
        this.f11618a = digVar;
        this.f11619b = digVar2;
        this.f11620c = digVar3;
        this.f11621d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bnm(this.f11618a.mo9430a(), this.f11619b.mo9430a(), this.f11620c.mo9430a(), this.f11621d.mo9430a());
    }
}
