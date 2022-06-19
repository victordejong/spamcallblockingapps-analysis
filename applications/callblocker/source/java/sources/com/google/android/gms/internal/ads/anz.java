package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anz.class */
public final class anz implements dht<auq<arg>> {

    /* renamed from: a */
    private final dig<aiq> f10080a;

    /* renamed from: b */
    private final dig<Executor> f10081b;

    private anz(dig<aiq> digVar, dig<Executor> digVar2) {
        this.f10080a = digVar;
        this.f10081b = digVar2;
    }

    /* renamed from: a */
    public static anz m12871a(dig<aiq> digVar, dig<Executor> digVar2) {
        return new anz(digVar, digVar2);
    }

    /* renamed from: a */
    public static auq<arg> m12872a(aiq aiqVar, Executor executor) {
        return (auq) dhz.m9438a(new auq(aiqVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12872a(this.f10080a.mo9430a(), this.f10081b.mo9430a());
    }
}
