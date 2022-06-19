package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mj3.class */
public final class mj3<T> {

    /* renamed from: a */
    private final List<pj3<T>> f26633a;

    /* renamed from: b */
    private final List<pj3<Collection<T>>> f26634b;

    public /* synthetic */ mj3(int i, int i2, lj3 lj3Var) {
        this.f26633a = yi3.m8819a(i);
        this.f26634b = yi3.m8819a(i2);
    }

    /* renamed from: a */
    public final mj3<T> m13178a(pj3<? extends T> pj3Var) {
        this.f26633a.add(pj3Var);
        return this;
    }

    /* renamed from: b */
    public final mj3<T> m13177b(pj3<? extends Collection<? extends T>> pj3Var) {
        this.f26634b.add(pj3Var);
        return this;
    }

    /* renamed from: c */
    public final nj3<T> m13176c() {
        return new nj3<>(this.f26633a, this.f26634b, null);
    }
}
