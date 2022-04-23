package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zo1.class */
public final class zo1 {

    /* renamed from: a */
    private final Object f9416a;

    /* renamed from: b */
    private final List<rz1<?>> f9417b;

    /* renamed from: c */
    final /* synthetic */ ip1 f9418c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zo1(ip1 ip1Var, Object obj, List list, xo1 xo1Var) {
        this.f9418c = ip1Var;
        this.f9416a = obj;
        this.f9417b = list;
    }

    /* renamed from: a */
    public final <O> hp1<O> m4560a(Callable<O> callable) {
        sz1 sz1Var;
        jz1 n = kz1.n(this.f9417b);
        rz1 a = n.m6894a(yo1.f9232a, C2073zo.f9415f);
        ip1 ip1Var = this.f9418c;
        Object obj = this.f9416a;
        List<rz1<?>> list = this.f9417b;
        sz1Var = ip1Var.f6825a;
        return new hp1<>(ip1Var, obj, a, list, n.m6894a(callable, sz1Var));
    }
}
