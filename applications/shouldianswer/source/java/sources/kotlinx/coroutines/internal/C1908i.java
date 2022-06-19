package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.i */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/i.class */
public class C1908i {
    volatile Object _next = this;
    volatile Object _prev = this;
    private volatile Object _removedRef = null;

    /* renamed from: c */
    static final AtomicReferenceFieldUpdater f4649c = AtomicReferenceFieldUpdater.newUpdater(C1908i.class, Object.class, "_next");

    /* renamed from: d */
    static final AtomicReferenceFieldUpdater f4650d = AtomicReferenceFieldUpdater.newUpdater(C1908i.class, Object.class, "_prev");

    /* renamed from: a */
    private static final AtomicReferenceFieldUpdater f4648a = AtomicReferenceFieldUpdater.newUpdater(C1908i.class, Object.class, "_removedRef");

    /* renamed from: kotlinx.coroutines.internal.i$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/i$a.class */
    public static abstract class AbstractC1909a extends AbstractC1898d<C1908i> {

        /* renamed from: d */
        public C1908i f4651d;

        /* renamed from: e */
        public final C1908i f4652e;

        public AbstractC1909a(C1908i c1908i) {
            C1694h.m3117b(c1908i, "newNode");
            this.f4652e = c1908i;
        }

        /* renamed from: a */
        public void mo2640a(C1908i c1908i, Object obj) {
            C1694h.m3117b(c1908i, "affected");
            boolean z = obj == null;
            C1908i c1908i2 = z ? this.f4652e : this.f4651d;
            if (c1908i2 == null || !C1908i.f4649c.compareAndSet(c1908i, this, c1908i2) || !z) {
                return;
            }
            C1908i c1908i3 = this.f4652e;
            C1908i c1908i4 = this.f4651d;
            if (c1908i4 == null) {
                C1694h.m3124a();
            }
            c1908i3.m2652b(c1908i4);
        }
    }

    /* renamed from: a */
    private final C1908i m2653a(C1908i c1908i, AbstractC1918p abstractC1918p) {
        Object obj;
        C1908i c1908i2 = null;
        while (true) {
            C1908i c1908i3 = c1908i2;
            while (true) {
                obj = c1908i._next;
                if (obj == abstractC1918p) {
                    return c1908i;
                }
                if (obj instanceof AbstractC1918p) {
                    ((AbstractC1918p) obj).mo2608c(c1908i);
                } else if (!(obj instanceof C1919q)) {
                    Object obj2 = this._prev;
                    if (obj2 instanceof C1919q) {
                        return null;
                    }
                    if (obj != this) {
                        if (obj == null) {
                            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                        }
                        c1908i3 = c1908i;
                        c1908i = (C1908i) obj;
                    } else if (obj2 == c1908i) {
                        return null;
                    } else {
                        if (f4650d.compareAndSet(this, obj2, c1908i) && !(c1908i._prev instanceof C1919q)) {
                            return null;
                        }
                    }
                } else if (c1908i3 != null) {
                    break;
                } else {
                    c1908i = C1907h.m2657a(c1908i._prev);
                }
            }
            c1908i.m2642k();
            f4649c.compareAndSet(c1908i3, c1908i, ((C1919q) obj).f4667a);
            c1908i = c1908i3;
        }
    }

    /* renamed from: b */
    public final void m2652b(C1908i c1908i) {
        Object obj;
        do {
            obj = c1908i._prev;
            if ((obj instanceof C1919q) || m2648e() != c1908i) {
                return;
            }
        } while (!f4650d.compareAndSet(c1908i, obj, this));
        if (m2648e() instanceof C1919q) {
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
            c1908i.m2653a((C1908i) obj, (AbstractC1918p) null);
        }
    }

    /* renamed from: c */
    private final void m2650c(C1908i c1908i) {
        m2644i();
        c1908i.m2653a(C1907h.m2657a(this._prev), (AbstractC1918p) null);
    }

    /* renamed from: j */
    private final C1919q m2643j() {
        C1919q c1919q = (C1919q) this._removedRef;
        if (c1919q == null) {
            c1919q = new C1919q(this);
            f4648a.lazySet(this, c1919q);
        }
        return c1919q;
    }

