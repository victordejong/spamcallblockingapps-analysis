package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbo.class */
public final class cbo implements dht<cbk> {

    /* renamed from: a */
    private final dig<AbstractC3537ub> f12679a;

    /* renamed from: b */
    private final dig<Integer> f12680b;

    /* renamed from: c */
    private final dig<Context> f12681c;

    /* renamed from: d */
    private final dig<C3542ug> f12682d;

    /* renamed from: e */
    private final dig<ScheduledExecutorService> f12683e;

    /* renamed from: f */
    private final dig<Executor> f12684f;

    public cbo(dig<AbstractC3537ub> digVar, dig<Integer> digVar2, dig<Context> digVar3, dig<C3542ug> digVar4, dig<ScheduledExecutorService> digVar5, dig<Executor> digVar6) {
        this.f12679a = digVar;
        this.f12680b = digVar2;
        this.f12681c = digVar3;
        this.f12682d = digVar4;
        this.f12683e = digVar5;
        this.f12684f = digVar6;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new cbk(this.f12679a.mo9430a(), this.f12680b.mo9430a().intValue(), this.f12681c.mo9430a(), this.f12682d.mo9430a(), this.f12683e.mo9430a(), this.f12684f.mo9430a());
    }
}
