package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rn2.class */
public abstract class rn2<E> {

    /* renamed from: a */
    private static final r03<?> f29048a = k03.m14003a(null);

    /* renamed from: b */
    private final s03 f29049b;

    /* renamed from: c */
    private final ScheduledExecutorService f29050c;

    /* renamed from: d */
    private final sn2<E> f29051d;

    public rn2(s03 s03Var, ScheduledExecutorService scheduledExecutorService, sn2<E> sn2Var) {
        this.f29049b = s03Var;
        this.f29050c = scheduledExecutorService;
        this.f29051d = sn2Var;
    }

    /* renamed from: e */
    public final <I> qn2<I> m11366e(E e, r03<I> r03Var) {
        return new qn2<>(this, e, r03Var, Collections.singletonList(r03Var), r03Var);
    }

    /* renamed from: f */
    public final hn2 m11365f(E e, r03<?>... r03VarArr) {
        return new hn2(this, e, Arrays.asList(r03VarArr), null);
    }

    /* renamed from: g */
    public abstract String mo8766g(E e);
}
