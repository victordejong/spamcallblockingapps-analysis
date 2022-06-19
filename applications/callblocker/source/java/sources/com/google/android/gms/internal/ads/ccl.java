package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccl.class */
public final class ccl implements dht<ccj> {

    /* renamed from: a */
    private final dig<AbstractC3380og> f12728a;

    /* renamed from: b */
    private final dig<ScheduledExecutorService> f12729b;

    /* renamed from: c */
    private final dig<Context> f12730c;

    public ccl(dig<AbstractC3380og> digVar, dig<ScheduledExecutorService> digVar2, dig<Context> digVar3) {
        this.f12728a = digVar;
        this.f12729b = digVar2;
        this.f12730c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new ccj(this.f12728a.mo9430a(), this.f12729b.mo9430a(), this.f12730c.mo9430a());
    }
}
