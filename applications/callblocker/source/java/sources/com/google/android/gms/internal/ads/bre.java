package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bre.class */
public final class bre implements dht<bqx> {

    /* renamed from: a */
    private final dig<Context> f11886a;

    /* renamed from: b */
    private final dig<Executor> f11887b;

    /* renamed from: c */
    private final dig<bdu> f11888c;

    public bre(dig<Context> digVar, dig<Executor> digVar2, dig<bdu> digVar3) {
        this.f11886a = digVar;
        this.f11887b = digVar2;
        this.f11888c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bqx(this.f11886a.mo9430a(), this.f11887b.mo9430a(), this.f11888c.mo9430a());
    }
}
