package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhq.class */
public final class bhq implements dht<bho> {

    /* renamed from: a */
    private final dig<Executor> f11273a;

    /* renamed from: b */
    private final dig<C3649yf> f11274b;

    /* renamed from: c */
    private final dig<Context> f11275c;

    /* renamed from: d */
    private final dig<C3647yd> f11276d;

    public bhq(dig<Executor> digVar, dig<C3649yf> digVar2, dig<Context> digVar3, dig<C3647yd> digVar4) {
        this.f11273a = digVar;
        this.f11274b = digVar2;
        this.f11275c = digVar3;
        this.f11276d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bho(this.f11273a.mo9430a(), this.f11274b.mo9430a(), this.f11275c.mo9430a(), this.f11276d.mo9430a());
    }
}
