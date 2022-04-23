package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ip1.class */
public abstract class ip1<E> {

    /* renamed from: d */
    private static final rz1<?> f6824d = kz1.a((Object) null);

    /* renamed from: a */
    private final sz1 f6825a;

    /* renamed from: b */
    private final ScheduledExecutorService f6826b;

    /* renamed from: c */
    private final jp1<E> f6827c;

    public ip1(sz1 sz1Var, ScheduledExecutorService scheduledExecutorService, jp1<E> jp1Var) {
        this.f6825a = sz1Var;
        this.f6826b = scheduledExecutorService;
        this.f6827c = jp1Var;
    }

    /* renamed from: a */
    public final <I> hp1<I> m7121a(E e, rz1<I> rz1Var) {
        return new hp1<>(this, e, null, rz1Var, Collections.singletonList(rz1Var), rz1Var, null);
    }

    /* renamed from: b */
    public final zo1 m7120b(E e, rz1<?>... rz1VarArr) {
        return new zo1(this, e, Arrays.asList(rz1VarArr), null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public abstract String m7119c(E e);
}
