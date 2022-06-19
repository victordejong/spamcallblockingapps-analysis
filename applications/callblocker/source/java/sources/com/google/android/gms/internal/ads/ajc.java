package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajc.class */
public final class ajc implements dht<ajb> {

    /* renamed from: a */
    private final dig<C3257js> f9794a;

    /* renamed from: b */
    private final dig<aiz> f9795b;

    /* renamed from: c */
    private final dig<Executor> f9796c;

    /* renamed from: d */
    private final dig<ais> f9797d;

    /* renamed from: e */
    private final dig<AbstractC2708e> f9798e;

    private ajc(dig<C3257js> digVar, dig<aiz> digVar2, dig<Executor> digVar3, dig<ais> digVar4, dig<AbstractC2708e> digVar5) {
        this.f9794a = digVar;
        this.f9795b = digVar2;
        this.f9796c = digVar3;
        this.f9797d = digVar4;
        this.f9798e = digVar5;
    }

    /* renamed from: a */
    public static ajc m13077a(dig<C3257js> digVar, dig<aiz> digVar2, dig<Executor> digVar3, dig<ais> digVar4, dig<AbstractC2708e> digVar5) {
        return new ajc(digVar, digVar2, digVar3, digVar4, digVar5);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new ajb(this.f9794a.mo9430a(), this.f9795b.mo9430a(), this.f9796c.mo9430a(), this.f9797d.mo9430a(), this.f9798e.mo9430a());
    }
}
