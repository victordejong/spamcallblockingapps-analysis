package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.crashlytics.internal.common.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/g.class */
public class C9090g {

    /* renamed from: a */
    private final Executor f39297a;

    /* renamed from: b */
    private AbstractC7966g<Void> f39298b = C7970j.m5798e(null);

    /* renamed from: c */
    private final Object f39299c = new Object();

    /* renamed from: d */
    private final ThreadLocal<Boolean> f39300d = new ThreadLocal<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.crashlytics.internal.common.g$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/g$a.class */
    public class RunnableC9091a implements Runnable {
        RunnableC9091a() {
            C9090g.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9090g.this.f39300d.set(Boolean.TRUE);
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.g$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/g$b.class */
    public class C9092b implements AbstractC7954a<Void, T> {

        /* renamed from: a */
        final /* synthetic */ Callable f39302a;

        C9092b(Callable callable) {
            C9090g.this = r4;
            this.f39302a = callable;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // com.google.android.gms.tasks.AbstractC7954a
        /* renamed from: a */
        public T mo1125a(AbstractC7966g<Void> abstractC7966g) {
            return this.f39302a.call();
        }
    }

    /* renamed from: com.google.firebase.crashlytics.internal.common.g$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/g$c.class */
    public class C9093c implements AbstractC7954a<T, Void> {
        C9093c() {
            C9090g.this = r4;
        }

        /* renamed from: b */
        public Void mo1125a(AbstractC7966g<T> abstractC7966g) {
            return null;
        }
    }

    public C9090g(Executor executor) {
        this.f39297a = executor;
        executor.execute(new RunnableC9091a());
    }

    /* renamed from: d */
    private <T> AbstractC7966g<Void> m1909d(AbstractC7966g<T> abstractC7966g) {
        return abstractC7966g.mo5818i(this.f39297a, new C9093c());
    }

    /* renamed from: e */
    private boolean m1908e() {
        return Boolean.TRUE.equals(this.f39300d.get());
    }

    /* renamed from: f */
    private <T> AbstractC7954a<Void, T> m1907f(Callable<T> callable) {
        return new C9092b(callable);
    }

    /* renamed from: b */
    public void m1911b() {
        if (m1908e()) {
            return;
        }
        throw new IllegalStateException("Not running on background worker thread as intended.");
    }

    /* renamed from: c */
    public Executor m1910c() {
        return this.f39297a;
    }

    /* renamed from: g */
    public <T> AbstractC7966g<T> m1906g(Callable<T> callable) {
        AbstractC7966g<T> mo5818i;
        synchronized (this.f39299c) {
            mo5818i = this.f39298b.mo5818i(this.f39297a, m1907f(callable));
            this.f39298b = m1909d(mo5818i);
        }
        return mo5818i;
    }

    /* renamed from: h */
    public <T> AbstractC7966g<T> m1905h(Callable<AbstractC7966g<T>> callable) {
        AbstractC7966g<T> mo5816k;
        synchronized (this.f39299c) {
            mo5816k = this.f39298b.mo5816k(this.f39297a, m1907f(callable));
            this.f39298b = m1909d(mo5816k);
        }
        return mo5816k;
    }
}
