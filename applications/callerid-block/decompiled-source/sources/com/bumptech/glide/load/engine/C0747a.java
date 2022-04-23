package com.bumptech.glide.load.engine;

import android.os.Process;
import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.p029o.C0856j;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.bumptech.glide.load.engine.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a.class */
final class C0747a {

    /* renamed from: a */
    private final boolean f3552a;

    /* renamed from: b */
    private final Executor f3553b;

    /* renamed from: c */
    final Map<AbstractC0732c, C0752d> f3554c;

    /* renamed from: d */
    private final ReferenceQueue<n<?>> f3555d;

    /* renamed from: e */
    private n$a f3556e;

    /* renamed from: f */
    private volatile boolean f3557f;

    /* renamed from: g */
    private volatile AbstractC0751c f3558g;

    /* renamed from: com.bumptech.glide.load.engine.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$a.class */
    class ThreadFactoryC0748a implements ThreadFactory {

        /* renamed from: com.bumptech.glide.load.engine.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$a$a.class */
        class RunnableC0749a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ Runnable f3559b;

            RunnableC0749a(ThreadFactoryC0748a aVar, Runnable runnable) {
                this.f3559b = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f3559b.run();
            }
        }

        ThreadFactoryC0748a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(new RunnableC0749a(this, runnable), "glide-active-resources");
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$b.class */
    class RunnableC0750b implements Runnable {
        RunnableC0750b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0747a.this.m11143b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$c.class */
    public interface AbstractC0751c {
        /* renamed from: a */
        void m11138a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$d.class */
    public static final class C0752d extends WeakReference<n<?>> {

        /* renamed from: a */
        final AbstractC0732c f3561a;

        /* renamed from: b */
        final boolean f3562b;

        /* renamed from: c */
        AbstractC0764s<?> f3563c;

        C0752d(AbstractC0732c cVar, n<?> nVar, ReferenceQueue<? super n<?>> referenceQueue, boolean z) {
            super(nVar, referenceQueue);
            AbstractC0764s<?> sVar;
            C0856j.m10759d(cVar);
            this.f3561a = cVar;
            if (!nVar.f() || !z) {
                sVar = null;
            } else {
                AbstractC0764s<?> e = nVar.e();
                C0856j.m10759d(e);
                sVar = e;
            }
            this.f3563c = sVar;
            this.f3562b = nVar.f();
        }

        /* renamed from: a */
        void m11137a() {
            this.f3563c = null;
            clear();
        }
    }

    C0747a(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new ThreadFactoryC0748a()));
    }

    C0747a(boolean z, Executor executor) {
        this.f3554c = new HashMap();
        this.f3555d = new ReferenceQueue<>();
        this.f3552a = z;
        this.f3553b = executor;
        executor.execute(new RunnableC0750b());
    }

    /* renamed from: a */
    void m11144a(AbstractC0732c cVar, n<?> nVar) {
        synchronized (this) {
            C0752d put = this.f3554c.put(cVar, new C0752d(cVar, nVar, this.f3555d, this.f3552a));
            if (put != null) {
                put.m11137a();
            }
        }
    }

    /* renamed from: b */
    void m11143b() {
        while (!this.f3557f) {
            try {
                m11142c((C0752d) this.f3555d.remove());
                AbstractC0751c cVar = this.f3558g;
                if (cVar != null) {
                    cVar.m11138a();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: c */
    void m11142c(C0752d dVar) {
        AbstractC0764s<?> sVar;
        synchronized (this) {
            this.f3554c.remove(dVar.f3561a);
            if (dVar.f3562b && (sVar = dVar.f3563c) != null) {
                this.f3556e.m11088d(dVar.f3561a, new n<>(sVar, true, false, dVar.f3561a, this.f3556e));
            }
        }
    }

    /* renamed from: d */
    void m11141d(AbstractC0732c cVar) {
        synchronized (this) {
            C0752d remove = this.f3554c.remove(cVar);
            if (remove != null) {
                remove.m11137a();
            }
        }
    }

    /* renamed from: e */
    n<?> m11140e(AbstractC0732c cVar) {
        synchronized (this) {
            C0752d dVar = this.f3554c.get(cVar);
            if (dVar == null) {
                return null;
            }
            n<?> nVar = dVar.get();
            if (nVar == null) {
                m11142c(dVar);
            }
            return nVar;
        }
    }

    /* renamed from: f */
    void m11139f(n$a n_a) {
        synchronized (n_a) {
            synchronized (this) {
                this.f3556e = n_a;
            }
        }
    }
}
