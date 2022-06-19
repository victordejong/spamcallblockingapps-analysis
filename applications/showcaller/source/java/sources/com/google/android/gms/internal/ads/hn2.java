package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hn2.class */
public final class hn2 {

    /* renamed from: a */
    private final Object f23987a;

    /* renamed from: b */
    private final List<r03<?>> f23988b;

    /* renamed from: c */
    final /* synthetic */ rn2 f23989c;

    public /* synthetic */ hn2(rn2 rn2Var, Object obj, List list, in2 in2Var) {
        this.f23989c = rn2Var;
        this.f23987a = obj;
        this.f23988b = list;
    }

    /* renamed from: a */
    public final <O> qn2<O> m14585a(Callable<O> callable) {
        s03 s03Var;
        i03 m13989o = k03.m13989o(this.f23988b);
        r03 m14516a = m13989o.m14516a(fn2.f22993a, qi0.f28500f);
        rn2 rn2Var = this.f23989c;
        Object obj = this.f23987a;
        List<r03<?>> list = this.f23988b;
        s03Var = rn2Var.f29049b;
        return new qn2<>(rn2Var, obj, m14516a, list, m13989o.m14516a(callable, s03Var));
    }
}
