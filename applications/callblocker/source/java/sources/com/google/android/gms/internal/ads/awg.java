package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/awg.class */
public final class awg implements dht<C3505sx> {

    /* renamed from: a */
    private final avv f10461a;

    /* renamed from: b */
    private final dig<Context> f10462b;

    /* renamed from: c */
    private final dig<chh> f10463c;

    private awg(avv avvVar, dig<Context> digVar, dig<chh> digVar2) {
        this.f10461a = avvVar;
        this.f10462b = digVar;
        this.f10463c = digVar2;
    }

    /* renamed from: a */
    public static awg m12385a(avv avvVar, dig<Context> digVar, dig<chh> digVar2) {
        return new awg(avvVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (C3505sx) dhz.m9438a(new C3505sx(this.f10462b.mo9430a(), this.f10463c.mo9430a().f13042f), "Cannot return null from a non-@Nullable @Provides method");
    }
}
