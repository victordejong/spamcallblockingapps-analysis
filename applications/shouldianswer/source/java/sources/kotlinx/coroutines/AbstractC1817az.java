package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.C1775o;
import kotlin.C1776p;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1713d;
import kotlinx.coroutines.AbstractC1796am;
import kotlinx.coroutines.internal.AbstractC1931y;
import kotlinx.coroutines.internal.C1911k;
import kotlinx.coroutines.internal.C1923u;
import kotlinx.coroutines.internal.C1930x;
/* renamed from: kotlinx.coroutines.az */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/az.class */
public abstract class AbstractC1817az extends AbstractC1816ay implements AbstractC1796am {

    /* renamed from: b */
    private static final AtomicReferenceFieldUpdater f4511b = AtomicReferenceFieldUpdater.newUpdater(AbstractC1817az.class, Object.class, "_queue");

    /* renamed from: c */
    private static final AtomicReferenceFieldUpdater f4512c = AtomicReferenceFieldUpdater.newUpdater(AbstractC1817az.class, Object.class, "_delayed");
    private volatile boolean isCompleted;
    private volatile Object _queue = null;
    private volatile Object _delayed = null;

    /* renamed from: kotlinx.coroutines.az$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/az$a.class */
    public final class C1818a extends AbstractRunnableC1820c {

        /* renamed from: a */
        final /* synthetic */ AbstractC1817az f4513a;

        /* renamed from: c */
        private final AbstractC1934k<C1775o> f4514c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C1818a(AbstractC1817az abstractC1817az, long j, AbstractC1934k<? super C1775o> abstractC1934k) {
            super(j);
            C1694h.m3117b(abstractC1934k, "cont");
            this.f4513a = abstractC1817az;
            this.f4514c = abstractC1934k;
            C1936m.m2530a(this.f4514c, this);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4514c.mo2546a(this.f4513a, C1775o.f4450a);
        }
    }

    /* renamed from: kotlinx.coroutines.az$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/az$b.class */
    public static final class C1819b extends AbstractRunnableC1820c {

        /* renamed from: a */
        private final Runnable f4515a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1819b(long j, Runnable runnable) {
            super(j);
            C1694h.m3117b(runnable, "block");
            this.f4515a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4515a.run();
        }

        @Override // kotlinx.coroutines.AbstractC1817az.AbstractRunnableC1820c
        public String toString() {
            return super.toString() + this.f4515a.toString();
        }
    }

    /* renamed from: kotlinx.coroutines.az$c */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/az$c.class */
    public static abstract class AbstractRunnableC1820c implements Comparable<AbstractRunnableC1820c>, Runnable, AbstractC1812au, AbstractC1931y {

        /* renamed from: a */
        private Object f4516a;

        /* renamed from: b */
        public final long f4517b;

        /* renamed from: c */
        private int f4518c = -1;

        public AbstractRunnableC1820c(long j) {
            this.f4517b = C1884cj.m2695a().mo2703a() + C1840ba.m2814a(j);
        }

        /* renamed from: a */
        public int compareTo(AbstractRunnableC1820c abstractRunnableC1820c) {
            C1694h.m3117b(abstractRunnableC1820c, "other");
            int i = ((this.f4517b - abstractRunnableC1820c.f4517b) > 0L ? 1 : ((this.f4517b - abstractRunnableC1820c.f4517b) == 0L ? 0 : -1));
            return i > 0 ? 1 : i < 0 ? -1 : 0;
        }

        /* renamed from: a */
        public final int m2897a(C1930x<AbstractRunnableC1820c> c1930x, AbstractC1817az abstractC1817az) {
            int i;
            synchronized (this) {
                C1694h.m3117b(c1930x, "delayed");
                C1694h.m3117b(abstractC1817az, "eventLoop");
                if (this.f4516a == C1840ba.f4584a) {
                    return 2;
                }
                AbstractRunnableC1820c abstractRunnableC1820c = this;
                synchronized (c1930x) {
                    if (!abstractC1817az.isCompleted) {
                        c1930x.m2569b((C1930x<AbstractRunnableC1820c>) abstractRunnableC1820c);
                        i = 1;
                    } else {
                        i = 0;
                    }
                }
                return i ^ 1;
            }
        }

