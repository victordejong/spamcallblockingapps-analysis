package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/any.class */
public final class any implements dht<auq<dxs>> {

    /* renamed from: a */
    private final dig<aiq> f10078a;

    /* renamed from: b */
    private final dig<Executor> f10079b;

    private any(dig<aiq> digVar, dig<Executor> digVar2) {
        this.f10078a = digVar;
        this.f10079b = digVar2;
    }

    /* renamed from: a */
    public static any m12873a(dig<aiq> digVar, dig<Executor> digVar2) {
        return new any(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10078a.mo9430a(), this.f10079b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
