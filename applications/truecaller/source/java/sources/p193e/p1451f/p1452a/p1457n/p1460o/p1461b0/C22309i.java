package p193e.p1451f.p1452a.p1457n.p1460o.p1461b0;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.TreeMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.f.a.n.o.b0.i */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/i.class */
public final class C22309i implements AbstractC22301b {

    /* renamed from: a */
    public final C22306g<C22310a, Object> f61967a = new C22306g<>();

    /* renamed from: b */
    public final C22311b f61968b = new C22311b();

    /* renamed from: c */
    public final Map<Class<?>, NavigableMap<Integer, Integer>> f61969c = new HashMap();

    /* renamed from: d */
    public final Map<Class<?>, AbstractC22300a<?>> f61970d = new HashMap();

    /* renamed from: e */
    public final int f61971e;

    /* renamed from: f */
    public int f61972f;

    /* renamed from: e.f.a.n.o.b0.i$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/i$a.class */
    public static final class C22310a implements AbstractC22316l {

        /* renamed from: a */
        public final C22311b f61973a;

        /* renamed from: b */
        public int f61974b;

        /* renamed from: c */
        public Class<?> f61975c;

        public C22310a(C22311b c22311b) {
            this.f61973a = c22311b;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22316l
        /* renamed from: a */
        public void mo8314a() {
            this.f61973a.m8346c(this);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C22310a) {
                C22310a c22310a = (C22310a) obj;
                z = false;
                if (this.f61974b == c22310a.f61974b) {
                    z = false;
                    if (this.f61975c == c22310a.f61975c) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int i = this.f61974b;
            Class<?> cls = this.f61975c;
            return (i * 31) + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Key{size=");
            m8728C.append(this.f61974b);
            m8728C.append("array=");
            m8728C.append(this.f61975c);
            m8728C.append('}');
            return m8728C.toString();
        }
    }

    /* renamed from: e.f.a.n.o.b0.i$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/i$b.class */
    public static final class C22311b extends AbstractC22302c<C22310a> {
        @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22302c
        /* renamed from: a */
        public C22310a mo8313a() {
            return new C22310a(this);
        }

        /* renamed from: d */
        public C22310a m8330d(int i, Class<?> cls) {
            C22310a m8347b = m8347b();
            m8347b.f61974b = i;
            m8347b.f61975c = cls;
            return m8347b;
        }
    }

    public C22309i(int i) {
        this.f61971e = i;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b
    /* renamed from: a */
    public void mo8339a(int i) {
        synchronized (this) {
            if (i >= 40) {
                synchronized (this) {
                    m8334f(0);
                }
            } else if (i >= 20 || i == 15) {
                m8334f(this.f61971e / 2);
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b
    /* renamed from: b */
    public void mo8338b() {
        synchronized (this) {
            m8334f(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046 A[Catch: all -> 0x0090, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x0086), top: B:34:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060 A[Catch: all -> 0x0090, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x0086), top: B:34:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070 A[Catch: all -> 0x0090, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x0086), top: B:34:0x0002 }] */
    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T mo8337c(int r5, java.lang.Class<T> r6) {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            r1 = r6
            java.util.NavigableMap r0 = r0.m8331i(r1)     // Catch: java.lang.Throwable -> L90
            r1 = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L90
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch: java.lang.Throwable -> L90
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L90
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L58
            r0 = r4
            int r0 = r0.f61972f     // Catch: java.lang.Throwable -> L90
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L3a
            r0 = r4
            int r0 = r0.f61971e     // Catch: java.lang.Throwable -> L90
            r1 = r9
            int r0 = r0 / r1
            r1 = 2
            if (r0 < r1) goto L34
            goto L3a
        L34:
            r0 = 0
            r10 = r0
            goto L3d
        L3a:
            r0 = 1
            r10 = r0
        L3d:
            r0 = r8
            r9 = r0
            r0 = r10
            if (r0 != 0) goto L5b
            r0 = r7
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L90
            r1 = r5
            r2 = 8
            int r1 = r1 * r2
            if (r0 > r1) goto L58
            r0 = r8
            r9 = r0
            goto L5b
        L58:
            r0 = 0
            r9 = r0
        L5b:
            r0 = r9
            if (r0 == 0) goto L70
            r0 = r4
            e.f.a.n.o.b0.i$b r0 = r0.f61968b     // Catch: java.lang.Throwable -> L90
            r1 = r7
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L90
            r2 = r6
            e.f.a.n.o.b0.i$a r0 = r0.m8330d(r1, r2)     // Catch: java.lang.Throwable -> L90
            r7 = r0
            goto L85
        L70:
            r0 = r4
            e.f.a.n.o.b0.i$b r0 = r0.f61968b     // Catch: java.lang.Throwable -> L90
            e.f.a.n.o.b0.l r0 = r0.m8347b()     // Catch: java.lang.Throwable -> L90
            e.f.a.n.o.b0.i$a r0 = (p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.C22309i.C22310a) r0     // Catch: java.lang.Throwable -> L90
            r7 = r0
            r0 = r7
            r1 = r5
            r0.f61974b = r1     // Catch: java.lang.Throwable -> L90
            r0 = r7
            r1 = r6
            r0.f61975c = r1     // Catch: java.lang.Throwable -> L90
        L85:
            r0 = r4
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.m8332h(r1, r2)     // Catch: java.lang.Throwable -> L90
            r6 = r0
            r0 = r4
            monitor-exit(r0)
            r0 = r6
            return r0
        L90:
            r6 = move-exception
            r0 = r4
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.C22309i.mo8337c(int, java.lang.Class):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b
    /* renamed from: d */
    public <T> T mo8336d(int i, Class<T> cls) {
        T t;
        synchronized (this) {
            C22310a m8347b = this.f61968b.m8347b();
            m8347b.f61974b = i;
            m8347b.f61975c = cls;
            t = (T) m8332h(m8347b, cls);
        }
        return t;
    }

    /* renamed from: e */
    public final void m8335e(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> m8331i = m8331i(cls);
        Integer num = (Integer) m8331i.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                m8331i.remove(Integer.valueOf(i));
                return;
            } else {
                m8331i.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    /* renamed from: f */
    public final void m8334f(int i) {
        while (this.f61972f > i) {
            Object m8343c = this.f61967a.m8343c();
            Objects.requireNonNull(m8343c, "Argument must not be null");
            AbstractC22300a m8333g = m8333g(m8343c.getClass());
            this.f61972f -= m8333g.mo8340b() * m8333g.mo8341a(m8343c);
            m8335e(m8333g.mo8341a(m8343c), m8343c.getClass());
            if (Log.isLoggable(m8333g.getTag(), 2)) {
                m8333g.getTag();
                m8333g.mo8341a(m8343c);
            }
        }
    }

    /* renamed from: g */
    public final <T> AbstractC22300a<T> m8333g(Class<T> cls) {
        AbstractC22300a<?> abstractC22300a = this.f61970d.get(cls);
        C22308h c22308h = abstractC22300a;
        if (abstractC22300a == null) {
            if (cls.equals(int[].class)) {
                c22308h = new C22308h();
            } else if (!cls.equals(byte[].class)) {
                StringBuilder m8728C = C22128a.m8728C("No array pool found for: ");
                m8728C.append(cls.getSimpleName());
                throw new IllegalArgumentException(m8728C.toString());
            } else {
                c22308h = new C22305f();
            }
            this.f61970d.put(cls, c22308h);
        }
        return (AbstractC22300a<T>) c22308h;
    }

    /* renamed from: h */
    public final <T> T m8332h(C22310a c22310a, Class<T> cls) {
        AbstractC22300a<T> m8333g = m8333g(cls);
        T t = (T) this.f61967a.m8345a(c22310a);
        if (t != null) {
            this.f61972f -= m8333g.mo8340b() * m8333g.mo8341a(t);
            m8335e(m8333g.mo8341a(t), cls);
        }
        T t2 = t;
        if (t == null) {
            if (Log.isLoggable(m8333g.getTag(), 2)) {
                m8333g.getTag();
            }
            t2 = m8333g.newArray(c22310a.f61974b);
        }
        return t2;
    }

    /* renamed from: i */
    public final NavigableMap<Integer, Integer> m8331i(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f61969c.get(cls);
        TreeMap treeMap = navigableMap;
        if (navigableMap == null) {
            treeMap = new TreeMap();
            this.f61969c.put(cls, treeMap);
        }
        return treeMap;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b
    public <T> void put(T t) {
        synchronized (this) {
            Class<?> cls = t.getClass();
            AbstractC22300a<T> m8333g = m8333g(cls);
            int mo8341a = m8333g.mo8341a(t);
            int mo8340b = m8333g.mo8340b() * mo8341a;
            if (!(mo8340b <= this.f61971e / 2)) {
                return;
            }
            C22310a m8330d = this.f61968b.m8330d(mo8341a, cls);
            this.f61967a.m8344b(m8330d, t);
            NavigableMap<Integer, Integer> m8331i = m8331i(cls);
            Integer num = (Integer) m8331i.get(Integer.valueOf(m8330d.f61974b));
            m8331i.put(Integer.valueOf(m8330d.f61974b), Integer.valueOf(num == null ? 1 : 1 + num.intValue()));
            this.f61972f += mo8340b;
            m8334f(this.f61971e);
        }
    }
}
