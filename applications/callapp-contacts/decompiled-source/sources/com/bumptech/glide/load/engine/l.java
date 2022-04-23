package com.bumptech.glide.load.engine;

import androidx.core.e.c;
import com.bumptech.glide.e.i;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.a.b;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.engine.p;
import com.bumptech.glide.load.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l.class */
public final class l<R> implements a.c, h.a<R> {
    private static final c g = new c();

    /* renamed from: a  reason: collision with root package name */
    final e f7576a;

    /* renamed from: b  reason: collision with root package name */
    boolean f7577b;

    /* renamed from: c  reason: collision with root package name */
    com.bumptech.glide.load.a f7578c;

    /* renamed from: d  reason: collision with root package name */
    GlideException f7579d;
    p<?> e;
    boolean f;
    private final com.bumptech.glide.g.a.b h;
    private final p.a i;
    private final c.a<l<?>> j;
    private final c k;
    private final m l;
    private final com.bumptech.glide.load.engine.c.a m;
    private final com.bumptech.glide.load.engine.c.a n;
    private final com.bumptech.glide.load.engine.c.a o;
    private final com.bumptech.glide.load.engine.c.a p;
    private final AtomicInteger q;
    private f r;
    private boolean s;
    private boolean t;
    private boolean u;
    private u<?> v;
    private boolean w;
    private boolean x;
    private h<R> y;
    private volatile boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$a.class */
    public final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final i f7581b;

