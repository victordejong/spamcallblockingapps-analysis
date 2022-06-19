package org.xutils.common.task;

import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/task/PriorityExecutor.class */
public class PriorityExecutor implements Executor {

    /* renamed from: d */
    private static final AtomicLong f40566d = new AtomicLong(0);

    /* renamed from: e */
    private static final ThreadFactory f40567e = new ThreadFactoryC9622a();

    /* renamed from: f */
    private static final Comparator<Runnable> f40568f = new C9623b();

    /* renamed from: g */
    private static final Comparator<Runnable> f40569g = new C9624c();

    /* renamed from: h */
    private final ThreadPoolExecutor f40570h;

    /* renamed from: org.xutils.common.task.PriorityExecutor$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/PriorityExecutor$a.class */
    static final class ThreadFactoryC9622a implements ThreadFactory {

        /* renamed from: a */
        private final AtomicInteger f40571a = new AtomicInteger(1);

        ThreadFactoryC9622a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "xTID#" + this.f40571a.getAndIncrement());
        }
    }

    /* renamed from: org.xutils.common.task.PriorityExecutor$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/PriorityExecutor$b.class */
    static final class C9623b implements Comparator<Runnable> {
        C9623b() {
        }

        /* renamed from: a */
        public int compare(Runnable runnable, Runnable runnable2) {
            if (!(runnable instanceof RunnableC9632a) || !(runnable2 instanceof RunnableC9632a)) {
                return 0;
            }
            RunnableC9632a runnableC9632a = (RunnableC9632a) runnable;
            RunnableC9632a runnableC9632a2 = (RunnableC9632a) runnable2;
            int ordinal = runnableC9632a.f40592e.ordinal() - runnableC9632a2.f40592e.ordinal();
            int i = ordinal;
            if (ordinal == 0) {
                i = (int) (runnableC9632a.f40591d - runnableC9632a2.f40591d);
            }
            return i;
        }
    }

    /* renamed from: org.xutils.common.task.PriorityExecutor$c */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/PriorityExecutor$c.class */
    static final class C9624c implements Comparator<Runnable> {
        C9624c() {
        }

        /* renamed from: a */
        public int compare(Runnable runnable, Runnable runnable2) {
            if (!(runnable instanceof RunnableC9632a) || !(runnable2 instanceof RunnableC9632a)) {
                return 0;
            }
            RunnableC9632a runnableC9632a = (RunnableC9632a) runnable;
            RunnableC9632a runnableC9632a2 = (RunnableC9632a) runnable2;
            int ordinal = runnableC9632a.f40592e.ordinal() - runnableC9632a2.f40592e.ordinal();
            int i = ordinal;
            if (ordinal == 0) {
                i = (int) (runnableC9632a2.f40591d - runnableC9632a.f40591d);
            }
            return i;
        }
    }

    public PriorityExecutor(int i, boolean z) {
        this.f40570h = new ThreadPoolExecutor(i, 256, 1L, TimeUnit.SECONDS, new PriorityBlockingQueue(256, z ? f40568f : f40569g), f40567e);
    }

    public PriorityExecutor(boolean z) {
        this(5, z);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (runnable instanceof RunnableC9632a) {
            ((RunnableC9632a) runnable).f40591d = f40566d.getAndIncrement();
        }
        this.f40570h.execute(runnable);
    }

    public int getPoolSize() {
        return this.f40570h.getCorePoolSize();
    }

    public ThreadPoolExecutor getThreadPoolExecutor() {
        return this.f40570h;
    }

    public boolean isBusy() {
        return this.f40570h.getActiveCount() >= this.f40570h.getCorePoolSize();
    }

    public void setPoolSize(int i) {
        if (i > 0) {
            this.f40570h.setCorePoolSize(i);
        }
    }
}
