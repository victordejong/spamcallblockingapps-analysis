package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qn2.class */
public final class qn2<O> {

    /* renamed from: a */
    private final Object f28573a;

    /* renamed from: b */
    private final String f28574b;

    /* renamed from: c */
    private final r03<?> f28575c;

    /* renamed from: d */
    private final List<r03<?>> f28576d;

    /* renamed from: e */
    private final r03<O> f28577e;

    /* renamed from: f */
    final /* synthetic */ rn2 f28578f;

    /* JADX INFO: Access modifiers changed from: private */
    public qn2(rn2 rn2Var, rn2 rn2Var2, String str, r03 r03Var, List<r03> list, r03<O> r03Var2) {
        this.f28578f = rn2Var;
        this.f28573a = rn2Var2;
        this.f28574b = str;
        this.f28575c = r03Var;
        this.f28576d = list;
        this.f28577e = r03Var2;
    }

    /* renamed from: a */
    public final qn2<O> m11841a(String str) {
        return new qn2<>(this.f28578f, this.f28573a, str, this.f28575c, this.f28576d, this.f28577e);
    }

    /* renamed from: b */
    public final <O2> qn2<O2> m11840b(cn2<O, O2> cn2Var) {
        return m11839c(new uz2(cn2Var) { // from class: com.google.android.gms.internal.ads.ln2

            /* renamed from: a */
            private final cn2 f26181a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26181a = cn2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return k03.m14003a(this.f26181a.mo8162a(obj));
            }
        });
    }

    /* renamed from: c */
    public final <O2> qn2<O2> m11839c(uz2<O, O2> uz2Var) {
        s03 s03Var;
        s03Var = this.f28578f.f29049b;
        return m11838d(uz2Var, s03Var);
    }

    /* renamed from: d */
    public final <O2> qn2<O2> m11838d(uz2<O, O2> uz2Var, Executor executor) {
        return new qn2<>(this.f28578f, this.f28573a, this.f28574b, this.f28575c, this.f28576d, k03.m13995i(this.f28577e, uz2Var, executor));
    }

    /* renamed from: e */
    public final <O2> qn2<O2> m11837e(r03<O2> r03Var) {
        return m11838d(new uz2(r03Var) { // from class: com.google.android.gms.internal.ads.mn2

            /* renamed from: a */
            private final r03 f26685a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26685a = r03Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f26685a;
            }
        }, qi0.f28500f);
    }

    /* renamed from: f */
    public final <T extends Throwable> qn2<O> m11836f(Class<T> cls, cn2<T, O> cn2Var) {
        return m11835g(cls, new uz2(cn2Var) { // from class: com.google.android.gms.internal.ads.nn2

            /* renamed from: a */
            private final cn2 f27237a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27237a = cn2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                Exception exc = (Exception) ((Throwable) obj);
                return k03.m14003a("");
            }
        });
    }

    /* renamed from: g */
    public final <T extends Throwable> qn2<O> m11835g(Class<T> cls, uz2<T, O> uz2Var) {
        s03 s03Var;
        rn2 rn2Var = this.f28578f;
        Object obj = this.f28573a;
        String str = this.f28574b;
        r03<?> r03Var = this.f28575c;
        List<r03<?>> list = this.f28576d;
        r03<O> r03Var2 = this.f28577e;
        s03Var = rn2Var.f29049b;
        return new qn2<>(rn2Var, obj, str, r03Var, list, k03.m13997g(r03Var2, cls, uz2Var, s03Var));
    }

    /* renamed from: h */
    public final qn2<O> m11834h(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        rn2 rn2Var = this.f28578f;
        Object obj = this.f28573a;
        String str = this.f28574b;
        r03<?> r03Var = this.f28575c;
        List<r03<?>> list = this.f28576d;
        r03<O> r03Var2 = this.f28577e;
        scheduledExecutorService = rn2Var.f29050c;
        return new qn2<>(rn2Var, obj, str, r03Var, list, k03.m13996h(r03Var2, j, timeUnit, scheduledExecutorService));
    }

    /* renamed from: i */
    public final en2 m11833i() {
        sn2 sn2Var;
        Object obj = this.f28573a;
        String str = this.f28574b;
        String str2 = str;
        if (str == null) {
            str2 = this.f28578f.mo8766g(obj);
        }
        en2 en2Var = new en2(obj, str2, this.f28577e);
        sn2Var = this.f28578f.f29051d;
        sn2Var.mo9133p(en2Var);
        r03<?> r03Var = this.f28575c;
        Runnable runnable = new Runnable(this, en2Var) { // from class: com.google.android.gms.internal.ads.on2

            /* renamed from: d */
            private final qn2 f27603d;

            /* renamed from: e */
            private final en2 f27604e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27603d = this;
                this.f27604e = en2Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                sn2 sn2Var2;
                qn2 qn2Var = this.f27603d;
                en2 en2Var2 = this.f27604e;
                sn2Var2 = qn2Var.f28578f.f29051d;
                sn2Var2.mo9134j0(en2Var2);
            }
        };
        s03 s03Var = qi0.f28500f;
        r03Var.mo10015d(runnable, s03Var);
        k03.m13988p(en2Var, new pn2(this, en2Var), s03Var);
        return en2Var;
    }

    /* renamed from: j */
    public final qn2<O> m11832j(Object obj) {
        return this.f28578f.m11366e(obj, m11833i());
    }
}
