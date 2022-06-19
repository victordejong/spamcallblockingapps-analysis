package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqf.class */
public final class aqf implements dht<apx> {

    /* renamed from: a */
    private final dig<aqb> f10213a;

    /* renamed from: b */
    private final dig<Set<auq<apu>>> f10214b;

    /* renamed from: c */
    private final dig<Executor> f10215c;

    private aqf(dig<aqb> digVar, dig<Set<auq<apu>>> digVar2, dig<Executor> digVar3) {
        this.f10213a = digVar;
        this.f10214b = digVar2;
        this.f10215c = digVar3;
    }

    /* renamed from: a */
    public static aqf m12812a(dig<aqb> digVar, dig<Set<auq<apu>>> digVar2, dig<Executor> digVar3) {
        return new aqf(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new apx(this.f10213a.mo9430a(), this.f10214b.mo9430a(), this.f10215c.mo9430a());
    }
}
