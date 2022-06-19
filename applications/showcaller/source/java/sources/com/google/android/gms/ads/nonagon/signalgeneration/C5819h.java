package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.cj3;
import com.google.android.gms.internal.ads.kj3;
import com.google.android.gms.internal.ads.pj3;
import com.google.android.gms.internal.ads.qi0;
import com.google.android.gms.internal.ads.s03;
import com.google.android.gms.internal.ads.tr1;
import com.google.android.gms.internal.ads.ur1;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/h.class */
public final class C5819h implements cj3<C5817g> {

    /* renamed from: a */
    private final pj3<Executor> f18749a;

    /* renamed from: b */
    private final pj3<tr1> f18750b;

    public C5819h(pj3<Executor> pj3Var, pj3<tr1> pj3Var2) {
        this.f18749a = pj3Var;
        this.f18750b = pj3Var2;
    }

    /* renamed from: a */
    public final C5817g mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new C5817g(s03Var, ((ur1) this.f18750b).mo8141b());
    }
}
