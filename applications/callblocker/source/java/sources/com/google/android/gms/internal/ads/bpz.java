package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpz.class */
public final class bpz implements dht<bpx> {

    /* renamed from: a */
    private final dig<cho> f11795a;

    /* renamed from: b */
    private final dig<bfb> f11796b;

    /* renamed from: c */
    private final dig<bhi> f11797c;

    private bpz(dig<cho> digVar, dig<bfb> digVar2, dig<bhi> digVar3) {
        this.f11795a = digVar;
        this.f11796b = digVar2;
        this.f11797c = digVar3;
    }

    /* renamed from: a */
    public static bpz m11719a(dig<cho> digVar, dig<bfb> digVar2, dig<bhi> digVar3) {
        return new bpz(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bpx(this.f11795a.mo9430a(), this.f11796b.mo9430a(), this.f11797c.mo9430a());
    }
}
