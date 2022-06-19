package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhb.class */
public final class bhb implements dht<auq<clg>> {

    /* renamed from: a */
    private final dig<bhn> f11233a;

    /* renamed from: b */
    private final dig<Executor> f11234b;

    private bhb(dig<bhn> digVar, dig<Executor> digVar2) {
        this.f11233a = digVar;
        this.f11234b = digVar2;
    }

    /* renamed from: a */
    public static bhb m11950a(dig<bhn> digVar, dig<Executor> digVar2) {
        return new bhb(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f11233a.mo9430a(), this.f11234b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
