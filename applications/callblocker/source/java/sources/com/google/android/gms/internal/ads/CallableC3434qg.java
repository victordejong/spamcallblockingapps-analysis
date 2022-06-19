package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.qg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qg.class */
public final class CallableC3434qg implements Callable<C3433qf> {

    /* renamed from: a */
    private final /* synthetic */ Context f17283a;

    /* renamed from: b */
    private final /* synthetic */ C3435qh f17284b;

    public CallableC3434qg(C3435qh c3435qh, Context context) {
        this.f17284b = c3435qh;
        this.f17283a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ C3433qf call() {
        WeakHashMap weakHashMap;
        C3433qf m7317a;
        WeakHashMap weakHashMap2;
        weakHashMap = this.f17284b.f17285a;
        C3437qj c3437qj = (C3437qj) weakHashMap.get(this.f17283a);
        if (c3437qj != null) {
            if (!(c3437qj.f17290a + C2771ai.f9720a.mo13599a().longValue() < C2341q.m14737j().mo13862a())) {
                m7317a = new C3432qe(this.f17283a, c3437qj.f17291b).m7317a();
                weakHashMap2 = this.f17284b.f17285a;
                weakHashMap2.put(this.f17283a, new C3437qj(this.f17284b, m7317a));
                return m7317a;
            }
        }
        m7317a = new C3432qe(this.f17283a).m7317a();
        weakHashMap2 = this.f17284b.f17285a;
        weakHashMap2.put(this.f17283a, new C3437qj(this.f17284b, m7317a));
        return m7317a;
    }
}
