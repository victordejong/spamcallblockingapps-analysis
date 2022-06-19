package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kn2.class */
public final class kn2 {
    /* renamed from: a */
    public static final <O> qn2<O> m13844a(r03<O> r03Var, Object obj, rn2 rn2Var) {
        r03 r03Var2;
        r03Var2 = rn2.f29048a;
        return new qn2<>(rn2Var, obj, r03Var2, Collections.emptyList(), r03Var);
    }

    /* renamed from: b */
    public static final <O> qn2<O> m13843b(Callable<O> callable, Object obj, rn2 rn2Var) {
        s03 s03Var;
        s03Var = rn2Var.f29049b;
        return m13842c(callable, s03Var, obj, rn2Var);
    }

    /* renamed from: c */
    public static final <O> qn2<O> m13842c(Callable<O> callable, s03 s03Var, Object obj, rn2 rn2Var) {
        r03 r03Var;
        r03Var = rn2.f29048a;
        return new qn2<>(rn2Var, obj, r03Var, Collections.emptyList(), s03Var.mo11185a(callable));
    }

    /* renamed from: d */
    public static final qn2 m13841d(dn2 dn2Var, s03 s03Var, Object obj, rn2 rn2Var) {
        return m13842c(new Callable(dn2Var) { // from class: com.google.android.gms.internal.ads.jn2

            /* renamed from: a */
            private final dn2 f24935a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24935a = dn2Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f24935a.zza();
                return null;
            }
        }, s03Var, obj, rn2Var);
    }
}
