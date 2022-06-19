package p1727n3.p1751c0;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: n3.c0.e0 */
/* loaded from: classes-dex2jar.jar:n3/c0/e0.class */
public class ExecutorC25647e0 implements Executor {

    /* renamed from: a */
    public final Executor f71837a;

    /* renamed from: b */
    public final ArrayDeque<Runnable> f71838b = new ArrayDeque<>();

    /* renamed from: c */
    public Runnable f71839c;

    /* renamed from: n3.c0.e0$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/e0$a.class */
    public class RunnableC25648a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f71840a;

        public RunnableC25648a(Runnable runnable) {
            ExecutorC25647e0.this = r4;
            this.f71840a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f71840a.run();
            } finally {
                ExecutorC25647e0.this.m3097a();
            }
        }
    }

    public ExecutorC25647e0(Executor executor) {
        this.f71837a = executor;
    }

    /* renamed from: a */
    public void m3097a() {
        synchronized (this) {
            Runnable poll = this.f71838b.poll();
            this.f71839c = poll;
            if (poll != null) {
                this.f71837a.execute(poll);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this) {
            this.f71838b.offer(new RunnableC25648a(runnable));
            if (this.f71839c == null) {
                m3097a();
            }
        }
    }
}
