package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C1407r;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.pj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pj.class */
public final class CallableC1891pj implements Callable<C1876oj> {

    /* renamed from: a */
    final /* synthetic */ Context f8129a;

    /* renamed from: b */
    final /* synthetic */ C1922rj f8130b;

    public CallableC1891pj(C1922rj c1922rj, Context context) {
        this.f8130b = c1922rj;
        this.f8129a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ C1876oj call() {
        WeakHashMap weakHashMap;
        WeakHashMap weakHashMap2;
        weakHashMap = this.f8130b.f8342a;
        C1906qj c1906qj = (C1906qj) weakHashMap.get(this.f8129a);
        C1876oj m6433a = (c1906qj == null || c1906qj.f8207a + C1935s4.f8431a.m6222e().longValue() < C1407r.m8913k().m8247a()) ? new C1861nj(this.f8129a).m6433a() : new C1861nj(this.f8129a, c1906qj.f8208b).m6433a();
        weakHashMap2 = this.f8130b.f8342a;
        weakHashMap2.put(this.f8129a, new C1906qj(this.f8130b, m6433a));
        return m6433a;
    }
}
