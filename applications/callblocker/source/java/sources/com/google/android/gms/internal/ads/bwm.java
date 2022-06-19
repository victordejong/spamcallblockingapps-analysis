package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwm.class */
public final class bwm implements dht<bwi> {

    /* renamed from: a */
    private final dig<Context> f12404a;

    /* renamed from: b */
    private final dig<ScheduledExecutorService> f12405b;

    /* renamed from: c */
    private final dig<Executor> f12406c;

    private bwm(dig<Context> digVar, dig<ScheduledExecutorService> digVar2, dig<Executor> digVar3) {
        this.f12404a = digVar;
        this.f12405b = digVar2;
        this.f12406c = digVar3;
    }

    /* renamed from: a */
    public static bwm m11575a(dig<Context> digVar, dig<ScheduledExecutorService> digVar2, dig<Executor> digVar3) {
        return new bwm(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bwi(this.f12404a.mo9430a(), this.f12405b.mo9430a(), this.f12406c.mo9430a());
    }
}
