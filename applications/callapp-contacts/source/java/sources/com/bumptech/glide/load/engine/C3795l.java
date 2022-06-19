package com.bumptech.glide.load.engine;

import androidx.core.p036e.C0829c;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.C3804p;
import com.bumptech.glide.load.engine.RunnableC3771h;
import com.bumptech.glide.load.engine.p121c.ExecutorServiceC3756a;
import com.bumptech.glide.p112e.AbstractC3606i;
import com.bumptech.glide.p116g.C3635e;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.p117a.AbstractC3629b;
import com.bumptech.glide.p116g.p117a.C3621a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.bumptech.glide.load.engine.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l.class */
public final class C3795l<R> implements C3621a.AbstractC3627c, RunnableC3771h.AbstractC3773a<R> {

    /* renamed from: g */
    private static final C3798c f14086g = new C3798c();

    /* renamed from: a */
    final C3800e f14087a;

    /* renamed from: b */
    boolean f14088b;

    /* renamed from: c */
    EnumC3658a f14089c;

    /* renamed from: d */
    GlideException f14090d;

    /* renamed from: e */
    C3804p<?> f14091e;

    /* renamed from: f */
    boolean f14092f;

    /* renamed from: h */
    private final AbstractC3629b f14093h;

    /* renamed from: i */
    private final C3804p.AbstractC3805a f14094i;

    /* renamed from: j */
    private final C0829c.AbstractC0830a<C3795l<?>> f14095j;

    /* renamed from: k */
    private final C3798c f14096k;

    /* renamed from: l */
    private final AbstractC3801m f14097l;

    /* renamed from: m */
    private final ExecutorServiceC3756a f14098m;

    /* renamed from: n */
    private final ExecutorServiceC3756a f14099n;

    /* renamed from: o */
    private final ExecutorServiceC3756a f14100o;

    /* renamed from: p */
    private final ExecutorServiceC3756a f14101p;

    /* renamed from: q */
    private final AtomicInteger f14102q;

    /* renamed from: r */
    private AbstractC3818f f14103r;

    /* renamed from: s */
    private boolean f14104s;

    /* renamed from: t */
    private boolean f14105t;

    /* renamed from: u */
    private boolean f14106u;

    /* renamed from: v */
    private AbstractC3811u<?> f14107v;

    /* renamed from: w */
    private boolean f14108w;

    /* renamed from: x */
    private boolean f14109x;

    /* renamed from: y */
    private RunnableC3771h<R> f14110y;

    /* renamed from: z */
    private volatile boolean f14111z;

    /* renamed from: com.bumptech.glide.load.engine.l$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$a.class */
    public final class RunnableC3796a implements Runnable {

        /* renamed from: b */
        private final AbstractC3606i f14113b;

