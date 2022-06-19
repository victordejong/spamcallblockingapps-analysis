package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.C1593a;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1633e;
import kotlin.p075c.p077b.p078a.C1636h;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1693g;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1850bk;
import kotlinx.coroutines.internal.AbstractC1918p;
import kotlinx.coroutines.internal.C1899e;
import kotlinx.coroutines.internal.C1907h;
import kotlinx.coroutines.internal.C1908i;
import kotlinx.coroutines.internal.C1922t;
import kotlinx.coroutines.internal.C1923u;
/* renamed from: kotlinx.coroutines.bq */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bq.class */
public class C1858bq implements AbstractC1850bk, AbstractC1870by, AbstractC1941r {

    /* renamed from: a */
    private static final AtomicReferenceFieldUpdater f4597a = AtomicReferenceFieldUpdater.newUpdater(C1858bq.class, Object.class, "_state");
    private volatile Object _state;
    private volatile AbstractC1939p parentHandle;

    /* renamed from: kotlinx.coroutines.bq$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bq$a.class */
    public static final class C1859a<T> extends C1935l<T> {

        /* renamed from: a */
        private final C1858bq f4598a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1859a(AbstractC1641c<? super T> abstractC1641c, C1858bq c1858bq) {
            super(abstractC1641c, 1);
            C1694h.m3117b(abstractC1641c, "delegate");
            C1694h.m3117b(c1858bq, "job");
            this.f4598a = c1858bq;
        }

        @Override // kotlinx.coroutines.C1935l
        /* renamed from: a */
        public Throwable mo2547a(AbstractC1850bk abstractC1850bk) {
            Throwable th;
            C1694h.m3117b(abstractC1850bk, "parent");
            Object m2751p = this.f4598a.m2751p();
            return (!(m2751p instanceof C1861c) || (th = ((C1861c) m2751p).rootCause) == null) ? m2751p instanceof C1945t ? ((C1945t) m2751p).f4697a : abstractC1850bk.mo2754m() : th;
        }

        @Override // kotlinx.coroutines.C1935l
        /* renamed from: h */
        protected String mo2536h() {
            return "AwaitContinuation";
        }
    }

    /* renamed from: kotlinx.coroutines.bq$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bq$b.class */
    public static final class C1860b extends AbstractC1857bp<AbstractC1850bk> {

        /* renamed from: a */
        private final C1858bq f4599a;

        /* renamed from: e */
        private final C1861c f4600e;

        /* renamed from: f */
        private final C1940q f4601f;

        /* renamed from: g */
        private final Object f4602g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1860b(C1858bq c1858bq, C1861c c1861c, C1940q c1940q, Object obj) {
            super(c1940q.f4691a);
            C1694h.m3117b(c1858bq, "parent");
            C1694h.m3117b(c1861c, "state");
            C1694h.m3117b(c1940q, "child");
            this.f4599a = c1858bq;
            this.f4600e = c1861c;
            this.f4601f = c1940q;
            this.f4602g = obj;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(Throwable th) {
            mo2518a(th);
            return C1775o.f4450a;
        }

        @Override // kotlinx.coroutines.AbstractC1948w
        /* renamed from: a */
        public void mo2518a(Throwable th) {
            this.f4599a.m2771b(this.f4600e, this.f4601f, this.f4602g);
        }

        @Override // kotlinx.coroutines.internal.C1908i
        public String toString() {
            return "ChildCompletion[" + this.f4601f + ", " + this.f4602g + ']';
        }
    }

    /* renamed from: kotlinx.coroutines.bq$c */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bq$c.class */
    public static final class C1861c implements AbstractC1845bf {
        private volatile Object _exceptionsHolder;

        /* renamed from: a */
        private final C1867bv f4603a;
        public volatile boolean isCompleting;
        public volatile Throwable rootCause;

        public C1861c(C1867bv c1867bv, boolean z, Throwable th) {
            C1694h.m3117b(c1867bv, "list");
            this.f4603a = c1867bv;
            this.isCompleting = z;
            this.rootCause = th;
        }

        /* renamed from: e */
        private final ArrayList<Throwable> m2742e() {
            return new ArrayList<>(4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object] */
        /* renamed from: a */
        public final List<Throwable> m2746a(Throwable th) {
            ArrayList<Throwable> arrayList;
            C1923u c1923u;
            ?? r0 = this._exceptionsHolder;
            if (r0 == 0) {
                arrayList = m2742e();
            } else if (r0 instanceof Throwable) {
                arrayList = m2742e();
                arrayList.add(r0);
            } else if (!(r0 instanceof ArrayList)) {
                throw new IllegalStateException(("State is " + ((Object) r0)).toString());
            } else if (r0 == 0) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.ArrayList<kotlin.Throwable> /* = java.util.ArrayList<kotlin.Throwable> */");
            } else {
                arrayList = (ArrayList) r0;
            }
            Throwable th2 = this.rootCause;
            if (th2 != null) {
                arrayList.add(0, th2);
            }
            if (th != null && (!C1694h.m3123a(th, th2))) {
                arrayList.add(th);
            }
            c1923u = C1863br.f4607a;
            this._exceptionsHolder = c1923u;
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object] */
        /* renamed from: b */
        public final void m2745b(Throwable th) {
            C1694h.m3117b(th, "exception");
            Throwable th2 = this.rootCause;
            if (th2 == null) {
                this.rootCause = th;
            } else if (th == th2) {
            } else {
                ?? r0 = this._exceptionsHolder;
                if (r0 == 0) {
                    this._exceptionsHolder = th;
                } else if (r0 instanceof Throwable) {
                    if (th == r0) {
                        return;
                    }
                    ArrayList<Throwable> m2742e = m2742e();
                    m2742e.add(r0);
                    m2742e.add(th);
                    this._exceptionsHolder = m2742e;
                } else if (r0 instanceof ArrayList) {
                    if (r0 == 0) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.ArrayList<kotlin.Throwable> /* = java.util.ArrayList<kotlin.Throwable> */");
                    }
                    ((ArrayList) r0).add(th);
                } else {
                    throw new IllegalStateException(("State is " + ((Object) r0)).toString());
                }
            }
        }

