package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.k */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/k.class */
public final class C1911k<E> {
    private volatile Object _next = null;
    public volatile /* synthetic */ long _state$internal = 0;

    /* renamed from: d */
    private final int f4658d;

    /* renamed from: f */
    private final AtomicReferenceArray<Object> f4659f;

    /* renamed from: g */
    private final int f4660g;

    /* renamed from: h */
    private final boolean f4661h;

    /* renamed from: c */
    public static final C1912a f4656c = new C1912a(null);

    /* renamed from: b */
    public static final C1923u f4655b = new C1923u("REMOVE_FROZEN");

    /* renamed from: e */
    private static final AtomicReferenceFieldUpdater f4657e = AtomicReferenceFieldUpdater.newUpdater(C1911k.class, Object.class, "_next");

    /* renamed from: a */
    public static final /* synthetic */ AtomicLongFieldUpdater f4654a = AtomicLongFieldUpdater.newUpdater(C1911k.class, "_state$internal");

    /* renamed from: kotlinx.coroutines.internal.k$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/k$a.class */
    public static final class C1912a {
        private C1912a() {
        }

        public /* synthetic */ C1912a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final int m2619a(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        /* renamed from: a */
        public final long m2618a(long j, int i) {
            return m2617a(j, 1073741823L) | (i << 0);
        }

        /* renamed from: a */
        public final long m2617a(long j, long j2) {
            return j & (j2 ^ (-1));
        }

        /* renamed from: b */
        public final long m2616b(long j, int i) {
            return m2617a(j, 1152921503533105152L) | (i << 30);
        }
    }

    /* renamed from: kotlinx.coroutines.internal.k$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/k$b.class */
    public static final class C1913b {

        /* renamed from: a */
        public final int f4662a;

        public C1913b(int i) {
            this.f4662a = i;
        }
    }

    public C1911k(int i, boolean z) {
        this.f4660g = i;
        this.f4661h = z;
        int i2 = this.f4660g;
        this.f4658d = i2 - 1;
        this.f4659f = new AtomicReferenceArray<>(i2);
        if (this.f4658d <= 1073741823) {
            if (!((this.f4660g & this.f4658d) == 0)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* renamed from: a */
    public final C1911k<E> m2633a(int i, int i2) {
        long j;
        int i3;
        do {
            j = this._state$internal;
            C1912a c1912a = f4656c;
            boolean z = false;
            i3 = (int) ((1073741823 & j) >> 0);
            if (i3 == i) {
                z = true;
            }
            if (!z) {
                throw new IllegalStateException("This queue can have only one consumer".toString());
            }
            if ((1152921504606846976L & j) != 0) {
                return m2621e();
            }
        } while (!f4654a.compareAndSet(this, j, f4656c.m2618a(j, i2)));
        this.f4659f.set(this.f4658d & i3, null);
        return null;
    }

    /* renamed from: a */
    private final C1911k<E> m2632a(int i, E e) {
        Object obj = this.f4659f.get(this.f4658d & i);
        if (!(obj instanceof C1913b) || ((C1913b) obj).f4662a != i) {
            return null;
        }
        this.f4659f.set(i & this.f4658d, e);
        return this;
    }

    /* renamed from: a */
    private final C1911k<E> m2631a(long j) {
        while (true) {
            C1911k<E> c1911k = (C1911k) this._next;
            if (c1911k != null) {
                return c1911k;
            }
            f4657e.compareAndSet(this, null, m2626b(j));
        }
    }

    /* renamed from: b */
    private final C1911k<E> m2626b(long j) {
        C1911k<E> c1911k = new C1911k<>(this.f4660g * 2, this.f4661h);
        C1912a c1912a = f4656c;
        int i = (int) ((1073741823 & j) >> 0);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        while (true) {
            int i3 = this.f4658d;
            if ((i & i3) == (i2 & i3)) {
                c1911k._state$internal = f4656c.m2617a(j, 1152921504606846976L);
                return c1911k;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = c1911k.f4659f;
            int i4 = c1911k.f4658d;
            C1913b c1913b = this.f4659f.get(i3 & i);
            if (c1913b == null) {
                c1913b = new C1913b(i);
            }
            atomicReferenceArray.set(i4 & i, c1913b);
            i++;
        }
    }

    /* renamed from: f */
    private final long m2620f() {
        long j;
        long j2;
        do {
            j = this._state$internal;
            if ((j & 1152921504606846976L) != 0) {
                return j;
            }
            j2 = j | 1152921504606846976L;
        } while (!f4654a.compareAndSet(this, j, j2));
        return j2;
    }

    /* renamed from: a */
    public final int m2630a(E e) {
        C1694h.m3117b(e, "element");
        while (true) {
            long j = this._state$internal;
            if ((3458764513820540928L & j) != 0) {
                return f4656c.m2619a(j);
            }
            C1912a c1912a = f4656c;
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f4658d;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            if (!this.f4661h && this.f4659f.get(i2 & i3) != null) {
                int i4 = this.f4660g;
                if (i4 < 1024 || ((i2 - i) & 1073741823) > (i4 >> 1)) {
                    return 1;
                }
            } else if (f4654a.compareAndSet(this, j, f4656c.m2616b(j, (i2 + 1) & 1073741823))) {
                this.f4659f.set(i2 & i3, e);
                C1911k<E> c1911k = this;
                while ((c1911k._state$internal & 1152921504606846976L) != 0) {
                    c1911k = c1911k.m2621e().m2632a(i2, (int) e);
                    if (c1911k == null) {
                        return 0;
                    }
                }
                return 0;
            }
        }
    }

    /* renamed from: a */
    public final boolean m2634a() {
        C1912a c1912a = f4656c;
        long j = this._state$internal;
        boolean z = false;
        if (((int) ((1073741823 & j) >> 0)) == ((int) ((j & 1152921503533105152L) >> 30))) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final int m2627b() {
        C1912a c1912a = f4656c;
        long j = this._state$internal;
        return (((int) ((j & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j) >> 0))) & 1073741823;
    }

    /* renamed from: c */
    public final boolean m2624c() {
        long j;
        do {
            j = this._state$internal;
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!f4654a.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    /* renamed from: d */
    public final Object m2622d() {
        Object obj;
        Object obj2;
        while (true) {
            long j = this._state$internal;
            obj = null;
            if ((1152921504606846976L & j) == 0) {
                C1912a c1912a = f4656c;
                int i = (int) ((1073741823 & j) >> 0);
                if ((((int) ((1152921503533105152L & j) >> 30)) & this.f4658d) == (this.f4658d & i)) {
                    break;
                }
                obj2 = this.f4659f.get(this.f4658d & i);
                if (obj2 != null) {
                    if (!(obj2 instanceof C1913b)) {
                        int i2 = (i + 1) & 1073741823;
                        if (!f4654a.compareAndSet(this, j, f4656c.m2618a(j, i2))) {
                            if (this.f4661h) {
                                C1911k<E> c1911k = this;
                                do {
                                    c1911k = c1911k.m2633a(i, i2);
                                } while (c1911k != null);
                                break;
                            }
                        } else {
                            this.f4659f.set(this.f4658d & i, null);
                            break;
                        }
                    } else {
                        break;
                    }
                } else if (this.f4661h) {
                    break;
                }
            } else {
                obj = f4655b;
                break;
            }
        }
        obj = obj2;
        return obj;
    }

    /* renamed from: e */
    public final C1911k<E> m2621e() {
        return m2631a(m2620f());
    }
}
