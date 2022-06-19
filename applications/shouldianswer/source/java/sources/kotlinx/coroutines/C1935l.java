package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1633e;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1850bk;
import kotlinx.coroutines.internal.C1922t;
/* renamed from: kotlinx.coroutines.l */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/l.class */
public class C1935l<T> extends AbstractC1809ar<T> implements AbstractC1633e, AbstractC1934k<T> {

    /* renamed from: b */
    private static final AtomicIntegerFieldUpdater f4684b = AtomicIntegerFieldUpdater.newUpdater(C1935l.class, "_decision");

    /* renamed from: c */
    private static final AtomicReferenceFieldUpdater f4685c = AtomicReferenceFieldUpdater.newUpdater(C1935l.class, Object.class, "_state");
    private volatile int _decision = 0;
    private volatile Object _state = C1821b.f4519a;

    /* renamed from: a */
    private final AbstractC1646f f4686a;

    /* renamed from: d */
    private final AbstractC1641c<T> f4687d;
    private volatile AbstractC1812au parentHandle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1935l(AbstractC1641c<? super T> abstractC1641c, int i) {
        super(i);
        C1694h.m3117b(abstractC1641c, "delegate");
        this.f4687d = abstractC1641c;
        this.f4686a = this.f4687d.mo2555a();
    }

    /* renamed from: a */
    private final void m2554a(int i) {
        if (m2532m()) {
            return;
        }
        C1808aq.m2932a(this, i);
    }

