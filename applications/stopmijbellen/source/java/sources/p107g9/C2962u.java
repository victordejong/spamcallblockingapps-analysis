package p107g9;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p107g9.C2929d0;
import p237t.C4350g;
/* renamed from: g9.u */
/* loaded from: classes2-dex2jar.jar:g9/u.class */
public class C2962u extends ThreadPoolExecutor {

    /* renamed from: g9.u$a */
    /* loaded from: classes2-dex2jar.jar:g9/u$a.class */
    public static final class C2963a extends FutureTask<RunnableC2920c> implements Comparable<C2963a> {

        /* renamed from: a */
        public final RunnableC2920c f9952a;

        public C2963a(RunnableC2920c runnableC2920c) {
            super(runnableC2920c, null);
            this.f9952a = runnableC2920c;
        }

        @Override // java.lang.Comparable
        public int compareTo(C2963a c2963a) {
            RunnableC2920c runnableC2920c = this.f9952a;
            int i = runnableC2920c.f9871s;
            RunnableC2920c runnableC2920c2 = c2963a.f9952a;
            int i2 = runnableC2920c2.f9871s;
            return i == i2 ? runnableC2920c.f9853a - runnableC2920c2.f9853a : C4350g.m1021c(i2) - C4350g.m1021c(i);
        }
    }

    public C2962u() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new C2929d0.ThreadFactoryC2931b());
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        C2963a c2963a = new C2963a((RunnableC2920c) runnable);
        execute(c2963a);
        return c2963a;
    }
}