        RunnableC3796a(AbstractC3606i abstractC3606i) {
            C3795l.this = r4;
            this.f14113b = abstractC3606i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f14113b.mo37644h()) {
                synchronized (C3795l.this) {
                    if (C3795l.this.f14087a.m37350a(this.f14113b)) {
                        C3795l c3795l = C3795l.this;
                        this.f14113b.mo37649a(c3795l.f14090d);
                    }
                    C3795l.this.m37363a();
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.l$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$b.class */
    public final class RunnableC3797b implements Runnable {

        /* renamed from: b */
        private final AbstractC3606i f14115b;

        RunnableC3797b(AbstractC3606i abstractC3606i) {
            C3795l.this = r4;
            this.f14115b = abstractC3606i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f14115b.mo37644h()) {
                synchronized (C3795l.this) {
                    if (C3795l.this.f14087a.m37350a(this.f14115b)) {
                        C3795l.this.f14091e.m37344e();
                        C3795l c3795l = C3795l.this;
                        this.f14115b.mo37647a(c3795l.f14091e, c3795l.f14089c);
                        C3795l.this.m37361a(this.f14115b);
                    }
                    C3795l.this.m37363a();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.l$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$c.class */
    public static final class C3798c {
        C3798c() {
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.l$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$d.class */
    public static final class C3799d {

        /* renamed from: a */
        final AbstractC3606i f14116a;

        /* renamed from: b */
        final Executor f14117b;

        C3799d(AbstractC3606i abstractC3606i, Executor executor) {
            this.f14116a = abstractC3606i;
            this.f14117b = executor;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof C3799d) {
                return this.f14116a.equals(((C3799d) obj).f14116a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f14116a.hashCode();
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.l$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$e.class */
    public static final class C3800e implements Iterable<C3799d> {

        /* renamed from: a */
        final List<C3799d> f14118a;

        C3800e() {
            this(new ArrayList(2));
        }

        C3800e(List<C3799d> list) {
            this.f14118a = list;
        }

        /* renamed from: b */
        static C3799d m37348b(AbstractC3606i abstractC3606i) {
            return new C3799d(abstractC3606i, C3635e.m37594b());
        }

        /* renamed from: a */
        final boolean m37351a() {
            return this.f14118a.isEmpty();
        }

        /* renamed from: a */
        final boolean m37350a(AbstractC3606i abstractC3606i) {
            return this.f14118a.contains(m37348b(abstractC3606i));
        }

        /* renamed from: b */
        final int m37349b() {
            return this.f14118a.size();
        }

        /* renamed from: c */
        final C3800e m37347c() {
            return new C3800e(new ArrayList(this.f14118a));
        }

        @Override // java.lang.Iterable
        public final Iterator<C3799d> iterator() {
            return this.f14118a.iterator();
        }
    }

    public C3795l(ExecutorServiceC3756a executorServiceC3756a, ExecutorServiceC3756a executorServiceC3756a2, ExecutorServiceC3756a executorServiceC3756a3, ExecutorServiceC3756a executorServiceC3756a4, AbstractC3801m abstractC3801m, C3804p.AbstractC3805a abstractC3805a, C0829c.AbstractC0830a<C3795l<?>> abstractC0830a) {
        this(executorServiceC3756a, executorServiceC3756a2, executorServiceC3756a3, executorServiceC3756a4, abstractC3801m, abstractC3805a, abstractC0830a, f14086g);
    }

    C3795l(ExecutorServiceC3756a executorServiceC3756a, ExecutorServiceC3756a executorServiceC3756a2, ExecutorServiceC3756a executorServiceC3756a3, ExecutorServiceC3756a executorServiceC3756a4, AbstractC3801m abstractC3801m, C3804p.AbstractC3805a abstractC3805a, C0829c.AbstractC0830a<C3795l<?>> abstractC0830a, C3798c c3798c) {
        this.f14087a = new C3800e();
        this.f14093h = new AbstractC3629b.C3631a();
        this.f14102q = new AtomicInteger();
        this.f14098m = executorServiceC3756a;
        this.f14099n = executorServiceC3756a2;
        this.f14100o = executorServiceC3756a3;
        this.f14101p = executorServiceC3756a4;
        this.f14097l = abstractC3801m;
        this.f14094i = abstractC3805a;
        this.f14095j = abstractC0830a;
        this.f14096k = c3798c;
    }

    /* renamed from: a */
    private void m37362a(int i) {
        C3804p<?> c3804p;
        synchronized (this) {
            C3643j.m37585a(m37353d(), "Not yet complete!");
            if (this.f14102q.getAndAdd(i) == 0 && (c3804p = this.f14091e) != null) {
                c3804p.m37344e();
            }
        }
    }

    /* renamed from: c */
    private ExecutorServiceC3756a m37354c() {
        return this.f14105t ? this.f14100o : this.f14106u ? this.f14101p : this.f14099n;
    }

    /* renamed from: d */
    private boolean m37353d() {
        return this.f14109x || this.f14108w || this.f14111z;
    }

    /* renamed from: e */
    private void m37352e() {
        synchronized (this) {
            if (this.f14103r == null) {
                throw new IllegalArgumentException();
            }
            this.f14087a.f14118a.clear();
            this.f14103r = null;
            this.f14091e = null;
            this.f14107v = null;
            this.f14109x = false;
            this.f14111z = false;
            this.f14108w = false;
            this.f14092f = false;
            RunnableC3771h<R> runnableC3771h = this.f14110y;
            if (runnableC3771h.f14016d.m37379a(false)) {
                runnableC3771h.m37397a();
            }
            this.f14110y = null;
            this.f14090d = null;
            this.f14089c = null;
            this.f14095j.mo37606a(this);
        }
    }

    /* renamed from: a */
    public final C3795l<R> m37356a(AbstractC3818f abstractC3818f, boolean z, boolean z2, boolean z3, boolean z4) {
        synchronized (this) {
            this.f14103r = abstractC3818f;
            this.f14104s = z;
            this.f14105t = z2;
            this.f14106u = z3;
            this.f14088b = z4;
        }
        return this;
    }

    /* renamed from: a */
    final void m37363a() {
        C3804p<?> c3804p;
        synchronized (this) {
            this.f14093h.mo37604a();
            C3643j.m37585a(m37353d(), "Not yet complete!");
            int decrementAndGet = this.f14102q.decrementAndGet();
            C3643j.m37585a(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                c3804p = this.f14091e;
                m37352e();
            } else {
                c3804p = null;
            }
        }
        if (c3804p != null) {
            c3804p.m37343f();
        }
    }

    /* renamed from: a */
    public final void m37361a(AbstractC3606i abstractC3606i) {
        synchronized (this) {
            this.f14093h.mo37604a();
            this.f14087a.f14118a.remove(C3800e.m37348b(abstractC3606i));
            if (this.f14087a.m37351a()) {
                if (!m37353d()) {
                    this.f14111z = true;
                    RunnableC3771h<R> runnableC3771h = this.f14110y;
                    runnableC3771h.f14032t = true;
                    AbstractC3768f abstractC3768f = runnableC3771h.f14031s;
                    if (abstractC3768f != null) {
                        abstractC3768f.mo37327b();
                    }
                    this.f14097l.mo37346a(this, this.f14103r);
                }
                boolean z = true;
                if (!this.f14108w) {
                    z = this.f14109x;
                }
                if (z && this.f14102q.get() == 0) {
                    m37352e();
                }
            }
        }
    }

    /* renamed from: a */
    public final void m37360a(AbstractC3606i abstractC3606i, Executor executor) {
        synchronized (this) {
            this.f14093h.mo37604a();
            this.f14087a.f14118a.add(new C3799d(abstractC3606i, executor));
            boolean z = true;
            if (this.f14108w) {
                m37362a(1);
                executor.execute(new RunnableC3797b(abstractC3606i));
            } else if (this.f14109x) {
                m37362a(1);
                executor.execute(new RunnableC3796a(abstractC3606i));
            } else {
                if (this.f14111z) {
                    z = false;
                }
                C3643j.m37585a(z, "Cannot add callbacks to a cancelled EngineJob");
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.RunnableC3771h.AbstractC3773a
    /* renamed from: a */
    public final void mo37359a(GlideException glideException) {
        synchronized (this) {
            this.f14090d = glideException;
        }
        synchronized (this) {
            this.f14093h.mo37604a();
            if (this.f14111z) {
                m37352e();
            } else if (this.f14087a.m37351a()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            } else {
                if (this.f14109x) {
                    throw new IllegalStateException("Already failed once");
                }
                this.f14109x = true;
                AbstractC3818f abstractC3818f = this.f14103r;
                C3800e m37347c = this.f14087a.m37347c();
                m37362a(m37347c.m37349b() + 1);
                this.f14097l.mo37345a(this, abstractC3818f, null);
                Iterator<C3799d> it2 = m37347c.iterator();
                while (it2.hasNext()) {
                    C3799d next = it2.next();
                    next.f14117b.execute(new RunnableC3796a(next.f14116a));
                }
                m37363a();
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.RunnableC3771h.AbstractC3773a
    /* renamed from: a */
    public final void mo37358a(RunnableC3771h<?> runnableC3771h) {
        m37354c().execute(runnableC3771h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.RunnableC3771h.AbstractC3773a
    /* renamed from: a */
    public final void mo37357a(AbstractC3811u<R> abstractC3811u, EnumC3658a enumC3658a, boolean z) {
        synchronized (this) {
            this.f14107v = abstractC3811u;
            this.f14089c = enumC3658a;
            this.f14092f = z;
        }
        synchronized (this) {
            this.f14093h.mo37604a();
            if (this.f14111z) {
                this.f14107v.mo37211d();
                m37352e();
            } else if (this.f14087a.m37351a()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            } else {
                if (this.f14108w) {
                    throw new IllegalStateException("Already have resource");
                }
                this.f14091e = new C3804p<>(this.f14107v, this.f14104s, true, this.f14103r, this.f14094i);
                this.f14108w = true;
                C3800e m37347c = this.f14087a.m37347c();
                m37362a(m37347c.m37349b() + 1);
                this.f14097l.mo37345a(this, this.f14103r, this.f14091e);
                Iterator<C3799d> it2 = m37347c.iterator();
                while (it2.hasNext()) {
                    C3799d next = it2.next();
                    next.f14117b.execute(new RunnableC3797b(next.f14116a));
                }
                m37363a();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[Catch: all -> 0x0040, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0016, B:13:0x002b, B:14:0x0033, B:16:0x0039), top: B:23:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033 A[Catch: all -> 0x0040, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0016, B:13:0x002b, B:14:0x0033, B:16:0x0039), top: B:23:0x0002 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37355b(com.bumptech.glide.load.engine.RunnableC3771h<R> r4) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            r1 = r4
            r0.f14110y = r1     // Catch: java.lang.Throwable -> L40
            r0 = r4
            com.bumptech.glide.load.engine.h$g r1 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.INITIALIZE     // Catch: java.lang.Throwable -> L40
            com.bumptech.glide.load.engine.h$g r0 = r0.m37395a(r1)     // Catch: java.lang.Throwable -> L40
            r5 = r0
            r0 = r5
            com.bumptech.glide.load.engine.h$g r1 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.RESOURCE_CACHE     // Catch: java.lang.Throwable -> L40
            if (r0 == r1) goto L25
            r0 = r5
            com.bumptech.glide.load.engine.h$g r1 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.DATA_CACHE     // Catch: java.lang.Throwable -> L40
            if (r0 != r1) goto L20
            goto L25
        L20:
            r0 = 0
            r6 = r0
            goto L27
        L25:
            r0 = 1
            r6 = r0
        L27:
            r0 = r6
            if (r0 == 0) goto L33
            r0 = r3
            com.bumptech.glide.load.engine.c.a r0 = r0.f14098m     // Catch: java.lang.Throwable -> L40
            r5 = r0
            goto L38
        L33:
            r0 = r3
            com.bumptech.glide.load.engine.c.a r0 = r0.m37354c()     // Catch: java.lang.Throwable -> L40
            r5 = r0
        L38:
            r0 = r5
            r1 = r4
            r0.execute(r1)     // Catch: java.lang.Throwable -> L40
            r0 = r3
            monitor-exit(r0)
            return
        L40:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.C3795l.m37355b(com.bumptech.glide.load.engine.h):void");
    }

    @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3627c
    /* renamed from: m_ */
    public final AbstractC3629b mo37335m_() {
        return this.f14093h;
    }
}
