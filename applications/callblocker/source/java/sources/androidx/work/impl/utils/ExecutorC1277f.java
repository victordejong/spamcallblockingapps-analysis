package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/f.class */
public class ExecutorC1277f implements Executor {

    /* renamed from: b */
    private final Executor f4290b;

    /* renamed from: d */
    private volatile Runnable f4292d;

    /* renamed from: a */
    private final ArrayDeque<RunnableC1278a> f4289a = new ArrayDeque<>();

    /* renamed from: c */
    private final Object f4291c = new Object();

    /* renamed from: androidx.work.impl.utils.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/f$a.class */
    public static class RunnableC1278a implements Runnable {

        /* renamed from: a */
        final ExecutorC1277f f4293a;

        /* renamed from: b */
        final Runnable f4294b;

        RunnableC1278a(ExecutorC1277f executorC1277f, Runnable runnable) {
            this.f4293a = executorC1277f;
            this.f4294b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f4294b.run();
            } finally {
                this.f4293a.m17565a();
            }
        }
    }

    public ExecutorC1277f(Executor executor) {
        this.f4290b = executor;
    }

    /* renamed from: a */
    void m17565a() {
        synchronized (this.f4291c) {
            RunnableC1278a poll = this.f4289a.poll();
            this.f4292d = poll;
            if (poll != null) {
                this.f4290b.execute(this.f4292d);
            }
        }
    }

    /* renamed from: b */
    public boolean m17564b() {
        boolean z;
        synchronized (this.f4291c) {
            z = !this.f4289a.isEmpty();
        }
        return z;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f4291c) {
            this.f4289a.add(new RunnableC1278a(this, runnable));
            if (this.f4292d == null) {
                m17565a();
            }
        }
    }
}
