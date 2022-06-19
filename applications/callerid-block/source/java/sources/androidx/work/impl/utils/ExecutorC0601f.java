package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/f.class */
public class ExecutorC0601f implements Executor {

    /* renamed from: c */
    private final Executor f3124c;

    /* renamed from: e */
    private volatile Runnable f3126e;

    /* renamed from: b */
    private final ArrayDeque<RunnableC0602a> f3123b = new ArrayDeque<>();

    /* renamed from: d */
    private final Object f3125d = new Object();

    /* renamed from: androidx.work.impl.utils.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/f$a.class */
    public static class RunnableC0602a implements Runnable {

        /* renamed from: b */
        final ExecutorC0601f f3127b;

        /* renamed from: c */
        final Runnable f3128c;

        RunnableC0602a(ExecutorC0601f executorC0601f, Runnable runnable) {
            this.f3127b = executorC0601f;
            this.f3128c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f3128c.run();
            } finally {
                this.f3127b.m11605b();
            }
        }
    }

    public ExecutorC0601f(Executor executor) {
        this.f3124c = executor;
    }

    /* renamed from: b */
    void m11605b() {
        synchronized (this.f3125d) {
            RunnableC0602a poll = this.f3123b.poll();
            this.f3126e = poll;
            if (poll != null) {
                this.f3124c.execute(this.f3126e);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f3125d) {
            this.f3123b.add(new RunnableC0602a(this, runnable));
            if (this.f3126e == null) {
                m11605b();
            }
        }
    }
}
