package com.bytedance.sdk.openadsdk.p184l;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.openadsdk.l.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/a.class */
public class C5043a extends ThreadPoolExecutor {

    /* renamed from: a */
    private String f18254a;

    /* renamed from: com.bytedance.sdk.openadsdk.l.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/a$a.class */
    public static class C5045a {

        /* renamed from: h */
        private RejectedExecutionHandler f18264h;

        /* renamed from: a */
        private String f18257a = "io";

        /* renamed from: b */
        private int f18258b = 1;

        /* renamed from: c */
        private long f18259c = 30;

        /* renamed from: d */
        private TimeUnit f18260d = TimeUnit.SECONDS;

        /* renamed from: e */
        private int f18261e = 1;

        /* renamed from: f */
        private BlockingQueue<Runnable> f18262f = null;

        /* renamed from: g */
        private ThreadFactory f18263g = null;

        /* renamed from: i */
        private int f18265i = 5;

        /* renamed from: a */
        public C5045a m33190a(int i) {
            this.f18258b = i;
            return this;
        }

        /* renamed from: a */
        public C5045a m33189a(long j) {
            this.f18259c = j;
            return this;
        }

        /* renamed from: a */
        public C5045a m33188a(String str) {
            this.f18257a = str;
            return this;
        }

        /* renamed from: a */
        public C5045a m33187a(BlockingQueue<Runnable> blockingQueue) {
            this.f18262f = blockingQueue;
            return this;
        }

        /* renamed from: a */
        public C5045a m33186a(RejectedExecutionHandler rejectedExecutionHandler) {
            this.f18264h = rejectedExecutionHandler;
            return this;
        }

        /* renamed from: a */
        public C5045a m33185a(TimeUnit timeUnit) {
            this.f18260d = timeUnit;
            return this;
        }

        /* renamed from: a */
        public C5043a m33192a() {
            if (this.f18263g == null) {
                this.f18263g = new ThreadFactoryC5056h(this.f18265i, this.f18257a);
            }
            if (this.f18264h == null) {
                this.f18264h = C5052e.m33153f();
            }
            if (this.f18262f == null) {
                this.f18262f = new LinkedBlockingQueue();
            }
            return new C5043a(this.f18257a, this.f18258b, this.f18261e, this.f18259c, this.f18260d, this.f18262f, this.f18263g, this.f18264h);
        }

        /* renamed from: b */
        public C5045a m33183b(int i) {
            this.f18261e = i;
            return this;
        }
    }

    public C5043a(String str, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.f18254a = str;
    }

    /* renamed from: a */
    public String m33193a() {
        return this.f18254a;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        BlockingQueue<Runnable> queue;
        super.afterExecute(runnable, th);
        if (!C5052e.m33154e() || TextUtils.isEmpty(this.f18254a) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.f18254a;
        str.hashCode();
        if (str.equals("log")) {
            if (queue.size() < 4 || getCorePoolSize() == 2) {
                return;
            }
            setCorePoolSize(2);
            setMaximumPoolSize(4);
            C5478q.m32116a("ADThreadPoolExecutor", "afterExecute: reduce ", this.f18254a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
        } else if (!str.equals("aidl") || queue.size() >= 4 || getCorePoolSize() == 0) {
        } else {
            try {
                setCorePoolSize(0);
                setMaximumPoolSize(4);
                C5478q.m32116a("ADThreadPoolExecutor", "afterExecute: reduce ", this.f18254a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
            } catch (Exception e) {
                C5478q.m32109c("ADThreadPoolExecutor", e.getMessage());
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        BlockingQueue<Runnable> queue;
        if (runnable instanceof AbstractRunnableC5055g) {
            super.execute(new RunnableC5049b((AbstractRunnableC5055g) runnable, this));
        } else {
            super.execute(new RunnableC5049b(new AbstractRunnableC5055g("unknown") { // from class: com.bytedance.sdk.openadsdk.l.a.1
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                }
            }, this));
        }
        if (!C5052e.m33154e() || TextUtils.isEmpty(this.f18254a) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.f18254a;
        str.hashCode();
        if (str.equals("log")) {
            if (queue.size() < 4 || getCorePoolSize() == 4) {
                return;
            }
            setMaximumPoolSize(C5052e.f18288a + 4);
            setCorePoolSize(4);
            C5478q.m32116a("ADThreadPoolExecutor", "execute: increase poolType =  ", this.f18254a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
        } else if (!str.equals("aidl") || queue.size() < 4 || getCorePoolSize() == 4) {
        } else {
            try {
                setMaximumPoolSize(C5052e.f18288a + 4);
                setCorePoolSize(4);
                C5478q.m32116a("ADThreadPoolExecutor", "execute: increase poolType =  ", this.f18254a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
            } catch (Exception e) {
                C5478q.m32109c("ADThreadPoolExecutor", e.getMessage());
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if ("io".equals(this.f18254a) || "aidl".equals(this.f18254a)) {
            return;
        }
        super.shutdown();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return ("io".equals(this.f18254a) || "aidl".equals(this.f18254a)) ? Collections.emptyList() : super.shutdownNow();
    }
}
