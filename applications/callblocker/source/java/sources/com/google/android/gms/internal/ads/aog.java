package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aog.class */
public final class aog implements dht<auq<apu>> {

    /* renamed from: a */
    private final dig<bgw> f10106a;

    /* renamed from: b */
    private final dig<Executor> f10107b;

    private aog(dig<bgw> digVar, dig<Executor> digVar2) {
        this.f10106a = digVar;
        this.f10107b = digVar2;
    }

    /* renamed from: a */
    public static aog m12866a(dig<bgw> digVar, dig<Executor> digVar2) {
        return new aog(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10106a.mo9430a(), this.f10107b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
