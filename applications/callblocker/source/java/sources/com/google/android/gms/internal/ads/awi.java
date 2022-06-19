package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/awi.class */
public final class awi implements dht<auq<AbstractC2792app>> {

    /* renamed from: a */
    private final avv f10465a;

    /* renamed from: b */
    private final dig<axg> f10466b;

    /* renamed from: c */
    private final dig<Executor> f10467c;

    private awi(avv avvVar, dig<axg> digVar, dig<Executor> digVar2) {
        this.f10465a = avvVar;
        this.f10466b = digVar;
        this.f10467c = digVar2;
    }

    /* renamed from: a */
    public static awi m12383a(avv avvVar, dig<axg> digVar, dig<Executor> digVar2) {
        return new awi(avvVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10466b.mo9430a(), this.f10467c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
