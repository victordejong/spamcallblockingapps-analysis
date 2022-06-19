package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/caw.class */
public final class caw implements dht<cav> {

    /* renamed from: a */
    private final dig<AbstractC3537ub> f12645a;

    /* renamed from: b */
    private final dig<Context> f12646b;

    /* renamed from: c */
    private final dig<ScheduledExecutorService> f12647c;

    /* renamed from: d */
    private final dig<Executor> f12648d;

    public caw(dig<AbstractC3537ub> digVar, dig<Context> digVar2, dig<ScheduledExecutorService> digVar3, dig<Executor> digVar4) {
        this.f12645a = digVar;
        this.f12646b = digVar2;
        this.f12647c = digVar3;
        this.f12648d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new cav(this.f12645a.mo9430a(), this.f12646b.mo9430a(), this.f12647c.mo9430a(), this.f12648d.mo9430a());
    }
}