        @Override // kotlinx.coroutines.AbstractC1812au
        /* renamed from: a */
        public final void mo2730a() {
            synchronized (this) {
                Object obj = this.f4516a;
                if (obj == C1840ba.f4584a) {
                    return;
                }
                Object obj2 = obj;
                if (!(obj instanceof C1930x)) {
                    obj2 = null;
                }
                C1930x c1930x = (C1930x) obj2;
                if (c1930x != null) {
                    c1930x.m2572a((C1930x) this);
                }
                this.f4516a = C1840ba.f4584a;
            }
        }

        @Override // kotlinx.coroutines.internal.AbstractC1931y
        /* renamed from: a */
        public void mo2564a(int i) {
            this.f4518c = i;
        }

        @Override // kotlinx.coroutines.internal.AbstractC1931y
        /* renamed from: a */
        public void mo2563a(C1930x<?> c1930x) {
            if (this.f4516a != C1840ba.f4584a) {
                this.f4516a = c1930x;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        /* renamed from: a */
        public final boolean m2899a(long j) {
            return j - this.f4517b >= 0;
        }

        @Override // kotlinx.coroutines.internal.AbstractC1931y
        /* renamed from: b */
        public C1930x<?> mo2562b() {
            Object obj = this.f4516a;
            Object obj2 = obj;
            if (!(obj instanceof C1930x)) {
                obj2 = null;
            }
            return (C1930x) obj2;
        }

        @Override // kotlinx.coroutines.internal.AbstractC1931y
        /* renamed from: c */
        public int mo2561c() {
            return this.f4518c;
        }

        /* renamed from: d */
        public final void m2896d() {
            RunnableC1790ah.f4472b.m2913a(this);
        }

        public String toString() {
            return "Delayed[nanos=" + this.f4517b + ']';
        }
    }

    /* renamed from: b */
    private final boolean m2910b(Runnable runnable) {
        C1923u c1923u;
        while (true) {
            Object obj = this._queue;
            if (this.isCompleted) {
                return false;
            }
            if (obj == null) {
                if (f4511b.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (!(obj instanceof C1911k)) {
                c1923u = C1840ba.f4585b;
                if (obj == c1923u) {
                    return false;
                }
                C1911k c1911k = new C1911k(8, true);
                if (obj == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                }
                c1911k.m2630a((C1911k) ((Runnable) obj));
                c1911k.m2630a((C1911k) runnable);
                if (f4511b.compareAndSet(this, obj, c1911k)) {
                    return true;
                }
            } else if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
            } else {
                C1911k c1911k2 = (C1911k) obj;
                int m2630a = c1911k2.m2630a((C1911k) runnable);
                if (m2630a == 0) {
                    return true;
                }
                if (m2630a == 1) {
                    f4511b.compareAndSet(this, obj, c1911k2.m2621e());
                } else if (m2630a == 2) {
                    return false;
                }
            }
        }
    }

    /* renamed from: b */
    private final boolean m2909b(AbstractRunnableC1820c abstractRunnableC1820c) {
        C1930x c1930x = (C1930x) this._delayed;
        return (c1930x != null ? (AbstractRunnableC1820c) c1930x.m2571b() : null) == abstractRunnableC1820c;
    }

    /* renamed from: c */
    private final int m2907c(AbstractRunnableC1820c abstractRunnableC1820c) {
        if (this.isCompleted) {
            return 1;
        }
        C1930x<AbstractRunnableC1820c> c1930x = (C1930x) this._delayed;
        if (c1930x == null) {
            AbstractC1817az abstractC1817az = this;
            f4512c.compareAndSet(abstractC1817az, null, new C1930x());
            Object obj = abstractC1817az._delayed;
            if (obj == null) {
                C1694h.m3124a();
            }
            c1930x = (C1930x) obj;
        }
        return abstractRunnableC1820c.m2897a(c1930x, this);
    }

    /* renamed from: k */
    private final void m2903k() {
        Thread mo2689a = mo2689a();
        if (Thread.currentThread() != mo2689a) {
            C1884cj.m2695a().mo2700a(mo2689a);
        }
    }

    /* renamed from: l */
    private final Runnable m2902l() {
        C1923u c1923u;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof C1911k)) {
                c1923u = C1840ba.f4585b;
                if (obj == c1923u) {
                    return null;
                }
                if (f4511b.compareAndSet(this, obj, null)) {
                    if (obj == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                    }
                    return (Runnable) obj;
                }
            } else if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
            } else {
                C1911k c1911k = (C1911k) obj;
                Object m2622d = c1911k.m2622d();
                if (m2622d != C1911k.f4655b) {
                    return (Runnable) m2622d;
                }
                f4511b.compareAndSet(this, obj, c1911k.m2621e());
            }
        }
    }

    /* renamed from: m */
    private final void m2901m() {
        C1923u c1923u;
        C1923u c1923u2;
        boolean z = this.isCompleted;
        if (!C1776p.f4451a || z) {
            while (true) {
                Object obj = this._queue;
                if (obj == null) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4511b;
                    c1923u = C1840ba.f4585b;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, c1923u)) {
                        return;
                    }
                } else if (obj instanceof C1911k) {
                    ((C1911k) obj).m2624c();
                    return;
                } else {
                    c1923u2 = C1840ba.f4585b;
                    if (obj == c1923u2) {
                        return;
                    }
                    C1911k c1911k = new C1911k(8, true);
                    if (obj == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                    }
                    c1911k.m2630a((C1911k) ((Runnable) obj));
                    if (f4511b.compareAndSet(this, obj, c1911k)) {
                        return;
                    }
                }
            }
        } else {
            throw new AssertionError("Assertion failed");
        }
    }

    /* renamed from: n */
    private final void m2900n() {
        AbstractRunnableC1820c abstractRunnableC1820c;
        while (true) {
            C1930x c1930x = (C1930x) this._delayed;
            if (c1930x == null || (abstractRunnableC1820c = (AbstractRunnableC1820c) c1930x.m2568c()) == null) {
                return;
            }
            abstractRunnableC1820c.m2896d();
        }
    }

    /* renamed from: a */
    protected abstract Thread mo2689a();

    /* renamed from: a */
    public AbstractC1812au mo2612a(long j, Runnable runnable) {
        C1694h.m3117b(runnable, "block");
        return AbstractC1796am.C1797a.m2946a(this, j, runnable);
    }

    @Override // kotlinx.coroutines.AbstractC1796am
    /* renamed from: a */
    public void mo2611a(long j, AbstractC1934k<? super C1775o> abstractC1934k) {
        C1694h.m3117b(abstractC1934k, "continuation");
        m2913a((AbstractRunnableC1820c) new C1818a(this, j, abstractC1934k));
    }

    /* renamed from: a */
    public final void m2914a(Runnable runnable) {
        C1694h.m3117b(runnable, "task");
        if (m2910b(runnable)) {
            m2903k();
        } else {
            RunnableC1790ah.f4472b.m2914a(runnable);
        }
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public final void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(runnable, "block");
        m2914a(runnable);
    }

    /* renamed from: a */
    public final void m2913a(AbstractRunnableC1820c abstractRunnableC1820c) {
        C1694h.m3117b(abstractRunnableC1820c, "delayedTask");
        int m2907c = m2907c(abstractRunnableC1820c);
        if (m2907c == 0) {
            if (!m2909b(abstractRunnableC1820c)) {
                return;
            }
            m2903k();
        } else if (m2907c == 1) {
            RunnableC1790ah.f4472b.m2913a(abstractRunnableC1820c);
        } else if (m2907c != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    @Override // kotlinx.coroutines.AbstractC1816ay
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo2911b() {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.m2918e()
            if (r0 == 0) goto Lc
            r0 = r4
            long r0 = r0.mo2906d()
            return r0
        Lc:
            r0 = r4
            java.lang.Object r0 = r0._delayed
            kotlinx.coroutines.internal.x r0 = (kotlinx.coroutines.internal.C1930x) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L85
            r0 = r5
            boolean r0 = r0.m2575a()
            if (r0 != 0) goto L85
            kotlinx.coroutines.ci r0 = kotlinx.coroutines.C1884cj.m2695a()
            long r0 = r0.mo2703a()
            r6 = r0
        L28:
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            kotlinx.coroutines.internal.y r0 = r0.m2566d()     // Catch: java.lang.Throwable -> L7e
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L6d
            r0 = r8
            kotlinx.coroutines.az$c r0 = (kotlinx.coroutines.AbstractC1817az.AbstractRunnableC1820c) r0     // Catch: java.lang.Throwable -> L7e
            r9 = r0
            r0 = r9
            r1 = r6
            boolean r0 = r0.m2899a(r1)     // Catch: java.lang.Throwable -> L7e
            if (r0 == 0) goto L59
            r0 = r4
            r1 = r9
            java.lang.Runnable r1 = (java.lang.Runnable) r1     // Catch: java.lang.Throwable -> L7e
            boolean r0 = r0.m2910b(r1)     // Catch: java.lang.Throwable -> L7e
            r11 = r0
            goto L5c
        L59:
            r0 = 0
            r11 = r0
        L5c:
            r0 = r11
            if (r0 == 0) goto L68
            r0 = r5
            r1 = 0
            kotlinx.coroutines.internal.y r0 = r0.m2574a(r1)     // Catch: java.lang.Throwable -> L7e
            r10 = r0
        L68:
            r0 = r5
            monitor-exit(r0)
            goto L73
        L6d:
            r0 = r5
            monitor-exit(r0)
            r0 = r9
            r10 = r0
        L73:
            r0 = r10
            kotlinx.coroutines.az$c r0 = (kotlinx.coroutines.AbstractC1817az.AbstractRunnableC1820c) r0
            if (r0 == 0) goto L85
            goto L28
        L7e:
            r10 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r10
            throw r0
        L85:
            r0 = r4
            java.lang.Runnable r0 = r0.m2902l()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L97
            r0 = r10
            r0.run()
        L97:
            r0 = r4
            long r0 = r0.mo2906d()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AbstractC1817az.mo2911b():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
        if (r0 == r1) goto L12;
     */
    @Override // kotlinx.coroutines.AbstractC1816ay
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2908c() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.m2915h()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto Ld
            r0 = 0
            return r0
        Ld:
            r0 = r3
            java.lang.Object r0 = r0._delayed
            kotlinx.coroutines.internal.x r0 = (kotlinx.coroutines.internal.C1930x) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L22
            r0 = r6
            boolean r0 = r0.m2575a()
            if (r0 != 0) goto L22
            r0 = 0
            return r0
        L22:
            r0 = r3
            java.lang.Object r0 = r0._queue
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L30
        L2b:
            r0 = 1
            r5 = r0
            goto L4c
        L30:
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.C1911k
            if (r0 == 0) goto L42
            r0 = r6
            kotlinx.coroutines.internal.k r0 = (kotlinx.coroutines.internal.C1911k) r0
            boolean r0 = r0.m2634a()
            r5 = r0
            goto L4c
        L42:
            r0 = r6
            kotlinx.coroutines.internal.u r1 = kotlinx.coroutines.C1840ba.m2812c()
            if (r0 != r1) goto L4c
            goto L2b
        L4c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AbstractC1817az.mo2908c():boolean");
    }

    @Override // kotlinx.coroutines.AbstractC1816ay
    /* renamed from: d */
    public long mo2906d() {
        AbstractRunnableC1820c abstractRunnableC1820c;
        C1923u c1923u;
        if (super.mo2906d() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof C1911k)) {
                c1923u = C1840ba.f4585b;
                return obj == c1923u ? Long.MAX_VALUE : 0L;
            } else if (!((C1911k) obj).m2634a()) {
                return 0L;
            }
        }
        C1930x c1930x = (C1930x) this._delayed;
        if (c1930x != null && (abstractRunnableC1820c = (AbstractRunnableC1820c) c1930x.m2571b()) != null) {
            return C1713d.m3079a(abstractRunnableC1820c.f4517b - C1884cj.m2695a().mo2703a(), 0L);
        }
        return Long.MAX_VALUE;
    }

    @Override // kotlinx.coroutines.AbstractC1816ay
    /* renamed from: i */
    protected void mo2905i() {
        C1879cf.f4619a.m2710c();
        this.isCompleted = true;
        m2901m();
        do {
        } while (mo2911b() <= 0);
        m2900n();
    }

    /* renamed from: j */
    public final void m2904j() {
        this._queue = null;
        this._delayed = null;
    }
}
