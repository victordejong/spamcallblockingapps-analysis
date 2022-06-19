package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g.class */
public class ExecutorC1383g implements Executor {

    /* renamed from: e */
    private final Executor f5677e;

    /* renamed from: g */
    private volatile Runnable f5679g;

    /* renamed from: d */
    private final ArrayDeque<RunnableC1384a> f5676d = new ArrayDeque<>();

    /* renamed from: f */
    private final Object f5678f = new Object();

    /* renamed from: androidx.work.impl.utils.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g$a.class */
    public static class RunnableC1384a implements Runnable {

        /* renamed from: d */
        final ExecutorC1383g f5680d;

        /* renamed from: e */
        final Runnable f5681e;

        RunnableC1384a(ExecutorC1383g executorC1383g, Runnable runnable) {
            this.f5680d = executorC1383g;
            this.f5681e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f5681e.run();
            } finally {
                this.f5680d.m30182c();
            }
        }
    }

    public ExecutorC1383g(Executor executor) {
        this.f5677e = executor;
    }

    /* renamed from: b */
    public boolean m30183b() {
        boolean z;
        synchronized (this.f5678f) {
            z = !this.f5676d.isEmpty();
        }
        return z;
    }

    /* renamed from: c */
    void m30182c() {
        synchronized (this.f5678f) {
            RunnableC1384a poll = this.f5676d.poll();
            this.f5679g = poll;
            if (poll != null) {
                this.f5677e.execute(this.f5679g);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f5678f) {
            this.f5676d.add(new RunnableC1384a(this, runnable));
            if (this.f5679g == null) {
                m30182c();
            }
        }
    }
}