        @Override // kotlinx.coroutines.AbstractC1845bf
        /* renamed from: b */
        public boolean mo2732b() {
            return this.rootCause == null;
        }

        /* renamed from: c */
        public final boolean m2744c() {
            C1923u c1923u;
            Object obj = this._exceptionsHolder;
            c1923u = C1863br.f4607a;
            return obj == c1923u;
        }

        /* renamed from: d */
        public final boolean m2743d() {
            return this.rootCause != null;
        }

        @Override // kotlinx.coroutines.AbstractC1845bf
        /* renamed from: m_ */
        public C1867bv mo2731m_() {
            return this.f4603a;
        }

        public String toString() {
            return "Finishing[cancelling=" + m2743d() + ", completing=" + this.isCompleting + ", rootCause=" + this.rootCause + ", exceptions=" + this._exceptionsHolder + ", list=" + mo2731m_() + ']';
        }
    }

    /* renamed from: kotlinx.coroutines.bq$d */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bq$d.class */
    public static final class C1862d extends C1908i.AbstractC1909a {

        /* renamed from: a */
        final /* synthetic */ C1908i f4604a;

        /* renamed from: b */
        final /* synthetic */ C1858bq f4605b;

        /* renamed from: c */
        final /* synthetic */ Object f4606c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1862d(C1908i c1908i, C1908i c1908i2, C1858bq c1858bq, Object obj) {
            super(c1908i2);
            this.f4604a = c1908i;
            this.f4605b = c1858bq;
            this.f4606c = obj;
        }

        /* renamed from: a */
        public Object mo2668a(C1908i c1908i) {
            C1694h.m3117b(c1908i, "affected");
            return this.f4605b.m2751p() == this.f4606c ? null : C1907h.m2658a();
        }
    }

    public C1858bq(boolean z) {
        C1815ax c1815ax;
        C1815ax c1815ax2;
        C1815ax c1815ax3;
        if (z) {
            c1815ax3 = C1863br.f4609c;
            c1815ax = c1815ax3;
        } else {
            c1815ax2 = C1863br.f4608b;
            c1815ax = c1815ax2;
        }
        this._state = c1815ax;
    }

