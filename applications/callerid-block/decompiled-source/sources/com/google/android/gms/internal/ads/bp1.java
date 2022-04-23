package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bp1.class */
public final class bp1 {
    /* renamed from: a */
    public static final <O> hp1<O> m7932a(rz1<O> rz1Var, Object obj, ip1 ip1Var) {
        rz1 rz1Var2;
        rz1Var2 = ip1.f6824d;
        return new hp1<>(ip1Var, obj, rz1Var2, Collections.emptyList(), rz1Var);
    }

    /* renamed from: b */
    public static final <O> hp1<O> m7931b(Callable<O> callable, Object obj, ip1 ip1Var) {
        sz1 sz1Var;
        sz1Var = ip1Var.f6825a;
        return m7930c(callable, sz1Var, obj, ip1Var);
    }

    /* renamed from: c */
    public static final <O> hp1<O> m7930c(Callable<O> callable, sz1 sz1Var, Object obj, ip1 ip1Var) {
        rz1 rz1Var;
        rz1Var = ip1.f6824d;
        return new hp1<>(ip1Var, obj, rz1Var, Collections.emptyList(), sz1Var.m5553a(callable));
    }

    /* renamed from: d */
    public static final hp1 m7929d(final vo1 vo1Var, sz1 sz1Var, Object obj, ip1 ip1Var) {
        return m7930c(new Callable(vo1Var) { // from class: com.google.android.gms.internal.ads.ap1

            /* renamed from: a */
            private final vo1 f6069a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6069a = vo1Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f6069a.zza();
                return null;
            }
        }, sz1Var, obj, ip1Var);
    }
}
