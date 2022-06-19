package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjh.class */
public final class bjh implements dht<auq<ash>> {

    /* renamed from: a */
    private final dig<bkm> f11386a;

    /* renamed from: b */
    private final dig<Executor> f11387b;

    private bjh(dig<bkm> digVar, dig<Executor> digVar2) {
        this.f11386a = digVar;
        this.f11387b = digVar2;
    }

    /* renamed from: a */
    public static bjh m11857a(dig<bkm> digVar, dig<Executor> digVar2) {
        return new bjh(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11386a.mo9430a(), this.f11387b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