    /* renamed from: a */
    private final int m2798a(Object obj, Object obj2, int i) {
        if (!(obj instanceof AbstractC1845bf)) {
            return 0;
        }
        if (((obj instanceof C1815ax) || (obj instanceof AbstractC1857bp)) && !(obj instanceof C1940q) && !(obj2 instanceof C1945t)) {
            return !m2789a((AbstractC1845bf) obj, obj2, i) ? 3 : 1;
        }
        AbstractC1845bf abstractC1845bf = (AbstractC1845bf) obj;
        C1867bv m2790a = m2790a(abstractC1845bf);
        if (m2790a == null) {
            return 3;
        }
        C1861c c1861c = (C1861c) (!(obj instanceof C1861c) ? null : obj);
        if (c1861c == null) {
            c1861c = new C1861c(m2790a, false, null);
        }
        synchronized (c1861c) {
            try {
                if (c1861c.isCompleting) {
                    return 0;
                }
                c1861c.isCompleting = true;
                if (c1861c != obj && !f4597a.compareAndSet(this, obj, c1861c)) {
                    return 3;
                }
                if (!(!c1861c.m2744c())) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                boolean m2743d = c1861c.m2743d();
                C1945t c1945t = (C1945t) (!(obj2 instanceof C1945t) ? null : obj2);
                if (c1945t != null) {
                    c1861c.m2745b(c1945t.f4697a);
                }
                Throwable th = c1861c.rootCause;
                if (!(!m2743d)) {
                    th = null;
                }
                C1775o c1775o = C1775o.f4450a;
                if (th != null) {
                    m2780a(m2790a, th);
                }
                C1940q m2773b = m2773b(abstractC1845bf);
                if (m2773b != null && m2782a(c1861c, m2773b, obj2)) {
                    return 2;
                }
                return m2784a(c1861c, obj2, i) ? 1 : 3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    private final Throwable m2783a(C1861c c1861c, List<? extends Throwable> list) {
        Object obj;
        if (list.isEmpty()) {
            if (!c1861c.m2743d()) {
                return null;
            }
            return m2765d();
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th == null) {
            th = list.get(0);
        }
        return th;
    }

    /* renamed from: a */
    private final CancellationException m2795a(Throwable th, String str) {
        CancellationException cancellationException = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        return cancellationException != null ? cancellationException : new JobCancellationException(str, th, this);
    }

    /* renamed from: a */
    private final AbstractC1857bp<?> m2792a(AbstractC1663b<? super Throwable, C1775o> abstractC1663b, boolean z) {
        AbstractC1853bl abstractC1853bl;
        boolean z2 = true;
        AbstractC1853bl abstractC1853bl2 = null;
        if (z) {
            if (abstractC1663b instanceof AbstractC1853bl) {
                abstractC1853bl2 = abstractC1663b;
            }
            AbstractC1853bl abstractC1853bl3 = abstractC1853bl2;
            if (abstractC1853bl3 != null) {
                if (abstractC1853bl3.f4596b != this) {
                    z2 = false;
                }
                if (!z2) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (abstractC1853bl3 != null) {
                    abstractC1853bl = abstractC1853bl3;
                }
            }
            abstractC1853bl = new C1848bi(this, abstractC1663b);
        } else {
            AbstractC1857bp<?> abstractC1857bp = (AbstractC1857bp) (!(abstractC1663b instanceof AbstractC1857bp) ? null : abstractC1663b);
            if (abstractC1857bp != null) {
                if (!(abstractC1857bp.f4596b == this && !(abstractC1857bp instanceof AbstractC1853bl))) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                if (abstractC1857bp != null) {
                    abstractC1853bl = abstractC1857bp;
                }
            }
            abstractC1853bl = new C1849bj(this, abstractC1663b);
        }
        return abstractC1853bl;
    }

    /* renamed from: a */
    private final C1867bv m2790a(AbstractC1845bf abstractC1845bf) {
        C1867bv c1867bv;
        C1867bv mo2731m_ = abstractC1845bf.mo2731m_();
        if (mo2731m_ != null) {
            c1867bv = mo2731m_;
        } else if (abstractC1845bf instanceof C1815ax) {
            c1867bv = new C1867bv();
        } else if (!(abstractC1845bf instanceof AbstractC1857bp)) {
            throw new IllegalStateException(("State should have list: " + abstractC1845bf).toString());
        } else {
            m2772b((AbstractC1857bp) abstractC1845bf);
            c1867bv = null;
        }
        return c1867bv;
    }

    /* renamed from: a */
    private final C1940q m2779a(C1908i c1908i) {
        C1908i c1908i2;
        while (true) {
            c1908i2 = c1908i;
            if (c1908i.m2649d()) {
                c1908i = c1908i.m2645h();
            }
        }
        while (true) {
            C1908i m2647f = c1908i2.m2647f();
            if (m2647f.m2649d()) {
                c1908i2 = m2647f;
            } else if (m2647f instanceof C1940q) {
                return (C1940q) m2647f;
            } else {
                c1908i2 = m2647f;
                if (m2647f instanceof C1867bv) {
                    return null;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [kotlinx.coroutines.bf] */
    /* renamed from: a */
    private final void m2791a(C1815ax c1815ax) {
        C1867bv c1867bv = new C1867bv();
        f4597a.compareAndSet(this, c1815ax, c1815ax.mo2732b() ? c1867bv : new C1844be(c1867bv));
    }

    /* renamed from: a */
    private final void m2788a(AbstractC1845bf abstractC1845bf, Object obj, int i, boolean z) {
        AbstractC1939p abstractC1939p = this.parentHandle;
        if (abstractC1939p != null) {
            abstractC1939p.mo2730a();
            this.parentHandle = C1868bw.f4612a;
        }
        C1945t c1945t = (C1945t) (!(obj instanceof C1945t) ? null : obj);
        Throwable th = null;
        if (c1945t != null) {
            th = c1945t.f4697a;
        }
        if (!m2766c(abstractC1845bf)) {
            mo2796a(th);
        }
        if (abstractC1845bf instanceof AbstractC1857bp) {
            try {
                ((AbstractC1857bp) abstractC1845bf).mo2518a(th);
            } catch (Throwable th2) {
                mo2768c((Throwable) new CompletionHandlerException("Exception in completion handler " + abstractC1845bf + " for " + this, th2));
            }
        } else {
            C1867bv mo2731m_ = abstractC1845bf.mo2731m_();
            if (mo2731m_ != null) {
                m2770b(mo2731m_, th);
            }
        }
        mo2607a(obj, i, z);
    }

    /* renamed from: a */
    private final void m2780a(C1867bv c1867bv, Throwable th) {
        mo2796a(th);
        Throwable th2 = null;
        Object e = c1867bv.m2648e();
        if (e != null) {
            C1908i c1908i = (C1908i) e;
            while (!C1694h.m3123a(c1908i, c1867bv)) {
                CompletionHandlerException completionHandlerException = th2;
                if (c1908i instanceof AbstractC1853bl) {
                    AbstractC1857bp abstractC1857bp = (AbstractC1857bp) c1908i;
                    try {
                        abstractC1857bp.mo2518a(th);
                        completionHandlerException = th2;
                    } catch (Throwable th3) {
                        if (th2 != null) {
                            C1593a.m3178a(th2, th3);
                            if (th2 != null) {
                                completionHandlerException = th2;
                            }
                        }
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + abstractC1857bp + " for " + this, th3);
                        C1775o c1775o = C1775o.f4450a;
                    }
                }
                c1908i = c1908i.m2647f();
                th2 = completionHandlerException;
            }
            if (th2 != null) {
                mo2768c(th2);
            }
            m2775b(th);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
        return r13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m2797a(java.lang.Object r8, kotlinx.coroutines.C1867bv r9, kotlinx.coroutines.AbstractC1857bp<?> r10) {
        /*
            r7 = this;
            r0 = r10
            kotlinx.coroutines.internal.i r0 = (kotlinx.coroutines.internal.C1908i) r0
            r10 = r0
            kotlinx.coroutines.bq$d r0 = new kotlinx.coroutines.bq$d
            r1 = r0
            r2 = r10
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            kotlinx.coroutines.internal.i$a r0 = (kotlinx.coroutines.internal.C1908i.AbstractC1909a) r0
            r11 = r0
        L15:
            r0 = r9
            java.lang.Object r0 = r0.m2646g()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L43
            r0 = r8
            kotlinx.coroutines.internal.i r0 = (kotlinx.coroutines.internal.C1908i) r0
            r1 = r10
            r2 = r9
            r3 = r11
            int r0 = r0.m2654a(r1, r2, r3)
            r12 = r0
            r0 = 1
            r13 = r0
            r0 = r12
            r1 = 1
            if (r0 == r1) goto L40
            r0 = r12
            r1 = 2
            if (r0 == r1) goto L3d
            goto L15
        L3d:
            r0 = 0
            r13 = r0
        L40:
            r0 = r13
            return r0
        L43:
            kotlin.TypeCastException r0 = new kotlin.TypeCastException
            r1 = r0
        */
        //  java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1858bq.m2797a(java.lang.Object, kotlinx.coroutines.bv, kotlinx.coroutines.bp):boolean");
    }

    /* renamed from: a */
    private final boolean m2794a(Throwable th, List<? extends Throwable> list) {
        boolean z = false;
        if (list.size() <= 1) {
            return false;
        }
        Set m2665a = C1899e.m2665a(list.size());
        for (Throwable th2 : list) {
            Throwable m2601a = C1922t.m2601a(th2);
            if (m2601a != th && !(m2601a instanceof CancellationException) && m2665a.add(m2601a)) {
                C1593a.m3178a(th, m2601a);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    private final boolean m2789a(AbstractC1845bf abstractC1845bf, Object obj, int i) {
        Object m2735c;
        if ((abstractC1845bf instanceof C1815ax) || (abstractC1845bf instanceof AbstractC1857bp)) {
            if (!(!(obj instanceof C1945t))) {
                throw new IllegalStateException("Check failed.".toString());
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4597a;
            m2735c = C1863br.m2735c(obj);
            if (!atomicReferenceFieldUpdater.compareAndSet(this, abstractC1845bf, m2735c)) {
                return false;
            }
            m2788a(abstractC1845bf, obj, i, false);
            return true;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* renamed from: a */
    private final boolean m2787a(AbstractC1845bf abstractC1845bf, Throwable th) {
        if (!(abstractC1845bf instanceof C1861c)) {
            if (!abstractC1845bf.mo2732b()) {
                throw new IllegalStateException("Check failed.".toString());
            }
            C1867bv m2790a = m2790a(abstractC1845bf);
            if (m2790a == null) {
                return false;
            }
            if (!f4597a.compareAndSet(this, abstractC1845bf, new C1861c(m2790a, false, th))) {
                return false;
            }
            m2780a(m2790a, th);
            return true;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
        if (r0 != r7.rootCause) goto L29;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m2784a(kotlinx.coroutines.C1858bq.C1861c r7, java.lang.Object r8, int r9) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1858bq.m2784a(kotlinx.coroutines.bq$c, java.lang.Object, int):boolean");
    }

    /* renamed from: a */
    private final boolean m2782a(C1861c c1861c, C1940q c1940q, Object obj) {
        while (AbstractC1850bk.C1851a.m2805a(c1940q.f4691a, false, false, new C1860b(this, c1861c, c1940q, obj), 1, null) == C1868bw.f4612a) {
            c1940q = m2779a((C1908i) c1940q);
            if (c1940q == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private final int m2776b(Object obj) {
        C1815ax c1815ax;
        if (!(obj instanceof C1815ax)) {
            if (!(obj instanceof C1844be)) {
                return 0;
            }
            if (!f4597a.compareAndSet(this, obj, ((C1844be) obj).mo2731m_())) {
                return -1;
            }
            mo2757h();
            return 1;
        } else if (((C1815ax) obj).mo2732b()) {
            return 0;
        } else {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4597a;
            c1815ax = C1863br.f4609c;
            if (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c1815ax)) {
                return -1;
            }
            mo2757h();
            return 1;
        }
    }

    /* renamed from: b */
    private final C1940q m2773b(AbstractC1845bf abstractC1845bf) {
        C1940q c1940q;
        C1940q c1940q2 = (C1940q) (!(abstractC1845bf instanceof C1940q) ? null : abstractC1845bf);
        if (c1940q2 != null) {
            c1940q = c1940q2;
        } else {
            C1867bv mo2731m_ = abstractC1845bf.mo2731m_();
            c1940q = null;
            if (mo2731m_ != null) {
                c1940q = m2779a((C1908i) mo2731m_);
            }
        }
        return c1940q;
    }

    /* renamed from: b */
    private final void m2772b(AbstractC1857bp<?> abstractC1857bp) {
        abstractC1857bp.m2656a((C1908i) new C1867bv());
        f4597a.compareAndSet(this, abstractC1857bp, abstractC1857bp.m2647f());
    }

    /* renamed from: b */
    public final void m2771b(C1861c c1861c, C1940q c1940q, Object obj) {
        if (m2751p() == c1861c) {
            C1940q m2779a = m2779a((C1908i) c1940q);
            if ((m2779a == null || !m2782a(c1861c, m2779a, obj)) && m2784a(c1861c, obj, 0)) {
            }
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* renamed from: b */
    private final void m2770b(C1867bv c1867bv, Throwable th) {
        Throwable th2 = null;
        Object e = c1867bv.m2648e();
        if (e != null) {
            C1908i c1908i = (C1908i) e;
            while (!C1694h.m3123a(c1908i, c1867bv)) {
                CompletionHandlerException completionHandlerException = th2;
                if (c1908i instanceof AbstractC1857bp) {
                    AbstractC1857bp abstractC1857bp = (AbstractC1857bp) c1908i;
                    try {
                        abstractC1857bp.mo2518a(th);
                        completionHandlerException = th2;
                    } catch (Throwable th3) {
                        if (th2 != null) {
                            C1593a.m3178a(th2, th3);
                            if (th2 != null) {
                                completionHandlerException = th2;
                            }
                        }
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + abstractC1857bp + " for " + this, th3);
                        C1775o c1775o = C1775o.f4450a;
                    }
                }
                c1908i = c1908i.m2647f();
                th2 = completionHandlerException;
            }
            if (th2 == null) {
                return;
            }
            mo2768c(th2);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    /* renamed from: b */
    private final boolean m2775b(Throwable th) {
        boolean z = true;
        if (th instanceof CancellationException) {
            return true;
        }
        if (!mo2720n_()) {
            return false;
        }
        AbstractC1939p abstractC1939p = this.parentHandle;
        if (abstractC1939p == null || !abstractC1939p.mo2527b(th)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private final boolean m2769c(Object obj) {
        if (!m2749r() || !m2764d(obj)) {
            return m2759f(obj);
        }
        return true;
    }

    /* renamed from: c */
    private final boolean m2766c(AbstractC1845bf abstractC1845bf) {
        return (abstractC1845bf instanceof C1861c) && ((C1861c) abstractC1845bf).m2743d();
    }

    /* renamed from: d */
    private final JobCancellationException m2765d() {
        return new JobCancellationException("Job was cancelled", null, this);
    }

    /* renamed from: d */
    private final boolean m2764d(Object obj) {
        int m2798a;
        do {
            Object m2751p = m2751p();
            if (!(m2751p instanceof AbstractC1845bf)) {
                return false;
            }
            if (((m2751p instanceof C1861c) && ((C1861c) m2751p).isCompleting) || (m2798a = m2798a(m2751p, new C1945t(m2761e(obj)), 0)) == 0) {
                return false;
            }
            if (m2798a == 1 || m2798a == 2) {
                return true;
            }
        } while (m2798a == 3);
        throw new IllegalStateException("unexpected result".toString());
    }

    /* renamed from: e */
    private final Throwable m2761e(Object obj) {
        Throwable th;
        if (obj != null ? obj instanceof Throwable : true) {
            if (obj == null) {
                obj = m2765d();
            }
            th = (Throwable) obj;
        } else if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        } else {
            th = ((AbstractC1870by) obj).mo2729s();
        }
        return th;
    }

    /* renamed from: f */
    private final boolean m2759f(Object obj) {
        Throwable th = null;
        while (true) {
            Object m2751p = m2751p();
            if (m2751p instanceof C1861c) {
                synchronized (m2751p) {
                    if (((C1861c) m2751p).m2744c()) {
                        return false;
                    }
                    boolean m2743d = ((C1861c) m2751p).m2743d();
                    if (obj != null || !m2743d) {
                        if (th == null) {
                            th = m2761e(obj);
                        }
                        ((C1861c) m2751p).m2745b(th);
                    }
                    Throwable th2 = ((C1861c) m2751p).rootCause;
                    if (!(!m2743d)) {
                        th2 = null;
                    }
                    if (th2 == null) {
                        return true;
                    }
                    m2780a(((C1861c) m2751p).mo2731m_(), th2);
                    return true;
                }
            } else if (!(m2751p instanceof AbstractC1845bf)) {
                return false;
            } else {
                Throwable m2761e = th != null ? th : m2761e(obj);
                AbstractC1845bf abstractC1845bf = (AbstractC1845bf) m2751p;
                if (abstractC1845bf.mo2732b()) {
                    th = m2761e;
                    if (m2787a(abstractC1845bf, m2761e)) {
                        return true;
                    }
                } else {
                    int m2798a = m2798a(m2751p, new C1945t(m2761e), 0);
                    if (m2798a == 0) {
                        throw new IllegalStateException(("Cannot happen in " + m2751p).toString());
                    } else if (m2798a == 1 || m2798a == 2) {
                        return true;
                    } else {
                        if (m2798a != 3) {
                            throw new IllegalStateException("unexpected result".toString());
                        }
                        th = m2761e;
                    }
                }
            }
        }
    }

    /* renamed from: g */
    private final Throwable m2758g(Object obj) {
        if (!(obj instanceof C1945t)) {
            obj = null;
        }
        C1945t c1945t = (C1945t) obj;
        Throwable th = null;
        if (c1945t != null) {
            th = c1945t.f4697a;
        }
        return th;
    }

    /* renamed from: h */
    private final String m2756h(Object obj) {
        String str;
        if (obj instanceof C1861c) {
            C1861c c1861c = (C1861c) obj;
            if (c1861c.m2743d()) {
                str = "Cancelling";
            } else {
                str = "Active";
                if (c1861c.isCompleting) {
                    str = "Completing";
                }
            }
        } else {
            str = obj instanceof AbstractC1845bf ? ((AbstractC1845bf) obj).mo2732b() ? "Active" : "New" : obj instanceof C1945t ? "Cancelled" : "Completed";
        }
        return str;
    }

    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: a */
    public final AbstractC1812au mo2793a(AbstractC1663b<? super Throwable, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "handler");
        return mo2777a(false, true, abstractC1663b);
    }

    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: a */
    public final AbstractC1812au mo2777a(boolean z, boolean z2, AbstractC1663b<? super Throwable, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "handler");
        AbstractC1812au abstractC1812au = (AbstractC1857bp) null;
        while (true) {
            Object m2751p = m2751p();
            if (m2751p instanceof C1815ax) {
                C1815ax c1815ax = (C1815ax) m2751p;
                if (c1815ax.mo2732b()) {
                    AbstractC1812au m2792a = abstractC1812au != null ? abstractC1812au : m2792a(abstractC1663b, z);
                    abstractC1812au = m2792a;
                    if (f4597a.compareAndSet(this, m2751p, m2792a)) {
                        return m2792a;
                    }
                } else {
                    m2791a(c1815ax);
                }
            } else if (!(m2751p instanceof AbstractC1845bf)) {
                if (z2) {
                    Object obj = m2751p;
                    if (!(m2751p instanceof C1945t)) {
                        obj = null;
                    }
                    C1945t c1945t = (C1945t) obj;
                    Throwable th = null;
                    if (c1945t != null) {
                        th = c1945t.f4697a;
                    }
                    abstractC1663b.mo138a(th);
                }
                return C1868bw.f4612a;
            } else {
                C1867bv mo2731m_ = ((AbstractC1845bf) m2751p).mo2731m_();
                if (mo2731m_ != null) {
                    Throwable th2 = null;
                    AbstractC1812au abstractC1812au2 = C1868bw.f4612a;
                    AbstractC1812au abstractC1812au3 = abstractC1812au;
                    Throwable th3 = th2;
                    AbstractC1812au abstractC1812au4 = abstractC1812au2;
                    if (z) {
                        abstractC1812au3 = abstractC1812au;
                        th3 = th2;
                        abstractC1812au4 = abstractC1812au2;
                        if (m2751p instanceof C1861c) {
                            synchronized (m2751p) {
                                th3 = ((C1861c) m2751p).rootCause;
                                if (th3 != null) {
                                    abstractC1812au3 = abstractC1812au;
                                    abstractC1812au4 = abstractC1812au2;
                                    if (abstractC1663b instanceof C1940q) {
                                        abstractC1812au3 = abstractC1812au;
                                        abstractC1812au4 = abstractC1812au2;
                                        if (((C1861c) m2751p).isCompleting) {
                                        }
                                    }
                                    C1775o c1775o = C1775o.f4450a;
                                }
                                if (abstractC1812au == null) {
                                    abstractC1812au = m2792a(abstractC1663b, z);
                                }
                                if (m2797a(m2751p, mo2731m_, abstractC1812au)) {
                                    if (th3 == null) {
                                        return abstractC1812au;
                                    }
                                    abstractC1812au4 = abstractC1812au;
                                    abstractC1812au3 = abstractC1812au;
                                    C1775o c1775o2 = C1775o.f4450a;
                                }
                            }
                        }
                    }
                    if (th3 != null) {
                        if (z2) {
                            abstractC1663b.mo138a(th3);
                        }
                        return abstractC1812au4;
                    }
                    if (abstractC1812au3 == null) {
                        abstractC1812au3 = m2792a(abstractC1663b, z);
                    }
                    abstractC1812au = abstractC1812au3;
                    if (m2797a(m2751p, mo2731m_, (AbstractC1857bp<?>) abstractC1812au3)) {
                        return abstractC1812au3;
                    }
                } else if (m2751p == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>");
                } else {
                    m2772b((AbstractC1857bp) m2751p);
                }
            }
        }
    }

    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: a */
    public final AbstractC1939p mo2778a(AbstractC1941r abstractC1941r) {
        C1694h.m3117b(abstractC1941r, "child");
        AbstractC1812au m2805a = AbstractC1850bk.C1851a.m2805a(this, true, false, new C1940q(this, abstractC1941r), 2, null);
        if (m2805a != null) {
            return (AbstractC1939p) m2805a;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
    }

    /* renamed from: a */
    public void mo2607a(Object obj, int i, boolean z) {
    }

    /* renamed from: a */
    protected void mo2796a(Throwable th) {
    }

    /* renamed from: a */
    public final void m2786a(AbstractC1850bk abstractC1850bk) {
        if (this.parentHandle == null) {
            if (abstractC1850bk == null) {
                this.parentHandle = C1868bw.f4612a;
                return;
            }
            abstractC1850bk.mo2753n();
            AbstractC1939p mo2778a = abstractC1850bk.mo2778a(this);
            this.parentHandle = mo2778a;
            if (!m2750q()) {
                return;
            }
            mo2778a.mo2730a();
            this.parentHandle = C1868bw.f4612a;
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* renamed from: a */
    public final void m2785a(AbstractC1857bp<?> abstractC1857bp) {
        Object m2751p;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C1815ax c1815ax;
        C1694h.m3117b(abstractC1857bp, "node");
        do {
            m2751p = m2751p();
            if (!(m2751p instanceof AbstractC1857bp)) {
                if (!(m2751p instanceof AbstractC1845bf) || ((AbstractC1845bf) m2751p).mo2731m_() == null) {
                    return;
                }
                abstractC1857bp.mo2651c();
                return;
            } else if (m2751p != abstractC1857bp) {
                return;
            } else {
                atomicReferenceFieldUpdater = f4597a;
                c1815ax = C1863br.f4609c;
            }
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, m2751p, c1815ax));
    }

    @Override // kotlinx.coroutines.AbstractC1941r
    /* renamed from: a */
    public final void mo2526a(AbstractC1870by abstractC1870by) {
        C1694h.m3117b(abstractC1870by, "parentJob");
        m2769c(abstractC1870by);
    }

    /* renamed from: a */
    public final boolean m2799a(Object obj, int i) {
        int m2798a;
        do {
            m2798a = m2798a(m2751p(), obj, i);
            if (m2798a == 0) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, m2758g(obj));
            } else if (m2798a == 1) {
                return true;
            } else {
                if (m2798a == 2) {
                    return false;
                }
            }
        } while (m2798a == 3);
        throw new IllegalStateException("unexpected result".toString());
    }

    /* renamed from: b */
    public final Object m2774b(AbstractC1641c<Object> abstractC1641c) {
        Object m2751p;
        boolean m2590d;
        Throwable m2592b;
        do {
            m2751p = m2751p();
            if (!(m2751p instanceof AbstractC1845bf)) {
                if (!(m2751p instanceof C1945t)) {
                    return C1863br.m2739a(m2751p);
                }
                Throwable th = ((C1945t) m2751p).f4697a;
                m2590d = C1922t.m2590d(th);
                if (m2590d) {
                    throw th;
                }
                C1693g.m3125a(0);
                if (!(abstractC1641c instanceof AbstractC1633e)) {
                    throw th;
                }
                m2592b = C1922t.m2592b(th, (AbstractC1633e) abstractC1641c);
                throw m2592b;
            }
        } while (m2776b(m2751p) < 0);
        return m2767c(abstractC1641c);
    }

    /* renamed from: c */
    final /* synthetic */ Object m2767c(AbstractC1641c<Object> abstractC1641c) {
        C1859a c1859a = new C1859a(C1622b.m3176a(abstractC1641c), this);
        C1936m.m2530a(c1859a, mo2793a((AbstractC1663b<? super Throwable, C1775o>) new C1873ca(this, c1859a)));
        Object g = c1859a.m2537g();
        if (g == C1622b.m3174a()) {
            C1636h.m3152c(abstractC1641c);
        }
        return g;
    }

    /* renamed from: c */
    public void mo2768c(Throwable th) {
        C1694h.m3117b(th, "exception");
        throw th;
    }

    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: d */
    public boolean mo2763d(Throwable th) {
        return m2769c((Object) th) && m2748t();
    }

    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: e */
    public boolean mo2762e() {
        Object m2751p = m2751p();
        return (m2751p instanceof AbstractC1845bf) && ((AbstractC1845bf) m2751p).mo2732b();
    }

    /* renamed from: e */
    public boolean m2760e(Throwable th) {
        C1694h.m3117b(th, "cause");
        return m2769c((Object) th) && m2748t();
    }

    /* renamed from: f */
    protected void mo2721f(Throwable th) {
        C1694h.m3117b(th, "exception");
    }

    @Override // kotlin.p075c.AbstractC1646f
    public <R> R fold(R r, AbstractC1674m<? super R, ? super AbstractC1646f.AbstractC1649b, ? extends R> abstractC1674m) {
        C1694h.m3117b(abstractC1674m, "operation");
        return (R) AbstractC1850bk.C1851a.m2808a(this, r, abstractC1674m);
    }

    @Override // kotlin.p075c.AbstractC1646f.AbstractC1649b, kotlin.p075c.AbstractC1646f
    public <E extends AbstractC1646f.AbstractC1649b> E get(AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return (E) AbstractC1850bk.C1851a.m2807a(this, abstractC1651c);
    }

    @Override // kotlin.p075c.AbstractC1646f.AbstractC1649b
    public final AbstractC1646f.AbstractC1651c<?> getKey() {
        return AbstractC1850bk.f4594b;
    }

    /* renamed from: h */
    public void mo2757h() {
    }

    /* renamed from: j */
    public String mo2694j() {
        return C1789ag.m2954b(this);
    }

    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: l */
    public final boolean mo2755l() {
        Object m2751p = m2751p();
        return (m2751p instanceof C1945t) || ((m2751p instanceof C1861c) && ((C1861c) m2751p).m2743d());
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0022, code lost:
        if (r7 != null) goto L16;
     */
    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.concurrent.CancellationException mo2754m() {
        /*
            r6 = this;
            r0 = r6
            java.lang.Object r0 = r0.m2751p()
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.C1858bq.C1861c
            if (r0 == 0) goto L50
            r0 = r7
            kotlinx.coroutines.bq$c r0 = (kotlinx.coroutines.C1858bq.C1861c) r0
            java.lang.Throwable r0 = r0.rootCause
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L28
            r0 = r6
            r1 = r7
            java.lang.String r2 = "Job is cancelling"
            java.util.concurrent.CancellationException r0 = r0.m2795a(r1, r2)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L28
            goto L83
        L28:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "Job is still new or active: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L50:
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.AbstractC1845bf
            if (r0 != 0) goto L85
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.C1945t
            if (r0 == 0) goto L70
            r0 = r6
            r1 = r7
            kotlinx.coroutines.t r1 = (kotlinx.coroutines.C1945t) r1
            java.lang.Throwable r1 = r1.f4697a
            java.lang.String r2 = "Job was cancelled"
            java.util.concurrent.CancellationException r0 = r0.m2795a(r1, r2)
            r7 = r0
            goto L83
        L70:
            kotlinx.coroutines.JobCancellationException r0 = new kotlinx.coroutines.JobCancellationException
            r1 = r0
            java.lang.String r2 = "Job has completed normally"
            r3 = 0
            r4 = r6
            kotlinx.coroutines.bk r4 = (kotlinx.coroutines.AbstractC1850bk) r4
            r1.<init>(r2, r3, r4)
            java.util.concurrent.CancellationException r0 = (java.util.concurrent.CancellationException) r0
            r7 = r0
        L83:
            r0 = r7
            return r0
        L85:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "Job is still new or active: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1858bq.mo2754m():java.util.concurrent.CancellationException");
    }

    @Override // kotlin.p075c.AbstractC1646f
    public AbstractC1646f minusKey(AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return AbstractC1850bk.C1851a.m2804b(this, abstractC1651c);
    }

    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: n */
    public final boolean mo2753n() {
        int m2776b;
        do {
            m2776b = m2776b(m2751p());
            if (m2776b == 0) {
                return false;
            }
        } while (m2776b != 1);
        return true;
    }

    /* renamed from: n_ */
    protected boolean mo2720n_() {
        return false;
    }

    @Override // kotlinx.coroutines.AbstractC1850bk
    /* renamed from: o */
    public void mo2752o() {
        mo2763d((Throwable) null);
    }

    /* renamed from: p */
    public final Object m2751p() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof AbstractC1918p)) {
                return obj;
            }
            ((AbstractC1918p) obj).mo2608c(this);
        }
    }

    @Override // kotlin.p075c.AbstractC1646f
    public AbstractC1646f plus(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        return AbstractC1850bk.C1851a.m2806a(this, abstractC1646f);
    }

    /* renamed from: q */
    public final boolean m2750q() {
        return !(m2751p() instanceof AbstractC1845bf);
    }

    /* renamed from: r */
    public boolean m2749r() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0045, code lost:
        if ((r8 instanceof java.util.concurrent.CancellationException) == false) goto L17;
     */
    @Override // kotlinx.coroutines.AbstractC1870by
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Throwable mo2729s() {
        /*
            r6 = this;
            r0 = r6
            java.lang.Object r0 = r0.m2751p()
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.C1858bq.C1861c
            if (r0 == 0) goto L17
            r0 = r7
            kotlinx.coroutines.bq$c r0 = (kotlinx.coroutines.C1858bq.C1861c) r0
            java.lang.Throwable r0 = r0.rootCause
            r8 = r0
            goto L32
        L17:
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.AbstractC1845bf
            if (r0 != 0) goto L78
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.C1945t
            if (r0 == 0) goto L30
            r0 = r7
            kotlinx.coroutines.t r0 = (kotlinx.coroutines.C1945t) r0
            java.lang.Throwable r0 = r0.f4697a
            r8 = r0
            goto L32
        L30:
            r0 = 0
            r8 = r0
        L32:
            r0 = r8
            if (r0 == 0) goto L48
            r0 = r8
            r9 = r0
            r0 = r6
            boolean r0 = r0.m2748t()
            if (r0 == 0) goto L76
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof java.util.concurrent.CancellationException
            if (r0 != 0) goto L76
        L48:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Parent job is "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r6
            r2 = r7
            java.lang.String r1 = r1.m2756h(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            kotlinx.coroutines.JobCancellationException r0 = new kotlinx.coroutines.JobCancellationException
            r1 = r0
            r2 = r9
            java.lang.String r2 = r2.toString()
            r3 = r8
            r4 = r6
            kotlinx.coroutines.bk r4 = (kotlinx.coroutines.AbstractC1850bk) r4
            r1.<init>(r2, r3, r4)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r9 = r0
        L76:
            r0 = r9
            return r0
        L78:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Cannot be cancelling child in this state: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1858bq.mo2729s():java.lang.Throwable");
    }

    /* renamed from: t */
    protected boolean m2748t() {
        return true;
    }

    public String toString() {
        return m2747u() + '@' + C1789ag.m2956a(this);
    }

    /* renamed from: u */
    public final String m2747u() {
        return mo2694j() + '{' + m2756h(m2751p()) + '}';
    }
}
