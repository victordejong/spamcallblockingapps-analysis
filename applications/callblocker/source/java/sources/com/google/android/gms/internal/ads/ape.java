package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ape.class */
public final class ape implements dht<Context> {

    /* renamed from: a */
    private final apb f10178a;

    /* renamed from: b */
    private final dig<Context> f10179b;

    private ape(apb apbVar, dig<Context> digVar) {
        this.f10178a = apbVar;
        this.f10179b = digVar;
    }

    /* renamed from: a */
    public static ape m12826a(apb apbVar, dig<Context> digVar) {
        return new ape(apbVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (Context) dhz.m9438a(this.f10178a.m12846a(this.f10179b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
