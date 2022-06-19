package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvg.class */
public final class bvg implements dht<bvf> {

    /* renamed from: a */
    private final dig<crt<String>> f12329a;

    /* renamed from: b */
    private final dig<Executor> f12330b;

    private bvg(dig<crt<String>> digVar, dig<Executor> digVar2) {
        this.f12329a = digVar;
        this.f12330b = digVar2;
    }

    /* renamed from: a */
    public static bvg m11594a(dig<crt<String>> digVar, dig<Executor> digVar2) {
        return new bvg(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bvf(this.f12329a.mo9430a(), this.f12330b.mo9430a());
    }
}