    /* renamed from: a */
    private final void m2552a(Object obj, int i) {
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof AbstractC1869bx) {
                if (f4685c.compareAndSet(this, obj2, obj)) {
                    m2531n();
                    m2554a(i);
                    return;
                }
            } else if ((obj2 instanceof C1937n) && ((C1937n) obj2).m2529a()) {
                return;
            } else {
                m2540d(obj);
            }
        }
    }

    /* renamed from: a */
    private final void m2548a(AbstractC1663b<? super Throwable, C1775o> abstractC1663b, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + abstractC1663b + ", already has " + obj).toString());
    }

    /* renamed from: b */
    private final AbstractC1894i m2543b(AbstractC1663b<? super Throwable, C1775o> abstractC1663b) {
        return abstractC1663b instanceof AbstractC1894i ? (AbstractC1894i) abstractC1663b : new C1847bh(abstractC1663b);
    }

    /* renamed from: d */
    private final void m2540d(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    /* renamed from: k */
    private final void m2534k() {
        AbstractC1850bk abstractC1850bk;
        if (!m2539e() && (abstractC1850bk = (AbstractC1850bk) this.f4687d.mo2555a().get(AbstractC1850bk.f4594b)) != null) {
            abstractC1850bk.mo2753n();
            AbstractC1812au m2805a = AbstractC1850bk.C1851a.m2805a(abstractC1850bk, true, false, new C1938o(abstractC1850bk, this), 2, null);
            this.parentHandle = m2805a;
            if (!m2539e()) {
                return;
            }
            m2805a.mo2730a();
            this.parentHandle = C1868bw.f4612a;
        }
    }

    /* renamed from: l */
    private final boolean m2533l() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i != 2) {
                    throw new IllegalStateException("Already suspended".toString());
                }
                return false;
            }
        } while (!f4684b.compareAndSet(this, 0, 1));
        return true;
    }

    /* renamed from: m */
    private final boolean m2532m() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
                return false;
            }
        } while (!f4684b.compareAndSet(this, 0, 2));
        return true;
    }

    /* renamed from: n */
    private final void m2531n() {
        AbstractC1812au abstractC1812au = this.parentHandle;
        if (abstractC1812au != null) {
            abstractC1812au.mo2730a();
            this.parentHandle = C1868bw.f4612a;
        }
    }

    /* renamed from: a */
    public Throwable mo2547a(AbstractC1850bk abstractC1850bk) {
        C1694h.m3117b(abstractC1850bk, "parent");
        return abstractC1850bk.mo2754m();
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public AbstractC1646f mo2555a() {
        return this.f4686a;
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public void mo2553a(Object obj) {
        m2552a(C1946u.m2519a(obj), this.f4499e);
    }

    /* renamed from: a */
    public final void m2550a(Throwable th, int i) {
        C1694h.m3117b(th, "exception");
        m2552a(new C1945t(th), i);
    }

    @Override // kotlinx.coroutines.AbstractC1934k
    /* renamed from: a */
    public void mo2549a(AbstractC1663b<? super Throwable, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "handler");
        AbstractC1894i abstractC1894i = null;
        while (true) {
            Object obj = this._state;
            if (obj instanceof C1821b) {
                AbstractC1894i m2543b = abstractC1894i != null ? abstractC1894i : m2543b(abstractC1663b);
                abstractC1894i = m2543b;
                if (f4685c.compareAndSet(this, obj, m2543b)) {
                    return;
                }
            } else if (!(obj instanceof AbstractC1894i)) {
                if (!(obj instanceof C1937n)) {
                    return;
                }
                if (!((C1937n) obj).m2528b()) {
                    m2548a(abstractC1663b, obj);
                }
                Object obj2 = obj;
                try {
                    if (!(obj instanceof C1945t)) {
                        obj2 = null;
                    }
                    C1945t c1945t = (C1945t) obj2;
                    abstractC1663b.mo138a(c1945t != null ? c1945t.f4697a : null);
                    return;
                } catch (Throwable th) {
                    C1781aa.m2963a(mo2555a(), new CompletionHandlerException("Exception in cancellation handler for " + this, th), null, 4, null);
                    return;
                }
            } else {
                m2548a(abstractC1663b, obj);
            }
        }
    }

    @Override // kotlinx.coroutines.AbstractC1934k
    /* renamed from: a */
    public void mo2546a(AbstractC1950y abstractC1950y, T t) {
        C1694h.m3117b(abstractC1950y, "receiver$0");
        AbstractC1641c<T> abstractC1641c = this.f4687d;
        if (!(abstractC1641c instanceof C1806ao)) {
            abstractC1641c = null;
        }
        C1806ao c1806ao = (C1806ao) abstractC1641c;
        AbstractC1950y abstractC1950y2 = null;
        if (c1806ao != null) {
            abstractC1950y2 = c1806ao.f4494c;
        }
        m2552a(t, abstractC1950y2 == abstractC1950y ? 3 : this.f4499e);
    }

    /* renamed from: a */
    public boolean m2551a(Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof AbstractC1869bx)) {
                return false;
            }
            z = obj instanceof AbstractC1894i;
        } while (!f4685c.compareAndSet(this, obj, new C1937n(this, th, z)));
        if (z) {
            try {
                ((AbstractC1894i) obj).mo2556a(th);
            } catch (Throwable th2) {
                AbstractC1646f mo2555a = mo2555a();
                C1781aa.m2963a(mo2555a, new CompletionHandlerException("Exception in cancellation handler for " + this, th2), null, 4, null);
            }
        }
        m2531n();
        m2554a(0);
        return true;
    }

    /* renamed from: b */
    public final Object m2545b() {
        return this._state;
    }

    @Override // kotlinx.coroutines.AbstractC1809ar
    /* renamed from: b */
    public <T> T mo2544b(Object obj) {
        Object obj2 = obj;
        if (obj instanceof C1947v) {
            obj2 = ((C1947v) obj).f4698a;
        }
        return (T) obj2;
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: c */
    public AbstractC1633e mo2542c() {
        AbstractC1641c<T> abstractC1641c = this.f4687d;
        AbstractC1641c<T> abstractC1641c2 = abstractC1641c;
        if (!(abstractC1641c instanceof AbstractC1633e)) {
            abstractC1641c2 = null;
        }
        return (AbstractC1633e) abstractC1641c2;
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: d */
    public StackTraceElement mo2541d() {
        return null;
    }

    /* renamed from: e */
    public boolean m2539e() {
        return !(m2545b() instanceof AbstractC1869bx);
    }

    @Override // kotlinx.coroutines.AbstractC1809ar
    /* renamed from: f */
    public Object mo2538f() {
        return m2545b();
    }

    /* renamed from: g */
    public final Object m2537g() {
        m2534k();
        if (m2533l()) {
            return C1622b.m3174a();
        }
        Object m2545b = m2545b();
        if (m2545b instanceof C1945t) {
            throw C1922t.m2598a(((C1945t) m2545b).f4697a, (AbstractC1641c<?>) this);
        }
        return mo2544b(m2545b);
    }

    /* renamed from: h */
    protected String mo2536h() {
        return "CancellableContinuation";
    }

    @Override // kotlinx.coroutines.AbstractC1809ar
    /* renamed from: i */
    public final AbstractC1641c<T> mo2535i() {
        return this.f4687d;
    }

    public String toString() {
        return mo2536h() + '(' + C1789ag.m2955a((AbstractC1641c<?>) this.f4687d) + "){" + m2545b() + "}@" + C1789ag.m2956a((Object) this);
    }
}
