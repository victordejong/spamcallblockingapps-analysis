package p1727n3.p1834m0.p1835c0.p1845t;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: n3.m0.c0.t.k */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/k.class */
public class ExecutorC26790k implements Executor {

    /* renamed from: b */
    public final Executor f74968b;

    /* renamed from: d */
    public volatile Runnable f74970d;

    /* renamed from: a */
    public final ArrayDeque<RunnableC26791a> f74967a = new ArrayDeque<>();

    /* renamed from: c */
    public final Object f74969c = new Object();

    /* renamed from: n3.m0.c0.t.k$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/k$a.class */
    public static class RunnableC26791a implements Runnable {

        /* renamed from: a */
        public final ExecutorC26790k f74971a;

        /* renamed from: b */
        public final Runnable f74972b;

        public RunnableC26791a(ExecutorC26790k executorC26790k, Runnable runnable) {
            this.f74971a = executorC26790k;
            this.f74972b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f74972b.run();
            } finally {
                this.f74971a.m1328a();
            }
        }
    }

    public ExecutorC26790k(Executor executor) {
        this.f74968b = executor;
    }

    /* renamed from: a */
    public void m1328a() {
        synchronized (this.f74969c) {
            RunnableC26791a poll = this.f74967a.poll();
            this.f74970d = poll;
            if (poll != null) {
                this.f74968b.execute(this.f74970d);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f74969c) {
            this.f74967a.add(new RunnableC26791a(this, runnable));
            if (this.f74970d == null) {
                m1328a();
            }
        }
    }
}