    /* renamed from: k */
    private final C1908i m2642k() {
        Object obj;
        C1908i c1908i;
        do {
            obj = this._prev;
            if (obj instanceof C1919q) {
                return ((C1919q) obj).f4667a;
            }
            if (obj == this) {
                c1908i = m2641l();
            } else if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            } else {
                c1908i = (C1908i) obj;
            }
        } while (!f4650d.compareAndSet(this, obj, c1908i.m2643j()));
        return (C1908i) obj;
    }

    /* renamed from: l */
    private final C1908i m2641l() {
        C1908i c1908i = this;
        C1908i c1908i2 = c1908i;
        while (!(c1908i2 instanceof C1906g)) {
            c1908i2 = c1908i2.m2647f();
            if (!(c1908i2 != c1908i)) {
                throw new IllegalStateException("Cannot loop to this while looking for list head".toString());
            }
        }
        return c1908i2;
    }

    /* renamed from: a */
    public final int m2654a(C1908i c1908i, C1908i c1908i2, AbstractC1909a abstractC1909a) {
        C1694h.m3117b(c1908i, "node");
        C1694h.m3117b(c1908i2, "next");
        C1694h.m3117b(abstractC1909a, "condAdd");
        f4650d.lazySet(c1908i, this);
        f4649c.lazySet(c1908i, c1908i2);
        abstractC1909a.f4651d = c1908i2;
        if (!f4649c.compareAndSet(this, c1908i2, abstractC1909a)) {
            return 0;
        }
        return abstractC1909a.mo2608c(this) == null ? 1 : 2;
    }

    /* renamed from: a */
    public final boolean m2656a(C1908i c1908i) {
        C1694h.m3117b(c1908i, "node");
        f4650d.lazySet(c1908i, this);
        f4649c.lazySet(c1908i, this);
        while (m2648e() == this) {
            if (f4649c.compareAndSet(this, this, c1908i)) {
                c1908i.m2652b(this);
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public boolean mo2651c() {
        Object m2648e;
        C1908i c1908i;
        do {
            m2648e = m2648e();
            if ((m2648e instanceof C1919q) || m2648e == this) {
                return false;
            }
            if (m2648e == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
            c1908i = (C1908i) m2648e;
        } while (!f4649c.compareAndSet(this, m2648e, c1908i.m2643j()));
        m2650c(c1908i);
        return true;
    }

    /* renamed from: d */
    public final boolean m2649d() {
        return m2648e() instanceof C1919q;
    }

    /* renamed from: e */
    public final Object m2648e() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof AbstractC1918p)) {
                return obj;
            }
            ((AbstractC1918p) obj).mo2608c(this);
        }
    }

    /* renamed from: f */
    public final C1908i m2647f() {
        return C1907h.m2657a(m2648e());
    }

    /* renamed from: g */
    public final Object m2646g() {
        while (true) {
            Object obj = this._prev;
            if (obj instanceof C1919q) {
                return obj;
            }
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
            C1908i c1908i = (C1908i) obj;
            if (c1908i.m2648e() == this) {
                return obj;
            }
            m2653a(c1908i, (AbstractC1918p) null);
        }
    }

    /* renamed from: h */
    public final C1908i m2645h() {
        return C1907h.m2657a(m2646g());
    }

    /* renamed from: i */
    public final void m2644i() {
        Object m2648e;
        C1908i c1908i = null;
        C1908i m2642k = m2642k();
        Object obj = this._next;
        if (obj != null) {
            C1908i c1908i2 = ((C1919q) obj).f4667a;
            while (true) {
                C1908i c1908i3 = c1908i;
                while (true) {
                    Object m2648e2 = c1908i2.m2648e();
                    if (m2648e2 instanceof C1919q) {
                        c1908i2.m2642k();
                        c1908i2 = ((C1919q) m2648e2).f4667a;
                    } else {
                        m2648e = m2642k.m2648e();
                        if (m2648e instanceof C1919q) {
                            if (c1908i3 != null) {
                                break;
                            }
                            m2642k = C1907h.m2657a(m2642k._prev);
                        } else if (m2648e != this) {
                            if (m2648e == null) {
                                throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                            }
                            C1908i c1908i4 = (C1908i) m2648e;
                            if (c1908i4 == c1908i2) {
                                return;
                            }
                            c1908i3 = m2642k;
                            m2642k = c1908i4;
                        } else if (f4649c.compareAndSet(m2642k, this, c1908i2)) {
                            return;
                        }
                    }
                }
                m2642k.m2642k();
                f4649c.compareAndSet(c1908i3, m2642k, ((C1919q) m2648e).f4667a);
                m2642k = c1908i3;
            }
        } else {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Removed");
        }
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
