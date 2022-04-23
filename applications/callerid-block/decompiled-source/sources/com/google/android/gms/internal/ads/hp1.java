package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hp1.class */
public final class hp1<O> {

    /* renamed from: a */
    private final Object f6751a;

    /* renamed from: b */
    private final String f6752b;

    /* renamed from: c */
    private final rz1<?> f6753c;

    /* renamed from: d */
    private final List<rz1<?>> f6754d;

    /* renamed from: e */
    private final rz1<O> f6755e;

    /* renamed from: f */
    final /* synthetic */ ip1 f6756f;

    private hp1(ip1 ip1Var, ip1 ip1Var2, String str, rz1 rz1Var, List<rz1> list, rz1<O> rz1Var2) {
        this.f6756f = ip1Var;
        this.f6751a = ip1Var2;
        this.f6752b = str;
        this.f6753c = rz1Var;
        this.f6754d = list;
        this.f6755e = rz1Var2;
    }

    /* renamed from: a */
    public final hp1<O> m7259a(String str) {
        return new hp1<>(this.f6756f, this.f6751a, str, this.f6753c, this.f6754d, this.f6755e);
    }

    /* renamed from: b */
    public final <O2> hp1<O2> m7258b(uo1<O, O2> uo1Var) {
        return m7257c(new cp1(uo1Var));
    }

    /* renamed from: c */
    public final <O2> hp1<O2> m7257c(uy1<O, O2> uy1Var) {
        sz1 sz1Var;
        sz1Var = this.f6756f.f6825a;
        return m7256d(uy1Var, sz1Var);
    }

    /* renamed from: d */
    public final <O2> hp1<O2> m7256d(uy1<O, O2> uy1Var, Executor executor) {
        return new hp1<>(this.f6756f, this.f6751a, this.f6752b, this.f6753c, this.f6754d, kz1.h(this.f6755e, uy1Var, executor));
    }

    /* renamed from: e */
    public final <O2> hp1<O2> m7255e(rz1<O2> rz1Var) {
        return m7256d(new dp1(rz1Var), C2073zo.f9415f);
    }

    /* renamed from: f */
    public final <T extends Throwable> hp1<O> m7254f(Class<T> cls, uo1<T, O> uo1Var) {
        return m7253g(cls, new ep1(uo1Var));
    }

    /* renamed from: g */
    public final <T extends Throwable> hp1<O> m7253g(Class<T> cls, uy1<T, O> uy1Var) {
        sz1 sz1Var;
        ip1 ip1Var = this.f6756f;
        Object obj = this.f6751a;
        String str = this.f6752b;
        rz1<?> rz1Var = this.f6753c;
        List<rz1<?>> list = this.f6754d;
        rz1<O> rz1Var2 = this.f6755e;
        sz1Var = ip1Var.f6825a;
        return new hp1<>(ip1Var, obj, str, rz1Var, list, kz1.f(rz1Var2, cls, uy1Var, sz1Var));
    }

    /* renamed from: h */
    public final hp1<O> m7252h(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        ip1 ip1Var = this.f6756f;
        Object obj = this.f6751a;
        String str = this.f6752b;
        rz1<?> rz1Var = this.f6753c;
        List<rz1<?>> list = this.f6754d;
        rz1<O> rz1Var2 = this.f6755e;
        scheduledExecutorService = ip1Var.f6826b;
        return new hp1<>(ip1Var, obj, str, rz1Var, list, kz1.g(rz1Var2, j, timeUnit, scheduledExecutorService));
    }

    /* renamed from: i */
    public final wo1 m7251i() {
        jp1 jp1Var;
        Object obj = this.f6751a;
        String str = this.f6752b;
        String str2 = str;
        if (str == null) {
            str2 = this.f6756f.m7119c(obj);
        }
        final wo1 wo1Var = new wo1(obj, str2, this.f6755e);
        jp1Var = this.f6756f.f6827c;
        jp1Var.m6939j0(wo1Var);
        rz1<?> rz1Var = this.f6753c;
        Runnable fp1Var = new Runnable(this, wo1Var) { // from class: com.google.android.gms.internal.ads.fp1

            /* renamed from: b */
            private final hp1 f6567b;

            /* renamed from: c */
            private final wo1 f6568c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6567b = this;
                this.f6568c = wo1Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                jp1 jp1Var2;
                hp1 hp1Var = this.f6567b;
                wo1 wo1Var2 = this.f6568c;
                jp1Var2 = hp1Var.f6756f.f6827c;
                jp1Var2.m6941O(wo1Var2);
            }
        };
        sz1 sz1Var = C2073zo.f9415f;
        rz1Var.m5851e(fp1Var, sz1Var);
        kz1.o(wo1Var, new gp1(this, wo1Var), sz1Var);
        return wo1Var;
    }

    /* renamed from: j */
    public final hp1<O> m7250j(Object obj) {
        return this.f6756f.m7121a(obj, m7251i());
    }
}
