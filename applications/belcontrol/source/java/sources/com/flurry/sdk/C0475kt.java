package com.flurry.sdk;

import com.flurry.sdk.mg;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.flurry.sdk.kt */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kt.class */
public class C0475kt<T extends mg> {

    /* renamed from: a */
    private static final String f3495a = "kt";

    /* renamed from: b */
    private final C0467kl<Object, T> f3496b = new C0467kl<>();

    /* renamed from: c */
    private final HashMap<T, Object> f3497c = new HashMap<>();

    /* renamed from: d */
    private final HashMap<T, Future<?>> f3498d = new HashMap<>();

    /* renamed from: e */
    private final ThreadPoolExecutor f3499e;

    public C0475kt(String str, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(timeUnit, blockingQueue) { // from class: com.flurry.sdk.kt.1
            @Override // java.util.concurrent.ThreadPoolExecutor
            public final void afterExecute(Runnable runnable, Throwable th) {
                super.afterExecute(runnable, th);
                mg m4603a = C0475kt.m4603a(runnable);
                if (m4603a == null) {
                    return;
                }
                synchronized (C0475kt.this.f3498d) {
                    C0475kt.this.f3498d.remove(m4603a);
                }
                C0475kt.this.m4606a((C0475kt) m4603a);
                new 2(this, m4603a).run();
            }

            @Override // java.util.concurrent.ThreadPoolExecutor
            public final void beforeExecute(Thread thread, Runnable runnable) {
                super.beforeExecute(thread, runnable);
                mg m4603a = C0475kt.m4603a(runnable);
                if (m4603a == null) {
                    return;
                }
                new 1(this, m4603a).run();
            }

            @Override // java.util.concurrent.AbstractExecutorService
            public final <V> RunnableFuture<V> newTaskFor(Runnable runnable, V v) {
                C0474ks c0474ks = new C0474ks(runnable, v);
                synchronized (C0475kt.this.f3498d) {
                    C0475kt.this.f3498d.put((mg) runnable, c0474ks);
                }
                return c0474ks;
            }

            @Override // java.util.concurrent.AbstractExecutorService
            public final <V> RunnableFuture<V> newTaskFor(Callable<V> callable) {
                throw new UnsupportedOperationException("Callable not supported");
            }
        };
        this.f3499e = threadPoolExecutor;
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy() { // from class: com.flurry.sdk.kt.2
            @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                super.rejectedExecution(runnable, threadPoolExecutor2);
                mg m4603a = C0475kt.m4603a(runnable);
                if (m4603a == null) {
                    return;
                }
                synchronized (C0475kt.this.f3498d) {
                    C0475kt.this.f3498d.remove(m4603a);
                }
                C0475kt.this.m4606a((C0475kt) m4603a);
                new 1(this, m4603a).run();
            }
        });
        threadPoolExecutor.setThreadFactory(new ThreadFactoryC0501lz(str));
    }

    /* renamed from: a */
    public static /* synthetic */ mg m4603a(Runnable runnable) {
        mg mgVar;
        if (runnable instanceof C0474ks) {
            runnable = ((C0474ks) runnable).m4609a();
        } else if (!(runnable instanceof mg)) {
            String str = f3495a;
            C0478ku.m4596a(6, str, "Unknown runnable class: " + runnable.getClass().getName());
            mgVar = null;
            return mgVar;
        }
        mgVar = (mg) runnable;
        return mgVar;
    }

    /* renamed from: a */
    public void m4606a(T t) {
        synchronized (this) {
            m4600b(this.f3497c.get(t), t);
        }
    }

    /* renamed from: b */
    private void m4602b(T t) {
        Future<?> remove;
        synchronized (this) {
            if (t == null) {
                return;
            }
            synchronized (this.f3498d) {
                remove = this.f3498d.remove(t);
            }
            m4606a((C0475kt<T>) t);
            if (remove != null) {
                remove.cancel(true);
            }
            new 3(this, t).run();
        }
    }

    /* renamed from: b */
    private void m4600b(Object obj, T t) {
        synchronized (this) {
            this.f3496b.m4629b(obj, t);
            this.f3497c.remove(t);
        }
    }

    /* renamed from: c */
    private void m4599c(Object obj, T t) {
        synchronized (this) {
            this.f3496b.m4633a((C0467kl<Object, T>) obj, t);
            this.f3497c.put(t, obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m4605a(Object obj) {
        synchronized (this) {
            if (obj == null) {
                return;
            }
            HashSet<mg> hashSet = new HashSet();
            hashSet.addAll(this.f3496b.m4634a((C0467kl<Object, T>) obj));
            for (mg mgVar : hashSet) {
                m4602b((C0475kt<T>) mgVar);
            }
        }
    }

    /* renamed from: a */
    public final void m4604a(Object obj, T t) {
        synchronized (this) {
            if (obj == null || t == null) {
                return;
            }
            m4599c(obj, t);
            this.f3499e.submit((Runnable) t);
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: b */
    public final long m4601b(Object obj) {
        char size;
        synchronized (this) {
            size = obj == null ? (char) 0 : this.f3496b.m4634a((C0467kl<Object, T>) obj).size();
        }
        return size;
    }
}
