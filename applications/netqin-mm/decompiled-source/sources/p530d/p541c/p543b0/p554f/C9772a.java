package p530d.p541c.p543b0.p554f;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p557i.C9807i;
/* renamed from: d.c.b0.f.a */
/* loaded from: classes2-dex2jar.jar:d/c/b0/f/a.class */
public final class C9772a<T> implements AbstractC9660i<T> {

    /* renamed from: i */
    public static final int f36914i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: j */
    public static final Object f36915j = new Object();

    /* renamed from: b */
    public int f36917b;

    /* renamed from: c */
    public long f36918c;

    /* renamed from: d */
    public final int f36919d;

    /* renamed from: e */
    public AtomicReferenceArray<Object> f36920e;

    /* renamed from: f */
    public final int f36921f;

    /* renamed from: g */
    public AtomicReferenceArray<Object> f36922g;

    /* renamed from: a */
    public final AtomicLong f36916a = new AtomicLong();

    /* renamed from: h */
    public final AtomicLong f36923h = new AtomicLong();

    public C9772a(int i) {
        int a = C9807i.m1987a(Math.max(8, i));
        int i2 = a - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(a + 1);
        this.f36920e = atomicReferenceArray;
        this.f36919d = i2;
        m2068a(a);
        this.f36922g = atomicReferenceArray;
        this.f36921f = i2;
        this.f36918c = i2 - 1;
        m2056b(0L);
    }

    /* renamed from: a */
    public static int m2066a(long j, int i) {
        int i2 = ((int) j) & i;
        m2057b(i2);
        return i2;
    }

    /* renamed from: a */
    public static void m2063a(AtomicReferenceArray<Object> atomicReferenceArray, int i, Object obj) {
        atomicReferenceArray.lazySet(i, obj);
    }

    /* renamed from: b */
    public static int m2057b(int i) {
        return i;
    }

    /* renamed from: b */
    public static <E> Object m2055b(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    /* renamed from: a */
    public final long m2069a() {
        return this.f36923h.get();
    }

    /* renamed from: a */
    public final T m2062a(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f36922g = atomicReferenceArray;
        return (T) m2055b(atomicReferenceArray, m2066a(j, i));
    }

    /* renamed from: a */
    public final AtomicReferenceArray<Object> m2064a(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        m2057b(i);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) m2055b(atomicReferenceArray, i);
        m2063a(atomicReferenceArray, i, (Object) null);
        return atomicReferenceArray2;
    }

    /* renamed from: a */
    public final void m2068a(int i) {
        this.f36917b = Math.min(i / 4, f36914i);
    }

    /* renamed from: a */
    public final void m2067a(long j) {
        this.f36923h.lazySet(j);
    }

    /* renamed from: a */
    public final void m2061a(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i, T t, long j2) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f36920e = atomicReferenceArray2;
        this.f36918c = (j2 + j) - 1;
        m2063a(atomicReferenceArray2, i, t);
        m2059a(atomicReferenceArray, atomicReferenceArray2);
        m2063a(atomicReferenceArray, i, f36915j);
        m2056b(j + 1);
    }

    /* renamed from: a */
    public final void m2059a(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        int length = atomicReferenceArray.length() - 1;
        m2057b(length);
        m2063a(atomicReferenceArray, length, atomicReferenceArray2);
    }

    /* renamed from: a */
    public boolean m2065a(T t, T t2) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f36920e;
        long d = m2052d();
        int i = this.f36919d;
        long j = 2 + d;
        if (m2055b(atomicReferenceArray, m2066a(j, i)) == null) {
            int a = m2066a(d, i);
            m2063a(atomicReferenceArray, a + 1, t2);
            m2063a(atomicReferenceArray, a, t);
            m2056b(j);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f36920e = atomicReferenceArray2;
        int a2 = m2066a(d, i);
        m2063a(atomicReferenceArray2, a2 + 1, t2);
        m2063a(atomicReferenceArray2, a2, t);
        m2059a(atomicReferenceArray, atomicReferenceArray2);
        m2063a(atomicReferenceArray, a2, f36915j);
        m2056b(j);
        return true;
    }

    /* renamed from: a */
    public final boolean m2060a(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j, int i) {
        m2063a(atomicReferenceArray, i, t);
        m2056b(j + 1);
        return true;
    }

    /* renamed from: b */
    public final long m2058b() {
        return this.f36916a.get();
    }

    /* renamed from: b */
    public final T m2054b(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f36922g = atomicReferenceArray;
        int a = m2066a(j, i);
        T t = (T) m2055b(atomicReferenceArray, a);
        if (t != null) {
            m2063a(atomicReferenceArray, a, (Object) null);
            m2067a(j + 1);
        }
        return t;
    }

    /* renamed from: b */
    public final void m2056b(long j) {
        this.f36916a.lazySet(j);
    }

    /* renamed from: c */
    public final long m2053c() {
        return this.f36923h.get();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    /* renamed from: d */
    public final long m2052d() {
        return this.f36916a.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m2051e() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.m2053c()
            r6 = r0
        L_0x0005:
            r0 = r5
            long r0 = r0.m2052d()
            r8 = r0
            r0 = r5
            long r0 = r0.m2053c()
            r10 = r0
            r0 = r6
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001d
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            int r0 = (int) r0
            return r0
        L_0x001d:
            r0 = r10
            r6 = r0
            goto L_0x0005
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p541c.p543b0.p554f.C9772a.m2051e():int");
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return m2052d() == m2053c();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean offer(T t) {
        if (t != null) {
            AtomicReferenceArray<Object> atomicReferenceArray = this.f36920e;
            long b = m2058b();
            int i = this.f36919d;
            int a = m2066a(b, i);
            if (b < this.f36918c) {
                return m2060a(atomicReferenceArray, t, b, a);
            }
            long j = this.f36917b + b;
            if (m2055b(atomicReferenceArray, m2066a(j, i)) == null) {
                this.f36918c = j - 1;
                return m2060a(atomicReferenceArray, t, b, a);
            } else if (m2055b(atomicReferenceArray, m2066a(1 + b, i)) == null) {
                return m2060a(atomicReferenceArray, t, b, a);
            } else {
                m2061a(atomicReferenceArray, b, a, t, i);
                return true;
            }
        } else {
            throw new NullPointerException("Null is not a valid element");
        }
    }

    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f36922g;
        long a = m2069a();
        int i = this.f36921f;
        T t = (T) m2055b(atomicReferenceArray, m2066a(a, i));
        return t == f36915j ? m2062a(m2064a(atomicReferenceArray, i + 1), a, i) : t;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9660i, p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f36922g;
        long a = m2069a();
        int i = this.f36921f;
        int a2 = m2066a(a, i);
        T t = (T) m2055b(atomicReferenceArray, a2);
        boolean z = t == f36915j;
        if (t != null && !z) {
            m2063a(atomicReferenceArray, a2, (Object) null);
            m2067a(a + 1);
            return t;
        } else if (z) {
            return m2054b(m2064a(atomicReferenceArray, i + 1), a, i);
        } else {
            return null;
        }
    }
}
