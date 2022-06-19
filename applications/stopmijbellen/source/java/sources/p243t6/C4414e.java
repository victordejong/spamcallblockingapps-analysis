package p243t6;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
/* renamed from: t6.e */
/* loaded from: classes-dex2jar.jar:t6/e.class */
public final class C4414e<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: h */
    public static final Comparator<Comparable> f13746h = new C4415a();

    /* renamed from: a */
    public Comparator<? super K> f13747a;

    /* renamed from: b */
    public C4421e<K, V> f13748b;

    /* renamed from: c */
    public int f13749c = 0;

    /* renamed from: d */
    public int f13750d = 0;

    /* renamed from: e */
    public final C4421e<K, V> f13751e = new C4421e<>();

    /* renamed from: f */
    public C4414e<K, V>.C4416b f13752f;

    /* renamed from: g */
    public C4414e<K, V>.C4418c f13753g;

    /* renamed from: t6.e$a */
    /* loaded from: classes-dex2jar.jar:t6/e$a.class */
    public static final class C4415a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* renamed from: t6.e$b */
    /* loaded from: classes-dex2jar.jar:t6/e$b.class */
    public class C4416b extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: t6.e$b$a */
        /* loaded from: classes-dex2jar.jar:t6/e$b$a.class */
        public class C4417a extends C4414e<K, V>.AbstractC4420d<Map.Entry<K, V>> {
            public C4417a(C4416b c4416b) {
                super();
            }

            @Override // java.util.Iterator
            public Object next() {
                return m942a();
            }
        }

        public C4416b() {
            C4414e.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C4414e.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && C4414e.this.m949b((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C4417a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            C4421e<K, V> m949b;
            if ((obj instanceof Map.Entry) && (m949b = C4414e.this.m949b((Map.Entry) obj)) != null) {
                C4414e.this.m946e(m949b, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C4414e.this.f13749c;
        }
    }

    /* renamed from: t6.e$c */
    /* loaded from: classes-dex2jar.jar:t6/e$c.class */
    public final class C4418c extends AbstractSet<K> {

        /* renamed from: t6.e$c$a */
        /* loaded from: classes-dex2jar.jar:t6/e$c$a.class */
        public class C4419a extends C4414e<K, V>.AbstractC4420d<K> {
            public C4419a(C4418c c4418c) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return m942a().f13765f;
            }
        }

        public C4418c() {
            C4414e.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C4414e.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return C4414e.this.m948c(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C4419a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            C4414e c4414e = C4414e.this;
            C4421e<K, V> m948c = c4414e.m948c(obj);
            boolean z = true;
            if (m948c != null) {
                c4414e.m946e(m948c, true);
            }
            if (m948c == null) {
                z = false;
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C4414e.this.f13749c;
        }
    }

    /* renamed from: t6.e$d */
    /* loaded from: classes-dex2jar.jar:t6/e$d.class */
    public abstract class AbstractC4420d<T> implements Iterator<T> {

        /* renamed from: a */
        public C4421e<K, V> f13756a;

        /* renamed from: b */
        public C4421e<K, V> f13757b = null;

        /* renamed from: c */
        public int f13758c;

        public AbstractC4420d() {
            C4414e.this = r4;
            this.f13756a = r4.f13751e.f13763d;
            this.f13758c = r4.f13750d;
        }

        /* renamed from: a */
        public final C4421e<K, V> m942a() {
            C4421e<K, V> c4421e = this.f13756a;
            C4414e c4414e = C4414e.this;
            if (c4421e != c4414e.f13751e) {
                if (c4414e.f13750d != this.f13758c) {
                    throw new ConcurrentModificationException();
                }
                this.f13756a = c4421e.f13763d;
                this.f13757b = c4421e;
                return c4421e;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f13756a != C4414e.this.f13751e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            C4421e<K, V> c4421e = this.f13757b;
            if (c4421e != null) {
                C4414e.this.m946e(c4421e, true);
                this.f13757b = null;
                this.f13758c = C4414e.this.f13750d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: t6.e$e */
    /* loaded from: classes-dex2jar.jar:t6/e$e.class */
    public static final class C4421e<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        public C4421e<K, V> f13760a;

        /* renamed from: b */
        public C4421e<K, V> f13761b;

        /* renamed from: c */
        public C4421e<K, V> f13762c;

        /* renamed from: d */
        public C4421e<K, V> f13763d;

        /* renamed from: e */
        public C4421e<K, V> f13764e;

        /* renamed from: f */
        public final K f13765f;

        /* renamed from: g */
        public V f13766g;

        /* renamed from: h */
        public int f13767h;

        public C4421e() {
            this.f13765f = null;
            this.f13764e = this;
            this.f13763d = this;
        }

        public C4421e(C4421e<K, V> c4421e, K k, C4421e<K, V> c4421e2, C4421e<K, V> c4421e3) {
            this.f13760a = c4421e;
            this.f13765f = k;
            this.f13767h = 1;
            this.f13763d = c4421e2;
            this.f13764e = c4421e3;
            c4421e3.f13763d = this;
            c4421e2.f13764e = this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
            r0 = r3.f13766g;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
            if (r0 != null) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0049, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
            if (r0.getValue() != null) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0066, code lost:
            if (r0.equals(r0.getValue()) == false) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
            r7 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0.getKey() == null) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
            if (r0.equals(r0.getKey()) != false) goto L10;
         */
        @Override // java.util.Map.Entry
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                boolean r0 = r0 instanceof java.util.Map.Entry
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L6c
                r0 = r4
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r4 = r0
                r0 = r3
                K r0 = r0.f13765f
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L2d
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.Object r0 = r0.getKey()
                if (r0 != 0) goto L6c
                goto L3e
            L2d:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r4
                java.lang.Object r1 = r1.getKey()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L6c
            L3e:
                r0 = r3
                V r0 = r0.f13766g
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L58
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.Object r0 = r0.getValue()
                if (r0 != 0) goto L6c
                goto L69
            L58:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r4
                java.lang.Object r1 = r1.getValue()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L6c
            L69:
                r0 = 1
                r7 = r0
            L6c:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p243t6.C4414e.C4421e.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f13765f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f13766g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f13765f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f13766g;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f13766g;
            this.f13766g = v;
            return v2;
        }

        public String toString() {
            return this.f13765f + "=" + this.f13766g;
        }
    }

    public C4414e() {
        Comparator<Comparable> comparator = f13746h;
        this.f13747a = comparator;
    }

    /* renamed from: a */
    public C4421e<K, V> m950a(K k, boolean z) {
        int i;
        C4421e<K, V> c4421e;
        Comparator<? super K> comparator = this.f13747a;
        C4421e<K, V> c4421e2 = this.f13748b;
        if (c4421e2 != null) {
            Comparable comparable = comparator == f13746h ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(c4421e2.f13765f) : comparator.compare(k, (K) c4421e2.f13765f);
                if (i == 0) {
                    return c4421e2;
                }
                C4421e<K, V> c4421e3 = i < 0 ? c4421e2.f13761b : c4421e2.f13762c;
                if (c4421e3 == null) {
                    break;
                }
                c4421e2 = c4421e3;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        C4421e<K, V> c4421e4 = this.f13751e;
        if (c4421e2 != null) {
            c4421e = new C4421e<>(c4421e2, k, c4421e4, c4421e4.f13764e);
            if (i < 0) {
                c4421e2.f13761b = c4421e;
            } else {
                c4421e2.f13762c = c4421e;
            }
            m947d(c4421e2, true);
        } else if (comparator == f13746h && !(k instanceof Comparable)) {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        } else {
            c4421e = new C4421e<>(c4421e2, k, c4421e4, c4421e4.f13764e);
            this.f13748b = c4421e;
        }
        this.f13749c++;
        this.f13750d++;
        return c4421e;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p243t6.C4414e.C4421e<K, V> m949b(java.util.Map.Entry<?, ?> r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.lang.Object r1 = r1.getKey()
            t6.e$e r0 = r0.m948c(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L49
            r0 = r5
            V r0 = r0.f13766g
            r7 = r0
            r0 = r4
            java.lang.Object r0 = r0.getValue()
            r4 = r0
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L3b
            r0 = r7
            if (r0 == 0) goto L35
            r0 = r7
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L35
            goto L3b
        L35:
            r0 = 0
            r8 = r0
            goto L3e
        L3b:
            r0 = 1
            r8 = r0
        L3e:
            r0 = r8
            if (r0 == 0) goto L49
            r0 = r6
            r8 = r0
            goto L4c
        L49:
            r0 = 0
            r8 = r0
        L4c:
            r0 = r8
            if (r0 == 0) goto L56
            r0 = r5
            r4 = r0
            goto L58
        L56:
            r0 = 0
            r4 = r0
        L58:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p243t6.C4414e.m949b(java.util.Map$Entry):t6.e$e");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public C4421e<K, V> m948c(Object obj) {
        C4421e<K, V> c4421e = null;
        if (obj != 0) {
            try {
                c4421e = m950a(obj, false);
            } catch (ClassCastException e) {
                c4421e = null;
            }
        }
        return c4421e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f13748b = null;
        this.f13749c = 0;
        this.f13750d++;
        C4421e<K, V> c4421e = this.f13751e;
        c4421e.f13764e = c4421e;
        c4421e.f13763d = c4421e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return m948c(obj) != null;
    }

    /* renamed from: d */
    public final void m947d(C4421e<K, V> c4421e, boolean z) {
        while (c4421e != null) {
            C4421e<K, V> c4421e2 = c4421e.f13761b;
            C4421e<K, V> c4421e3 = c4421e.f13762c;
            int i = c4421e2 != null ? c4421e2.f13767h : 0;
            int i2 = c4421e3 != null ? c4421e3.f13767h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                C4421e<K, V> c4421e4 = c4421e3.f13761b;
                C4421e<K, V> c4421e5 = c4421e3.f13762c;
                int i4 = c4421e5 != null ? c4421e5.f13767h : 0;
                int i5 = 0;
                if (c4421e4 != null) {
                    i5 = c4421e4.f13767h;
                }
                int i6 = i5 - i4;
                if (i6 == -1 || (i6 == 0 && !z)) {
                    m944g(c4421e);
                } else {
                    m943h(c4421e3);
                    m944g(c4421e);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                C4421e<K, V> c4421e6 = c4421e2.f13761b;
                C4421e<K, V> c4421e7 = c4421e2.f13762c;
                int i7 = c4421e7 != null ? c4421e7.f13767h : 0;
                int i8 = 0;
                if (c4421e6 != null) {
                    i8 = c4421e6.f13767h;
                }
                int i9 = i8 - i7;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    m943h(c4421e);
                } else {
                    m944g(c4421e2);
                    m943h(c4421e);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                c4421e.f13767h = i + 1;
                if (z) {
                    return;
                }
            } else {
                c4421e.f13767h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            c4421e = c4421e.f13760a;
        }
    }

    /* renamed from: e */
    public void m946e(C4421e<K, V> c4421e, boolean z) {
        C4421e<K, V> c4421e2;
        int i;
        if (z) {
            C4421e<K, V> c4421e3 = c4421e.f13764e;
            c4421e3.f13763d = c4421e.f13763d;
            c4421e.f13763d.f13764e = c4421e3;
        }
        C4421e<K, V> c4421e4 = c4421e.f13761b;
        C4421e<K, V> c4421e5 = c4421e.f13762c;
        C4421e<K, V> c4421e6 = c4421e.f13760a;
        int i2 = 0;
        if (c4421e4 == null || c4421e5 == null) {
            if (c4421e4 != null) {
                m945f(c4421e, c4421e4);
                c4421e.f13761b = null;
            } else if (c4421e5 != null) {
                m945f(c4421e, c4421e5);
                c4421e.f13762c = null;
            } else {
                m945f(c4421e, null);
            }
            m947d(c4421e6, false);
            this.f13749c--;
            this.f13750d++;
            return;
        }
        if (c4421e4.f13767h > c4421e5.f13767h) {
            C4421e<K, V> c4421e7 = c4421e4;
            C4421e<K, V> c4421e8 = c4421e4.f13762c;
            while (true) {
                C4421e<K, V> c4421e9 = c4421e8;
                C4421e<K, V> c4421e10 = c4421e7;
                c4421e7 = c4421e9;
                c4421e2 = c4421e10;
                if (c4421e7 == null) {
                    break;
                }
                c4421e8 = c4421e7.f13762c;
            }
        } else {
            C4421e<K, V> c4421e11 = c4421e5.f13761b;
            while (true) {
                C4421e<K, V> c4421e12 = c4421e11;
                if (c4421e12 == null) {
                    break;
                }
                c4421e5 = c4421e12;
                c4421e11 = c4421e12.f13761b;
            }
            c4421e2 = c4421e5;
        }
        m946e(c4421e2, false);
        C4421e<K, V> c4421e13 = c4421e.f13761b;
        if (c4421e13 != null) {
            i = c4421e13.f13767h;
            c4421e2.f13761b = c4421e13;
            c4421e13.f13760a = c4421e2;
            c4421e.f13761b = null;
        } else {
            i = 0;
        }
        C4421e<K, V> c4421e14 = c4421e.f13762c;
        if (c4421e14 != null) {
            i2 = c4421e14.f13767h;
            c4421e2.f13762c = c4421e14;
            c4421e14.f13760a = c4421e2;
            c4421e.f13762c = null;
        }
        c4421e2.f13767h = Math.max(i, i2) + 1;
        m945f(c4421e, c4421e2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        C4414e<K, V>.C4416b c4416b = this.f13752f;
        if (c4416b == null) {
            c4416b = new C4416b();
            this.f13752f = c4416b;
        }
        return c4416b;
    }

    /* renamed from: f */
    public final void m945f(C4421e<K, V> c4421e, C4421e<K, V> c4421e2) {
        C4421e<K, V> c4421e3 = c4421e.f13760a;
        c4421e.f13760a = null;
        if (c4421e2 != null) {
            c4421e2.f13760a = c4421e3;
        }
        if (c4421e3 == null) {
            this.f13748b = c4421e2;
        } else if (c4421e3.f13761b == c4421e) {
            c4421e3.f13761b = c4421e2;
        } else {
            c4421e3.f13762c = c4421e2;
        }
    }

    /* renamed from: g */
    public final void m944g(C4421e<K, V> c4421e) {
        C4421e<K, V> c4421e2 = c4421e.f13761b;
        C4421e<K, V> c4421e3 = c4421e.f13762c;
        C4421e<K, V> c4421e4 = c4421e3.f13761b;
        C4421e<K, V> c4421e5 = c4421e3.f13762c;
        c4421e.f13762c = c4421e4;
        if (c4421e4 != null) {
            c4421e4.f13760a = c4421e;
        }
        m945f(c4421e, c4421e3);
        c4421e3.f13761b = c4421e;
        c4421e.f13760a = c4421e3;
        int max = Math.max(c4421e2 != null ? c4421e2.f13767h : 0, c4421e4 != null ? c4421e4.f13767h : 0) + 1;
        c4421e.f13767h = max;
        int i = 0;
        if (c4421e5 != null) {
            i = c4421e5.f13767h;
        }
        c4421e3.f13767h = Math.max(max, i) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        C4421e<K, V> m948c = m948c(obj);
        return m948c != null ? m948c.f13766g : null;
    }

    /* renamed from: h */
    public final void m943h(C4421e<K, V> c4421e) {
        C4421e<K, V> c4421e2 = c4421e.f13761b;
        C4421e<K, V> c4421e3 = c4421e.f13762c;
        C4421e<K, V> c4421e4 = c4421e2.f13761b;
        C4421e<K, V> c4421e5 = c4421e2.f13762c;
        c4421e.f13761b = c4421e5;
        if (c4421e5 != null) {
            c4421e5.f13760a = c4421e;
        }
        m945f(c4421e, c4421e2);
        c4421e2.f13762c = c4421e;
        c4421e.f13760a = c4421e2;
        int max = Math.max(c4421e3 != null ? c4421e3.f13767h : 0, c4421e5 != null ? c4421e5.f13767h : 0) + 1;
        c4421e.f13767h = max;
        int i = 0;
        if (c4421e4 != null) {
            i = c4421e4.f13767h;
        }
        c4421e2.f13767h = Math.max(max, i) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        C4414e<K, V>.C4418c c4418c = this.f13753g;
        if (c4418c == null) {
            c4418c = new C4418c();
            this.f13753g = c4418c;
        }
        return c4418c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        C4421e<K, V> m950a = m950a(k, true);
        V v2 = m950a.f13766g;
        m950a.f13766g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        C4421e<K, V> m948c = m948c(obj);
        if (m948c != null) {
            m946e(m948c, true);
        }
        return m948c != null ? m948c.f13766g : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f13749c;
    }
}
