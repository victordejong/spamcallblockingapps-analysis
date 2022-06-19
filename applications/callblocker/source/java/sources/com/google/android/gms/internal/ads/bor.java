package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bor.class */
public final class bor implements dht<bop> {

    /* renamed from: a */
    private final dig<Context> f11701a;

    /* renamed from: b */
    private final dig<C3647yd> f11702b;

    /* renamed from: c */
    private final dig<awq> f11703c;

    /* renamed from: d */
    private final dig<Executor> f11704d;

    public bor(dig<Context> digVar, dig<C3647yd> digVar2, dig<awq> digVar3, dig<Executor> digVar4) {
        this.f11701a = digVar;
        this.f11702b = digVar2;
        this.f11703c = digVar3;
        this.f11704d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bop(this.f11701a.mo9430a(), this.f11702b.mo9430a(), this.f11703c.mo9430a(), this.f11704d.mo9430a());
    }
}