        a(i iVar) {
            this.f7581b = iVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f7581b.h()) {
                synchronized (l.this) {
                    if (l.this.f7576a.a(this.f7581b)) {
                        l lVar = l.this;
                        this.f7581b.a(lVar.f7579d);
                    }
                    l.this.a();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$b.class */
    public final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final i f7583b;

        b(i iVar) {
            this.f7583b = iVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f7583b.h()) {
                synchronized (l.this) {
                    if (l.this.f7576a.a(this.f7583b)) {
                        l.this.e.e();
                        l lVar = l.this;
                        this.f7583b.a(lVar.e, lVar.f7578c);
                        l.this.a(this.f7583b);
                    }
                    l.this.a();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$c.class */
    static final class c {
        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final i f7584a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f7585b;

        d(i iVar, Executor executor) {
            this.f7584a = iVar;
            this.f7585b = executor;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f7584a.equals(((d) obj).f7584a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f7584a.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/l$e.class */
    public static final class e implements Iterable<d> {

        /* renamed from: a  reason: collision with root package name */
        final List<d> f7586a;

        e() {
            this(new ArrayList(2));
        }

        e(List<d> list) {
            this.f7586a = list;
        }

        static d b(i iVar) {
            return new d(iVar, com.bumptech.glide.g.e.b());
        }

        final boolean a() {
            return this.f7586a.isEmpty();
        }

        final boolean a(i iVar) {
            return this.f7586a.contains(b(iVar));
        }

        final int b() {
            return this.f7586a.size();
        }

        final e c() {
            return new e(new ArrayList(this.f7586a));
        }

        @Override // java.lang.Iterable
        public final Iterator<d> iterator() {
            return this.f7586a.iterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(com.bumptech.glide.load.engine.c.a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, com.bumptech.glide.load.engine.c.a aVar4, m mVar, p.a aVar5, c.a<l<?>> aVar6) {
        this(aVar, aVar2, aVar3, aVar4, mVar, aVar5, aVar6, g);
    }

    l(com.bumptech.glide.load.engine.c.a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, com.bumptech.glide.load.engine.c.a aVar4, m mVar, p.a aVar5, c.a<l<?>> aVar6, c cVar) {
        this.f7576a = new e();
        this.h = new b.a();
        this.q = new AtomicInteger();
        this.m = aVar;
        this.n = aVar2;
        this.o = aVar3;
        this.p = aVar4;
        this.l = mVar;
        this.i = aVar5;
        this.j = aVar6;
        this.k = cVar;
    }

    private void a(int i) {
        p<?> pVar;
        synchronized (this) {
            j.a(d(), "Not yet complete!");
            if (this.q.getAndAdd(i) == 0 && (pVar = this.e) != null) {
                pVar.e();
            }
        }
    }

    private com.bumptech.glide.load.engine.c.a c() {
        return this.t ? this.o : this.u ? this.p : this.n;
    }

    private boolean d() {
        return this.x || this.w || this.z;
    }

    private void e() {
        synchronized (this) {
            if (this.r != null) {
                this.f7576a.f7586a.clear();
                this.r = null;
                this.e = null;
                this.v = null;
                this.x = false;
                this.z = false;
                this.w = false;
                this.f = false;
                h<R> hVar = this.y;
                if (hVar.f7538d.a(false)) {
                    hVar.a();
                }
                this.y = null;
                this.f7579d = null;
                this.f7578c = null;
                this.j.a(this);
            } else {
                throw new IllegalArgumentException();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final l<R> a(f fVar, boolean z, boolean z2, boolean z3, boolean z4) {
        synchronized (this) {
            this.r = fVar;
            this.s = z;
            this.t = z2;
            this.u = z3;
            this.f7577b = z4;
        }
        return this;
    }

    final void a() {
        p<?> pVar;
        synchronized (this) {
            this.h.a();
            j.a(d(), "Not yet complete!");
            int decrementAndGet = this.q.decrementAndGet();
            j.a(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                pVar = this.e;
                e();
            } else {
                pVar = null;
            }
        }
        if (pVar != null) {
            pVar.f();
        }
    }

    public final void a(i iVar) {
        synchronized (this) {
            this.h.a();
            this.f7576a.f7586a.remove(e.b(iVar));
            if (this.f7576a.a()) {
                if (!d()) {
                    this.z = true;
                    h<R> hVar = this.y;
                    hVar.t = true;
                    f fVar = hVar.s;
                    if (fVar != null) {
                        fVar.b();
                    }
                    this.l.a(this, this.r);
                }
                boolean z = true;
                if (!this.w) {
                    z = this.x;
                }
                if (z && this.q.get() == 0) {
                    e();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(i iVar, Executor executor) {
        synchronized (this) {
            this.h.a();
            this.f7576a.f7586a.add(new d(iVar, executor));
            boolean z = true;
            if (this.w) {
                a(1);
                executor.execute(new b(iVar));
            } else if (this.x) {
                a(1);
                executor.execute(new a(iVar));
            } else {
                if (this.z) {
                    z = false;
                }
                j.a(z, "Cannot add callbacks to a cancelled EngineJob");
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.h.a
    public final void a(GlideException glideException) {
        synchronized (this) {
            this.f7579d = glideException;
        }
        synchronized (this) {
            this.h.a();
            if (this.z) {
                e();
            } else if (this.f7576a.a()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            } else if (!this.x) {
                this.x = true;
                f fVar = this.r;
                e c2 = this.f7576a.c();
                a(c2.b() + 1);
                this.l.a(this, fVar, null);
                Iterator<d> it2 = c2.iterator();
                while (it2.hasNext()) {
                    d next = it2.next();
                    next.f7585b.execute(new a(next.f7584a));
                }
                a();
            } else {
                throw new IllegalStateException("Already failed once");
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.h.a
    public final void a(h<?> hVar) {
        c().execute(hVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.h.a
    public final void a(u<R> uVar, com.bumptech.glide.load.a aVar, boolean z) {
        synchronized (this) {
            this.v = uVar;
            this.f7578c = aVar;
            this.f = z;
        }
        synchronized (this) {
            this.h.a();
            if (this.z) {
                this.v.d();
                e();
            } else if (this.f7576a.a()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            } else if (!this.w) {
                this.e = new p<>(this.v, this.s, true, this.r, this.i);
                this.w = true;
                e c2 = this.f7576a.c();
                a(c2.b() + 1);
                this.l.a(this, this.r, this.e);
                Iterator<d> it2 = c2.iterator();
                while (it2.hasNext()) {
                    d next = it2.next();
                    next.f7585b.execute(new b(next.f7584a));
                }
                a();
            } else {
                throw new IllegalStateException("Already have resource");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[Catch: all -> 0x0040, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0016, B:13:0x002b, B:14:0x0033, B:16:0x0039), top: B:23:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033 A[Catch: all -> 0x0040, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0016, B:13:0x002b, B:14:0x0033, B:16:0x0039), top: B:23:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(com.bumptech.glide.load.engine.h<R> r4) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            r1 = r4
            r0.y = r1     // Catch: all -> 0x0040
            r0 = r4
            com.bumptech.glide.load.engine.h$g r1 = com.bumptech.glide.load.engine.h.g.INITIALIZE     // Catch: all -> 0x0040
            com.bumptech.glide.load.engine.h$g r0 = r0.a(r1)     // Catch: all -> 0x0040
            r5 = r0
            r0 = r5
            com.bumptech.glide.load.engine.h$g r1 = com.bumptech.glide.load.engine.h.g.RESOURCE_CACHE     // Catch: all -> 0x0040
            if (r0 == r1) goto L_0x0025
            r0 = r5
            com.bumptech.glide.load.engine.h$g r1 = com.bumptech.glide.load.engine.h.g.DATA_CACHE     // Catch: all -> 0x0040
            if (r0 != r1) goto L_0x0020
            goto L_0x0025
        L_0x0020:
            r0 = 0
            r6 = r0
            goto L_0x0027
        L_0x0025:
            r0 = 1
            r6 = r0
        L_0x0027:
            r0 = r6
            if (r0 == 0) goto L_0x0033
            r0 = r3
            com.bumptech.glide.load.engine.c.a r0 = r0.m     // Catch: all -> 0x0040
            r5 = r0
            goto L_0x0038
        L_0x0033:
            r0 = r3
            com.bumptech.glide.load.engine.c.a r0 = r0.c()     // Catch: all -> 0x0040
            r5 = r0
        L_0x0038:
            r0 = r5
            r1 = r4
            r0.execute(r1)     // Catch: all -> 0x0040
            r0 = r3
            monitor-exit(r0)
            return
        L_0x0040:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.l.b(com.bumptech.glide.load.engine.h):void");
    }

    @Override // com.bumptech.glide.g.a.a.c
    public final com.bumptech.glide.g.a.b m_() {
        return this.h;
    }
}
