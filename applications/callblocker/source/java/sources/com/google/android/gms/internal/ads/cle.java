package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cle.class */
public final class cle implements dht<ckz> {

    /* renamed from: a */
    private final dig<crs> f13256a;

    /* renamed from: b */
    private final dig<ScheduledExecutorService> f13257b;

    /* renamed from: c */
    private final dig<cky> f13258c;

    private cle(dig<crs> digVar, dig<ScheduledExecutorService> digVar2, dig<cky> digVar3) {
        this.f13256a = digVar;
        this.f13257b = digVar2;
        this.f13258c = digVar3;
    }

    /* renamed from: a */
    public static cle m11118a(dig<crs> digVar, dig<ScheduledExecutorService> digVar2, dig<cky> digVar3) {
        return new cle(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new ckz(this.f13256a.mo9430a(), this.f13257b.mo9430a(), this.f13258c.mo9430a());
    }
}
