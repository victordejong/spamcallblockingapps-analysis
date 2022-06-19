package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2299a;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdk.class */
public final class bdk implements dht<bdj> {

    /* renamed from: a */
    private final dig<Context> f11020a;

    /* renamed from: b */
    private final dig<Executor> f11021b;

    /* renamed from: c */
    private final dig<ctl> f11022c;

    /* renamed from: d */
    private final dig<C3647yd> f11023d;

    /* renamed from: e */
    private final dig<C2299a> f11024e;

    /* renamed from: f */
    private final dig<adb> f11025f;

    public bdk(dig<Context> digVar, dig<Executor> digVar2, dig<ctl> digVar3, dig<C3647yd> digVar4, dig<C2299a> digVar5, dig<adb> digVar6) {
        this.f11020a = digVar;
        this.f11021b = digVar2;
        this.f11022c = digVar3;
        this.f11023d = digVar4;
        this.f11024e = digVar5;
        this.f11025f = digVar6;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bdj(this.f11020a.mo9430a(), this.f11021b.mo9430a(), this.f11022c.mo9430a(), this.f11023d.mo9430a(), this.f11024e.mo9430a(), this.f11025f.mo9430a());
    }
}
