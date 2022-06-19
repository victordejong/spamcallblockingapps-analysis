package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.AbstractC1931y;
/* renamed from: kotlinx.coroutines.internal.x */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/x.class */
public final class C1930x<T extends AbstractC1931y & Comparable<? super T>> {

    /* renamed from: a */
    private T[] f4680a;
    public volatile int size;

    /* renamed from: a */
    private final void m2573a(int i, int i2) {
        T[] tArr = this.f4680a;
        if (tArr == null) {
            C1694h.m3124a();
        }
        T t = tArr[i2];
        if (t == null) {
            C1694h.m3124a();
        }
        T t2 = tArr[i];
        if (t2 == null) {
            C1694h.m3124a();
        }
        tArr[i] = t;
        tArr[i2] = t2;
        t.mo2564a(i);
        t2.mo2564a(i2);
    }

    /* renamed from: b */
    private final void m2570b(int i) {
        while (i > 0) {
            T[] tArr = this.f4680a;
            if (tArr == null) {
                C1694h.m3124a();
            }
            int i2 = (i - 1) / 2;
            T t = tArr[i2];
            if (t == null) {
                C1694h.m3124a();
            }
            Comparable comparable = (Comparable) t;
            T t2 = tArr[i];
            if (t2 == null) {
                C1694h.m3124a();
            }
            if (comparable.compareTo(t2) <= 0) {
                return;
            }
            m2573a(i, i2);
            i = i2;
        }
    }

    /* renamed from: c */
    private final void m2567c(int i) {
        while (true) {
            int i2 = i;
            int i3 = (i2 * 2) + 1;
            if (i3 >= this.size) {
                return;
            }
            T[] tArr = this.f4680a;
            if (tArr == null) {
                C1694h.m3124a();
            }
            int i4 = i3 + 1;
            i = i3;
            if (i4 < this.size) {
                T t = tArr[i4];
                if (t == null) {
                    C1694h.m3124a();
                }
                Comparable comparable = (Comparable) t;
                T t2 = tArr[i3];
                if (t2 == null) {
                    C1694h.m3124a();
                }
                i = i3;
                if (comparable.compareTo(t2) < 0) {
                    i = i4;
                }
            }
            T t3 = tArr[i2];
            if (t3 == null) {
                C1694h.m3124a();
            }
            Comparable comparable2 = (Comparable) t3;
            T t4 = tArr[i];
            if (t4 == null) {
                C1694h.m3124a();
            }
            if (comparable2.compareTo(t4) <= 0) {
                return;
            }
            m2573a(i2, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [kotlinx.coroutines.internal.y[]] */
    /* JADX WARN: Type inference failed for: r0v14, types: [kotlinx.coroutines.internal.y[]] */
    /* renamed from: e */
    private final T[] m2565e() {
        T[] tArr;
        T[] tArr2 = this.f4680a;
        if (tArr2 == null) {
            tArr = new AbstractC1931y[4];
            this.f4680a = tArr;
        } else {
            tArr = tArr2;
            if (this.size >= tArr2.length) {
                Object[] copyOf = Arrays.copyOf(tArr2, this.size * 2);
                C1694h.m3122a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
                tArr = (AbstractC1931y[]) copyOf;
                this.f4680a = tArr;
            }
        }
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final T m2574a(int i) {
        if (this.size > 0) {
            T[] tArr = this.f4680a;
            if (tArr == null) {
                C1694h.m3124a();
            }
            this.size--;
            if (i < this.size) {
                m2573a(i, this.size);
                int i2 = (i - 1) / 2;
                if (i > 0) {
                    Object[] objArr = tArr[i];
                    if (objArr == 0) {
                        C1694h.m3124a();
                    }
                    Comparable comparable = (Comparable) objArr;
                    Object[] objArr2 = tArr[i2];
                    if (objArr2 == 0) {
                        C1694h.m3124a();
                    }
                    if (comparable.compareTo(objArr2) < 0) {
                        m2573a(i, i2);
                        m2570b(i2);
                    }
                }
                m2567c(i);
            }
            T t = tArr[this.size];
            if (t == null) {
                C1694h.m3124a();
            }
            boolean z = false;
            if (t.mo2562b() == this) {
                z = true;
            }
            if (!z) {
                throw new IllegalStateException("Check failed.".toString());
            }
            t.mo2563a(null);
            t.mo2564a(-1);
            tArr[this.size] = null;
            return t;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* renamed from: a */
    public final boolean m2575a() {
        return this.size == 0;
    }

    /* renamed from: a */
    public final boolean m2572a(T t) {
        boolean z;
        synchronized (this) {
            C1694h.m3117b(t, "node");
            z = true;
            boolean z2 = false;
            if (t.mo2562b() == null) {
                z = false;
            } else {
                int mo2561c = t.mo2561c();
                if (mo2561c >= 0) {
                    z2 = true;
                }
                if (!z2) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                m2574a(mo2561c);
            }
        }
        return z;
    }

    /* renamed from: b */
    public final T m2571b() {
        T m2566d;
        synchronized (this) {
            m2566d = m2566d();
        }
        return m2566d;
    }

    /* renamed from: b */
    public final void m2569b(T t) {
        C1694h.m3117b(t, "node");
        if (t.mo2562b() == null) {
            t.mo2563a(this);
            T[] m2565e = m2565e();
            int i = this.size;
            this.size = i + 1;
            m2565e[i] = t;
            t.mo2564a(i);
            m2570b(i);
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* renamed from: c */
    public final T m2568c() {
        T m2574a;
        synchronized (this) {
            m2574a = this.size > 0 ? m2574a(0) : null;
        }
        return m2574a;
    }

    /* renamed from: d */
    public final T m2566d() {
        T[] tArr = this.f4680a;
        return tArr != null ? tArr[0] : null;
    }
}
