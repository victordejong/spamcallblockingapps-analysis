package com.bumptech.glide.load.engine;

import android.os.Process;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.engine.C4076n;
import com.bumptech.glide.p223p.C4382j;
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
public final class C4040a {

    /* renamed from: a */
    private final boolean f12740a;

    /* renamed from: b */
    private final Executor f12741b;

    /* renamed from: c */
    final Map<AbstractC3999c, C4045d> f12742c;

    /* renamed from: d */
    private final ReferenceQueue<C4076n<?>> f12743d;

    /* renamed from: e */
    private C4076n.AbstractC4077a f12744e;

    /* renamed from: f */
    private volatile boolean f12745f;

    /* renamed from: g */
    private volatile AbstractC4044c f12746g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$a.class */
    public class ThreadFactoryC4041a implements ThreadFactory {

        /* renamed from: com.bumptech.glide.load.engine.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$a$a.class */
        class RunnableC4042a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ Runnable f12747d;

            RunnableC4042a(Runnable runnable) {
                ThreadFactoryC4041a.this = r4;
                this.f12747d = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f12747d.run();
            }
        }

        ThreadFactoryC4041a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(new RunnableC4042a(runnable), "glide-active-resources");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$b.class */
    public class RunnableC4043b implements Runnable {
        RunnableC4043b() {
            C4040a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4040a.this.m23412b();
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$c.class */
    public interface AbstractC4044c {
        /* renamed from: a */
        void m23407a();
    }

    /* renamed from: com.bumptech.glide.load.engine.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$d.class */
    public static final class C4045d extends WeakReference<C4076n<?>> {

        /* renamed from: a */
        final AbstractC3999c f12750a;

        /* renamed from: b */
        final boolean f12751b;

        /* renamed from: c */
        AbstractC4083s<?> f12752c;

        C4045d(AbstractC3999c abstractC3999c, C4076n<?> c4076n, ReferenceQueue<? super C4076n<?>> referenceQueue, boolean z) {
            super(c4076n, referenceQueue);
            this.f12750a = (AbstractC3999c) C4382j.m22719d(abstractC3999c);
            this.f12752c = (!c4076n.m23329f() || !z) ? null : (AbstractC4083s) C4382j.m22719d(c4076n.m23330e());
            this.f12751b = c4076n.m23329f();
        }

        /* renamed from: a */
        void m23406a() {
            this.f12752c = null;
            clear();
        }
    }

    public C4040a(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new ThreadFactoryC4041a()));
    }

    C4040a(boolean z, Executor executor) {
        this.f12742c = new HashMap();
        this.f12743d = new ReferenceQueue<>();
        this.f12740a = z;
        this.f12741b = executor;
        executor.execute(new RunnableC4043b());
    }

    /* renamed from: a */
    public void m23413a(AbstractC3999c abstractC3999c, C4076n<?> c4076n) {
        synchronized (this) {
            C4045d put = this.f12742c.put(abstractC3999c, new C4045d(abstractC3999c, c4076n, this.f12743d, this.f12740a));
            if (put != null) {
                put.m23406a();
            }
        }
    }

    /* renamed from: b */
    void m23412b() {
        while (!this.f12745f) {
            try {
                m23411c((C4045d) this.f12743d.remove());
                AbstractC4044c abstractC4044c = this.f12746g;
                if (abstractC4044c != null) {
                    abstractC4044c.m23407a();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: c */
    void m23411c(C4045d c4045d) {
        AbstractC4083s<?> abstractC4083s;
        synchronized (this) {
            this.f12742c.remove(c4045d.f12750a);
            if (!c4045d.f12751b || (abstractC4083s = c4045d.f12752c) == null) {
                return;
            }
            this.f12744e.mo23327d(c4045d.f12750a, new C4076n<>(abstractC4083s, true, false, c4045d.f12750a, this.f12744e));
        }
    }

    /* renamed from: d */
    public void m23410d(AbstractC3999c abstractC3999c) {
        synchronized (this) {
            C4045d remove = this.f12742c.remove(abstractC3999c);
            if (remove != null) {
                remove.m23406a();
            }
        }
    }

    /* renamed from: e */
    public C4076n<?> m23409e(AbstractC3999c abstractC3999c) {
        synchronized (this) {
            C4045d c4045d = this.f12742c.get(abstractC3999c);
            if (c4045d == null) {
                return null;
            }
            C4076n<?> c4076n = c4045d.get();
            if (c4076n == null) {
                m23411c(c4045d);
            }
            return c4076n;
        }
    }

    /* renamed from: f */
    public void m23408f(C4076n.AbstractC4077a abstractC4077a) {
        synchronized (abstractC4077a) {
            synchronized (this) {
                this.f12744e = abstractC4077a;
            }
        }
    }
}
