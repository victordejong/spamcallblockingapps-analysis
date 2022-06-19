package p193e.p1577m.p1578a.p1580b.p1583j;

import java.util.concurrent.Executor;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.b.j.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/q.class */
public class ExecutorC24156q implements Executor {

    /* renamed from: a */
    public final Executor f66883a;

    /* renamed from: e.m.a.b.j.q$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/q$a.class */
    public static class RunnableC24157a implements Runnable {

        /* renamed from: a */
        public final Runnable f66884a;

        public RunnableC24157a(Runnable runnable) {
            this.f66884a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f66884a.run();
            } catch (Exception e) {
                C26232y.m2479C0("Executor");
            }
        }
    }

    public ExecutorC24156q(Executor executor) {
        this.f66883a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f66883a.execute(new RunnableC24157a(runnable));
    }
}
