package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bb2.class */
public final class bb2<T> implements cj3<ab2<T>> {

    /* renamed from: a */
    private final pj3<Executor> f20329a;

    /* renamed from: b */
    private final pj3<Set<wa2<? extends va2<T>>>> f20330b;

    public bb2(pj3<Executor> pj3Var, pj3<Set<wa2<? extends va2<T>>>> pj3Var2) {
        this.f20329a = pj3Var;
        this.f20330b = pj3Var2;
    }

    /* renamed from: a */
    public final ab2<T> mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ab2<>(s03Var, ((nj3) this.f20330b).mo8141b());
    }
}
