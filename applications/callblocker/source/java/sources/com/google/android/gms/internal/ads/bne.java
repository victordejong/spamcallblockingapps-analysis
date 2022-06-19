package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bne.class */
public final class bne implements dht<bna> {

    /* renamed from: a */
    private final dig<ajy> f11589a;

    /* renamed from: b */
    private final dig<Context> f11590b;

    /* renamed from: c */
    private final dig<Executor> f11591c;

    /* renamed from: d */
    private final dig<bee> f11592d;

    /* renamed from: e */
    private final dig<chh> f11593e;

    public bne(dig<ajy> digVar, dig<Context> digVar2, dig<Executor> digVar3, dig<bee> digVar4, dig<chh> digVar5) {
        this.f11589a = digVar;
        this.f11590b = digVar2;
        this.f11591c = digVar3;
        this.f11592d = digVar4;
        this.f11593e = digVar5;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bna(this.f11589a.mo9430a(), this.f11590b.mo9430a(), this.f11591c.mo9430a(), this.f11592d.mo9430a(), this.f11593e.mo9430a());
    }
}
