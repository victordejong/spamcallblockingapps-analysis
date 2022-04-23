package com.bytedance.sdk.openadsdk.l;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/a.class */
public class a extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private String f9801a;

    /* renamed from: com.bytedance.sdk.openadsdk.l.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/a$a.class */
    public static class C0179a {
        private RejectedExecutionHandler h;

        /* renamed from: a  reason: collision with root package name */
        private String f9808a = "io";

        /* renamed from: b  reason: collision with root package name */
        private int f9809b = 1;

        /* renamed from: c  reason: collision with root package name */
        private long f9810c = 30;

        /* renamed from: d  reason: collision with root package name */
        private TimeUnit f9811d = TimeUnit.SECONDS;
        private int e = 1;
        private BlockingQueue<Runnable> f = null;
        private ThreadFactory g = null;
        private int i = 5;

        public C0179a a(int i) {
            this.f9809b = i;
            return this;
        }

        public C0179a a(long j) {
            this.f9810c = j;
            return this;
        }

        public C0179a a(String str) {
            this.f9808a = str;
            return this;
        }

        public C0179a a(BlockingQueue<Runnable> blockingQueue) {
            this.f = blockingQueue;
            return this;
        }

        public C0179a a(RejectedExecutionHandler rejectedExecutionHandler) {
            this.h = rejectedExecutionHandler;
            return this;
        }

        public C0179a a(TimeUnit timeUnit) {
            this.f9811d = timeUnit;
            return this;
        }

        public a a() {
            if (this.g == null) {
                this.g = new h(this.i, this.f9808a);
            }
            if (this.h == null) {
                this.h = e.f();
            }
            if (this.f == null) {
                this.f = new LinkedBlockingQueue();
            }
            return new a(this.f9808a, this.f9809b, this.e, this.f9810c, this.f9811d, this.f, this.g, this.h);
        }

        public C0179a b(int i) {
            this.e = i;
            return this;
        }
    }

    public a(String str, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.f9801a = str;
    }

    public String a() {
        return this.f9801a;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        BlockingQueue<Runnable> queue;
        super.afterExecute(runnable, th);
        if (e.e() && !TextUtils.isEmpty(this.f9801a) && (queue = getQueue()) != null) {
            String str = this.f9801a;
            str.hashCode();
            if (!str.equals("log")) {
                if (str.equals("aidl") && queue.size() < 4 && getCorePoolSize() != 0) {
                    try {
                        setCorePoolSize(0);
                        setMaximumPoolSize(4);
                        q.a("ADThreadPoolExecutor", "afterExecute: reduce ", this.f9801a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
                    } catch (Exception e) {
                        q.c("ADThreadPoolExecutor", e.getMessage());
                    }
                }
            } else if (queue.size() >= 4 && getCorePoolSize() != 2) {
                setCorePoolSize(2);
                setMaximumPoolSize(4);
                q.a("ADThreadPoolExecutor", "afterExecute: reduce ", this.f9801a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        BlockingQueue<Runnable> queue;
        if (runnable instanceof g) {
            super.execute(new b((g) runnable, this));
        } else {
            super.execute(new b(new g("unknown") { // from class: com.bytedance.sdk.openadsdk.l.a.1
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                }
            }, this));
        }
        if (e.e() && !TextUtils.isEmpty(this.f9801a) && (queue = getQueue()) != null) {
            String str = this.f9801a;
            str.hashCode();
            if (!str.equals("log")) {
                if (str.equals("aidl") && queue.size() >= 4 && getCorePoolSize() != 4) {
                    try {
                        setMaximumPoolSize(e.f9824a + 4);
                        setCorePoolSize(4);
                        q.a("ADThreadPoolExecutor", "execute: increase poolType =  ", this.f9801a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
                    } catch (Exception e) {
                        q.c("ADThreadPoolExecutor", e.getMessage());
                    }
                }
            } else if (queue.size() >= 4 && getCorePoolSize() != 4) {
                setMaximumPoolSize(e.f9824a + 4);
                setCorePoolSize(4);
                q.a("ADThreadPoolExecutor", "execute: increase poolType =  ", this.f9801a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if (!"io".equals(this.f9801a) && !"aidl".equals(this.f9801a)) {
            super.shutdown();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return ("io".equals(this.f9801a) || "aidl".equals(this.f9801a)) ? Collections.emptyList() : super.shutdownNow();
    }
}
