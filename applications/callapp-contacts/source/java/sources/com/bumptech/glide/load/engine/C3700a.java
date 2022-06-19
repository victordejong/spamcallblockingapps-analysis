package com.bumptech.glide.load.engine;

import android.os.Process;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.engine.C3804p;
import com.bumptech.glide.p116g.C3643j;
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
public final class C3700a {

    /* renamed from: a */
    final Map<AbstractC3818f, C3705b> f13861a;

    /* renamed from: b */
    final ReferenceQueue<C3804p<?>> f13862b;

    /* renamed from: c */
    C3804p.AbstractC3805a f13863c;

    /* renamed from: d */
    volatile boolean f13864d;

    /* renamed from: e */
    volatile AbstractC3704a f13865e;

    /* renamed from: f */
    private final boolean f13866f;

    /* renamed from: g */
    private final Executor f13867g;

    /* renamed from: com.bumptech.glide.load.engine.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$a.class */
    interface AbstractC3704a {
    }

    /* renamed from: com.bumptech.glide.load.engine.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$b.class */
    public static final class C3705b extends WeakReference<C3804p<?>> {

        /* renamed from: a */
        final AbstractC3818f f13871a;

        /* renamed from: b */
        final boolean f13872b;

        /* renamed from: c */
        AbstractC3811u<?> f13873c;

        C3705b(AbstractC3818f abstractC3818f, C3804p<?> c3804p, ReferenceQueue<? super C3804p<?>> referenceQueue, boolean z) {
            super(c3804p, referenceQueue);
            this.f13871a = (AbstractC3818f) C3643j.m37588a(abstractC3818f, "Argument must not be null");
            this.f13873c = (!c3804p.f14128a || !z) ? null : (AbstractC3811u) C3643j.m37588a(c3804p.f14129b, "Argument must not be null");
            this.f13872b = c3804p.f14128a;
        }

        final void a() {
            this.f13873c = null;
            clear();
        }
    }

    public C3700a(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.bumptech.glide.load.engine.a.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(final Runnable runnable) {
                return new Thread(new Runnable() { // from class: com.bumptech.glide.load.engine.a.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Process.setThreadPriority(10);
                        runnable.run();
                    }
                }, "glide-active-resources");
            }
        }));
    }

    C3700a(boolean z, Executor executor) {
        this.f13861a = new HashMap();
        this.f13862b = new ReferenceQueue<>();
        this.f13866f = z;
        this.f13867g = executor;
        executor.execute(new Runnable() { // from class: com.bumptech.glide.load.engine.a.2
            @Override // java.lang.Runnable
            public final void run() {
                C3700a c3700a = C3700a.this;
                while (!c3700a.f13864d) {
                    try {
                        c3700a.m37499a((C3705b) c3700a.f13862b.remove());
                        AbstractC3704a abstractC3704a = c3700a.f13865e;
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        });
    }

    /* renamed from: a */
    final void m37499a(C3705b c3705b) {
        synchronized (this) {
            this.f13861a.remove(c3705b.f13871a);
            if (c3705b.f13872b && c3705b.f13873c != null) {
                this.f13863c.mo37342a(c3705b.f13871a, new C3804p<>(c3705b.f13873c, true, false, c3705b.f13871a, this.f13863c));
            }
        }
    }

    /* renamed from: a */
    public final void m37498a(AbstractC3818f abstractC3818f) {
        synchronized (this) {
            C3705b remove = this.f13861a.remove(abstractC3818f);
            if (remove != null) {
                remove.a();
            }
        }
    }

    /* renamed from: a */
    public final void m37497a(AbstractC3818f abstractC3818f, C3804p<?> c3804p) {
        synchronized (this) {
            C3705b put = this.f13861a.put(abstractC3818f, new C3705b(abstractC3818f, c3804p, this.f13862b, this.f13866f));
            if (put != null) {
                put.a();
            }
        }
    }

    /* renamed from: b */
    public final C3804p<?> m37496b(AbstractC3818f abstractC3818f) {
        synchronized (this) {
            C3705b c3705b = this.f13861a.get(abstractC3818f);
            if (c3705b == null) {
                return null;
            }
            C3804p<?> c3804p = (C3804p) c3705b.get();
            if (c3804p == null) {
                m37499a(c3705b);
            }
            return c3804p;
        }
    }
}
