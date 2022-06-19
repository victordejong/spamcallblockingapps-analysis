package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g.class */
public final class ExecutorC3126g implements Executor {

    /* renamed from: b */
    private final Executor f11455b;

    /* renamed from: d */
    private volatile Runnable f11457d;

    /* renamed from: a */
    private final ArrayDeque<RunnableC3127a> f11454a = new ArrayDeque<>();

    /* renamed from: c */
    private final Object f11456c = new Object();

    /* renamed from: androidx.work.impl.utils.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g$a.class */
    public static final class RunnableC3127a implements Runnable {

        /* renamed from: a */
        final ExecutorC3126g f11458a;

        /* renamed from: b */
        final Runnable f11459b;

        RunnableC3127a(ExecutorC3126g executorC3126g, Runnable runnable) {
            this.f11458a = executorC3126g;
            this.f11459b = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f11459b.run();
            } finally {
                this.f11458a.m39292a();
            }
        }
    }

    public ExecutorC3126g(Executor executor) {
        this.f11455b = executor;
    }

    /* renamed from: a */
    final void m39292a() {
        synchronized (this.f11456c) {
            RunnableC3127a poll = this.f11454a.poll();
            this.f11457d = poll;
            if (poll != null) {
                this.f11455b.execute(this.f11457d);
            }
        }
    }

    /* renamed from: b */
    public final boolean m39291b() {
        boolean z;
        synchronized (this.f11456c) {
            z = !this.f11454a.isEmpty();
        }
        return z;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f11456c) {
            this.f11454a.add(new RunnableC3127a(this, runnable));
            if (this.f11457d == null) {
                m39292a();
            }
        }
    }
}
