package com.flurry.sdk;

import com.flurry.sdk.AbstractC3451le;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.flurry.sdk.jp */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jp.class */
public class C3349jp<T extends AbstractC3451le> {

    /* renamed from: a */
    public static final String f5728a = "jp";

    /* renamed from: b */
    public final C3338jg<Object, T> f5729b = new C3338jg<>();

    /* renamed from: c */
    public final HashMap<T, Object> f5730c = new HashMap<>();

    /* renamed from: d */
    public final HashMap<T, Future<?>> f5731d = new HashMap<>();

    /* renamed from: e */
    public final ThreadPoolExecutor f5732e;

    public C3349jp(String str, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        this.f5732e = new ThreadPoolExecutor(timeUnit, blockingQueue) { // from class: com.flurry.sdk.jp.1
            @Override // java.util.concurrent.ThreadPoolExecutor
            public final void afterExecute(Runnable runnable, Throwable th) {
                super.afterExecute(runnable, th);
                AbstractC3451le a = C3349jp.m32622a(runnable);
                if (a != null) {
                    synchronized (C3349jp.this.f5731d) {
                        C3349jp.this.f5731d.remove(a);
                    }
                    C3349jp.this.m32625a((C3349jp) a);
                    new AbstractRunnableC3447lc(this, a) { // from class: com.flurry.sdk.jp.1.2
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                        }
                    }.run();
                }
            }

            @Override // java.util.concurrent.ThreadPoolExecutor
            public final void beforeExecute(Thread thread, Runnable runnable) {
                super.beforeExecute(thread, runnable);
                AbstractC3451le a = C3349jp.m32622a(runnable);
                if (a != null) {
                    new AbstractRunnableC3447lc(this, a) { // from class: com.flurry.sdk.jp.1.1
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                        }
                    }.run();
                }
            }

            @Override // java.util.concurrent.AbstractExecutorService
            public final <V> RunnableFuture<V> newTaskFor(Runnable runnable, V v) {
                C3348jo joVar = new C3348jo(runnable, v);
                synchronized (C3349jp.this.f5731d) {
                    C3349jp.this.f5731d.put((AbstractC3451le) runnable, joVar);
                }
                return joVar;
            }

            @Override // java.util.concurrent.AbstractExecutorService
            public final <V> RunnableFuture<V> newTaskFor(Callable<V> callable) {
                throw new UnsupportedOperationException("Callable not supported");
            }
        };
        this.f5732e.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy() { // from class: com.flurry.sdk.jp.2
            @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                super.rejectedExecution(runnable, threadPoolExecutor);
                AbstractC3451le a = C3349jp.m32622a(runnable);
                if (a != null) {
                    synchronized (C3349jp.this.f5731d) {
                        C3349jp.this.f5731d.remove(a);
                    }
                    C3349jp.this.m32625a((C3349jp) a);
                    new AbstractRunnableC3447lc(this, a) { // from class: com.flurry.sdk.jp.2.1
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                        }
                    }.run();
                }
            }
        });
        this.f5732e.setThreadFactory(new ThreadFactoryC3440kw(str));
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC3451le m32622a(Runnable runnable) {
        AbstractC3451le leVar;
        if (runnable instanceof C3348jo) {
            leVar = (AbstractC3451le) ((C3348jo) runnable).m32628a();
        } else if (runnable instanceof AbstractC3451le) {
            leVar = (AbstractC3451le) runnable;
        } else {
            String str = f5728a;
            C3356jq.m32615a(6, str, "Unknown runnable class: " + runnable.getClass().getName());
            leVar = null;
        }
        return leVar;
    }

    /* renamed from: a */
    public final void m32625a(T t) {
        synchronized (this) {
            m32619b(this.f5730c.get(t), t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m32624a(Object obj) {
        synchronized (this) {
            if (obj != null) {
                HashSet<AbstractC3451le> hashSet = new HashSet();
                hashSet.addAll(this.f5729b.m32655a((C3338jg<Object, T>) obj));
                for (AbstractC3451le leVar : hashSet) {
                    m32621b((C3349jp<T>) leVar);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m32623a(Object obj, T t) {
        synchronized (this) {
            if (obj != null && t != null) {
                m32618c(obj, t);
                this.f5732e.submit(t);
            }
        }
    }

    /* renamed from: b */
    public final long m32620b(Object obj) {
        synchronized (this) {
            if (obj == null) {
                return 0L;
            }
            return this.f5729b.m32655a((C3338jg<Object, T>) obj).size();
        }
    }

    /* renamed from: b */
    public final void m32621b(final T t) {
        Future<?> remove;
        synchronized (this) {
            if (t != null) {
                synchronized (this.f5731d) {
                    remove = this.f5731d.remove(t);
                }
                m32625a((C3349jp<T>) t);
                if (remove != null) {
                    remove.cancel(true);
                }
                new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.jp.3
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        t.mo32440h();
                    }
                }.run();
            }
        }
    }

    /* renamed from: b */
    public final void m32619b(Object obj, T t) {
        synchronized (this) {
            this.f5729b.m32650b(obj, t);
            this.f5730c.remove(t);
        }
    }

    /* renamed from: c */
    public final void m32618c(Object obj, T t) {
        synchronized (this) {
            this.f5729b.m32654a((C3338jg<Object, T>) obj, t);
            this.f5730c.put(t, obj);
        }
    }
}
