package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/biv.class */
public final class biv implements dht<bij> {

    /* renamed from: a */
    private final dig<Executor> f11358a;

    /* renamed from: b */
    private final dig<Context> f11359b;

    /* renamed from: c */
    private final dig<WeakReference<Context>> f11360c;

    /* renamed from: d */
    private final dig<Executor> f11361d;

    /* renamed from: e */
    private final dig<bfg> f11362e;

    /* renamed from: f */
    private final dig<ScheduledExecutorService> f11363f;

    /* renamed from: g */
    private final dig<bht> f11364g;

    /* renamed from: h */
    private final dig<C3647yd> f11365h;

    public biv(dig<Executor> digVar, dig<Context> digVar2, dig<WeakReference<Context>> digVar3, dig<Executor> digVar4, dig<bfg> digVar5, dig<ScheduledExecutorService> digVar6, dig<bht> digVar7, dig<C3647yd> digVar8) {
        this.f11358a = digVar;
        this.f11359b = digVar2;
        this.f11360c = digVar3;
        this.f11361d = digVar4;
        this.f11362e = digVar5;
        this.f11363f = digVar6;
        this.f11364g = digVar7;
        this.f11365h = digVar8;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bij(this.f11358a.mo9430a(), this.f11359b.mo9430a(), this.f11360c.mo9430a(), this.f11361d.mo9430a(), this.f11362e.mo9430a(), this.f11363f.mo9430a(), this.f11364g.mo9430a(), this.f11365h.mo9430a());
    }
}
