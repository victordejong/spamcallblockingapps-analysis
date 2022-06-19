package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwb.class */
public final class bwb implements dht<bwa> {

    /* renamed from: a */
    private final dig<Executor> f12371a;

    /* renamed from: b */
    private final dig<C3542ug> f12372b;

    private bwb(dig<Executor> digVar, dig<C3542ug> digVar2) {
        this.f12371a = digVar;
        this.f12372b = digVar2;
    }

    /* renamed from: a */
    public static bwa m11578a(Executor executor, C3542ug c3542ug) {
        return new bwa(executor, c3542ug);
    }

    /* renamed from: a */
    public static bwb m11579a(dig<Executor> digVar, dig<C3542ug> digVar2) {
        return new bwb(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11578a(this.f12371a.mo9430a(), this.f12372b.mo9430a());
    }
}
