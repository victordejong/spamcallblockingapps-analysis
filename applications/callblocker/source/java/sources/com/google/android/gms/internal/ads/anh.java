package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anh.class */
public final class anh implements dht<auq<arl>> {

    /* renamed from: a */
    private final dig<arv> f10052a;

    /* renamed from: b */
    private final dig<Executor> f10053b;

    private anh(dig<arv> digVar, dig<Executor> digVar2) {
        this.f10052a = digVar;
        this.f10053b = digVar2;
    }

    /* renamed from: a */
    public static anh m12886a(dig<arv> digVar, dig<Executor> digVar2) {
        return new anh(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10052a.mo9430a(), this.f10053b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
