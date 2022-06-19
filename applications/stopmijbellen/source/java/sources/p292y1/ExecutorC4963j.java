package p292y1;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: y1.j */
/* loaded from: classes-dex2jar.jar:y1/j.class */
public class ExecutorC4963j implements Executor {

    /* renamed from: b */
    public final Executor f15130b;

    /* renamed from: d */
    public volatile Runnable f15132d;

    /* renamed from: a */
    public final ArrayDeque<RunnableC4964a> f15129a = new ArrayDeque<>();

    /* renamed from: c */
    public final Object f15131c = new Object();

    /* renamed from: y1.j$a */
    /* loaded from: classes-dex2jar.jar:y1/j$a.class */
    public static class RunnableC4964a implements Runnable {

        /* renamed from: a */
        public final ExecutorC4963j f15133a;

        /* renamed from: b */
        public final Runnable f15134b;

        public RunnableC4964a(ExecutorC4963j executorC4963j, Runnable runnable) {
            this.f15133a = executorC4963j;
            this.f15134b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f15134b.run();
            } finally {
                this.f15133a.m172a();
            }
        }
    }

    public ExecutorC4963j(Executor executor) {
        this.f15130b = executor;
    }

    /* renamed from: a */
    public void m172a() {
        synchronized (this.f15131c) {
            RunnableC4964a poll = this.f15129a.poll();
            this.f15132d = poll;
            if (poll != null) {
                this.f15130b.execute(this.f15132d);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f15131c) {
            this.f15129a.add(new RunnableC4964a(this, runnable));
            if (this.f15132d == null) {
                m172a();
            }
        }
    }
}
