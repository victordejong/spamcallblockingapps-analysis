package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azm.class */
public final class azm implements dht<auq<arw>> {

    /* renamed from: a */
    private final dig<bsz> f10704a;

    /* renamed from: b */
    private final dig<Executor> f10705b;

    private azm(dig<bsz> digVar, dig<Executor> digVar2) {
        this.f10704a = digVar;
        this.f10705b = digVar2;
    }

    /* renamed from: a */
    public static azm m12200a(dig<bsz> digVar, dig<Executor> digVar2) {
        return new azm(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10704a.mo9430a(), this.f10705b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
