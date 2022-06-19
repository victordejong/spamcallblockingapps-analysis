package com.google.android.gms.ads.p075x.p076a;

import com.google.android.gms.dynamic.AbstractC1632a;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.x.a.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/x/a/g.class */
final /* synthetic */ class CallableC1515g implements Callable {

    /* renamed from: a */
    private final t f5744a;

    /* renamed from: b */
    private final List f5745b;

    /* renamed from: c */
    private final AbstractC1632a f5746c;

    CallableC1515g(t tVar, List list, AbstractC1632a abstractC1632a) {
        this.f5744a = tVar;
        this.f5745b = list;
        this.f5746c = abstractC1632a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f5744a.G6(this.f5745b, this.f5746c);
    }
}
