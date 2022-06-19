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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.engine.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a.class */
public final class C0747a {

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

            RunnableC0749a(ThreadFactoryC0748a threadFactoryC0748a, Runnable runnable) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$b.class */
    public class RunnableC0750b implements Runnable {
        RunnableC0750b() {
            C0747a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0747a.this.m11143b();
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$c.class */
    public interface AbstractC0751c {
        /* renamed from: a */
        void m11138a();
    }

    /* renamed from: com.bumptech.glide.load.engine.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$d.class */
    public static final class C0752d extends WeakReference<n<?>> {

        /* renamed from: a */
        final AbstractC0732c f3561a;

        /* renamed from: b */
        final boolean f3562b;

        /* renamed from: c */
        AbstractC0764s<?> f3563c;

        C0752d(AbstractC0732c abstractC0732c, n<?> nVar, ReferenceQueue<? super n<?>> referenceQueue, boolean z) {
            super(nVar, referenceQueue);
            AbstractC0764s<?> abstractC0764s;
            C0856j.m10759d(abstractC0732c);
            this.f3561a = abstractC0732c;
            if (!nVar.f() || !z) {
                abstractC0764s = null;
            } else {
                AbstractC0764s<?> e = nVar.e();
                C0856j.m10759d(e);
                abstractC0764s = e;
            }
            this.f3563c = abstractC0764s;
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
    void m11144a(AbstractC0732c abstractC0732c, n<?> nVar) {
        synchronized (this) {
            C0752d put = this.f3554c.put(abstractC0732c, new C0752d(abstractC0732c, nVar, this.f3555d, this.f3552a));
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
                AbstractC0751c abstractC0751c = this.f3558g;
                if (abstractC0751c != null) {
                    abstractC0751c.m11138a();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: c */
    void m11142c(C0752d c0752d) {
        AbstractC0764s<?> abstractC0764s;
        synchronized (this) {
            this.f3554c.remove(c0752d.f3561a);
            if (!c0752d.f3562b || (abstractC0764s = c0752d.f3563c) == null) {
                return;
            }
            this.f3556e.m11088d(c0752d.f3561a, new n<>(abstractC0764s, true, false, c0752d.f3561a, this.f3556e));
        }
    }

    /* renamed from: d */
    void m11141d(AbstractC0732c abstractC0732c) {
        synchronized (this) {
            C0752d remove = this.f3554c.remove(abstractC0732c);
            if (remove != null) {
                remove.m11137a();
            }
        }
    }

    /* renamed from: e */
    n<?> m11140e(AbstractC0732c abstractC0732c) {
        synchronized (this) {
            C0752d c0752d = this.f3554c.get(abstractC0732c);
            if (c0752d == null) {
                return null;
            }
            n<?> nVar = c0752d.get();
            if (nVar == null) {
                m11142c(c0752d);
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
