package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/blp.class */
public final class blp implements dht<bkz> {

    /* renamed from: a */
    private final dig<Context> f11494a;

    /* renamed from: b */
    private final dig<Executor> f11495b;

    /* renamed from: c */
    private final dig<AbstractC3442qo> f11496c;

    /* renamed from: d */
    private final dig<aig> f11497d;

    /* renamed from: e */
    private final dig<AbstractC3438qk> f11498e;

    /* renamed from: f */
    private final dig<HashMap<String, blo>> f11499f;

    private blp(dig<Context> digVar, dig<Executor> digVar2, dig<AbstractC3442qo> digVar3, dig<aig> digVar4, dig<AbstractC3438qk> digVar5, dig<HashMap<String, blo>> digVar6) {
        this.f11494a = digVar;
        this.f11495b = digVar2;
        this.f11496c = digVar3;
        this.f11497d = digVar4;
        this.f11498e = digVar5;
        this.f11499f = digVar6;
    }

    /* renamed from: a */
    public static blp m11810a(dig<Context> digVar, dig<Executor> digVar2, dig<AbstractC3442qo> digVar3, dig<aig> digVar4, dig<AbstractC3438qk> digVar5, dig<HashMap<String, blo>> digVar6) {
        return new blp(digVar, digVar2, digVar3, digVar4, digVar5, digVar6);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bkz(this.f11494a.mo9430a(), this.f11495b.mo9430a(), this.f11496c.mo9430a(), this.f11497d.mo9430a(), this.f11498e.mo9430a(), this.f11499f.mo9430a());
    }
}
