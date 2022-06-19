package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
/* renamed from: com.google.gson.internal.g */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g.class */
public final class C16069g<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: f */
    static final /* synthetic */ boolean f56814f = true;

    /* renamed from: g */
    private static final Comparator<Comparable> f56815g = new Comparator<Comparable>() { // from class: com.google.gson.internal.g.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: a */
    Comparator<? super K> f56816a;

    /* renamed from: b */
    C16076d<K, V> f56817b;

    /* renamed from: c */
    int f56818c;

    /* renamed from: d */
    int f56819d;

    /* renamed from: e */
    final C16076d<K, V> f56820e;

    /* renamed from: h */
    private C16069g<K, V>.C16071a f56821h;

    /* renamed from: i */
    private C16069g<K, V>.C16073b f56822i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.internal.g$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g$a.class */
    public final class C16071a extends AbstractSet<Map.Entry<K, V>> {
        C16071a() {
            C16069g.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C16069g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && C16069g.this.m7879a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new C16069g<K, V>.AbstractC16075c<Map.Entry<K, V>>() { // from class: com.google.gson.internal.g.a.1
                {
                    C16071a.this = this;
                    C16069g c16069g = C16069g.this;
                }

                @Override // java.util.Iterator
                public final /* synthetic */ Object next() {
                    return m7875a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            C16076d<K, V> m7879a;
            if ((obj instanceof Map.Entry) && (m7879a = C16069g.this.m7879a((Map.Entry) obj)) != null) {
                C16069g.this.m7882a((C16076d) m7879a, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C16069g.this.f56818c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.internal.g$b */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g$b.class */
    public final class C16073b extends AbstractSet<K> {
        C16073b() {
            C16069g.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C16069g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return C16069g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new C16069g<K, V>.AbstractC16075c<K>() { // from class: com.google.gson.internal.g.b.1
                {
                    C16073b.this = this;
                    C16069g c16069g = C16069g.this;
                }

                @Override // java.util.Iterator
                public final K next() {
                    return m7875a().f56836f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return C16069g.this.m7881a(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C16069g.this.f56818c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.internal.g$c */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g$c.class */
    public abstract class AbstractC16075c<T> implements Iterator<T> {

        /* renamed from: b */
        C16076d<K, V> f56827b;

        /* renamed from: c */
        C16076d<K, V> f56828c = null;

        /* renamed from: d */
        int f56829d;

        AbstractC16075c() {
            C16069g.this = r4;
            this.f56827b = r4.f56820e.f56834d;
            this.f56829d = r4.f56819d;
        }

        /* renamed from: a */
        final C16076d<K, V> m7875a() {
            C16076d<K, V> c16076d = this.f56827b;
            if (c16076d != C16069g.this.f56820e) {
                if (C16069g.this.f56819d != this.f56829d) {
                    throw new ConcurrentModificationException();
                }
                this.f56827b = c16076d.f56834d;
                this.f56828c = c16076d;
                return c16076d;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f56827b != C16069g.this.f56820e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            C16076d<K, V> c16076d = this.f56828c;
            if (c16076d != null) {
                C16069g.this.m7882a((C16076d) c16076d, true);
                this.f56828c = null;
                this.f56829d = C16069g.this.f56819d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: com.google.gson.internal.g$d */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g$d.class */
    public static final class C16076d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        C16076d<K, V> f56831a;

        /* renamed from: b */
        C16076d<K, V> f56832b;

        /* renamed from: c */
        C16076d<K, V> f56833c;

        /* renamed from: d */
        C16076d<K, V> f56834d;

        /* renamed from: e */
        C16076d<K, V> f56835e;

        /* renamed from: f */
        final K f56836f;

        /* renamed from: g */
        V f56837g;

        /* renamed from: h */
        int f56838h;

        C16076d() {
            this.f56836f = null;
            this.f56835e = this;
            this.f56834d = this;
        }

        C16076d(C16076d<K, V> c16076d, K k, C16076d<K, V> c16076d2, C16076d<K, V> c16076d3) {
            this.f56831a = c16076d;
            this.f56836f = k;
            this.f56838h = 1;
            this.f56834d = c16076d2;
            this.f56835e = c16076d3;
            c16076d3.f56834d = this;
            c16076d2.f56835e = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k = this.f56836f;
                if (k == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!k.equals(entry.getKey())) {
                    return false;
                }
                V v = this.f56837g;
                return v == null ? entry.getValue() == null : v.equals(entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f56836f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f56837g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f56836f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f56837g;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.f56837g;
            this.f56837g = v;
            return v2;
        }

        public final String toString() {
            return this.f56836f + "=" + this.f56837g;
        }
    }

    public C16069g() {
        this(f56815g);
    }

    public C16069g(Comparator<? super K> comparator) {
        this.f56818c = 0;
        this.f56819d = 0;
        this.f56820e = new C16076d<>();
        this.f56816a = comparator == null ? f56815g : comparator;
    }

    /* renamed from: a */
    private C16076d<K, V> m7880a(K k, boolean z) {
        int i;
        C16076d<K, V> c16076d;
        Comparator<? super K> comparator = this.f56816a;
        C16076d<K, V> c16076d2 = this.f56817b;
        if (c16076d2 != null) {
            Comparable comparable = comparator == f56815g ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(c16076d2.f56836f) : comparator.compare(k, (K) c16076d2.f56836f);
                if (i != 0) {
                    C16076d<K, V> c16076d3 = i < 0 ? c16076d2.f56832b : c16076d2.f56833c;
                    if (c16076d3 == null) {
                        break;
                    }
                    c16076d2 = c16076d3;
                } else {
                    return c16076d2;
                }
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        C16076d<K, V> c16076d4 = this.f56820e;
        if (c16076d2 != null) {
            c16076d = new C16076d<>(c16076d2, k, c16076d4, c16076d4.f56835e);
            if (i < 0) {
                c16076d2.f56832b = c16076d;
            } else {
                c16076d2.f56833c = c16076d;
            }
            m7877b(c16076d2, true);
        } else if (comparator == f56815g && !(k instanceof Comparable)) {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        } else {
            c16076d = new C16076d<>(c16076d2, k, c16076d4, c16076d4.f56835e);
            this.f56817b = c16076d;
        }
        this.f56818c++;
        this.f56819d++;
        return c16076d;
    }

    /* renamed from: a */
    private void m7884a(C16076d<K, V> c16076d) {
        C16076d<K, V> c16076d2 = c16076d.f56832b;
        C16076d<K, V> c16076d3 = c16076d.f56833c;
        C16076d<K, V> c16076d4 = c16076d3.f56832b;
        C16076d<K, V> c16076d5 = c16076d3.f56833c;
        c16076d.f56833c = c16076d4;
        if (c16076d4 != null) {
            c16076d4.f56831a = c16076d;
        }
        m7883a(c16076d, c16076d3);
        c16076d3.f56832b = c16076d;
        c16076d.f56831a = c16076d3;
        c16076d.f56838h = Math.max(c16076d2 != null ? c16076d2.f56838h : 0, c16076d4 != null ? c16076d4.f56838h : 0) + 1;
        int i = c16076d.f56838h;
        int i2 = 0;
        if (c16076d5 != null) {
            i2 = c16076d5.f56838h;
        }
        c16076d3.f56838h = Math.max(i, i2) + 1;
    }

    /* renamed from: a */
    private void m7883a(C16076d<K, V> c16076d, C16076d<K, V> c16076d2) {
        C16076d<K, V> c16076d3 = c16076d.f56831a;
        c16076d.f56831a = null;
        if (c16076d2 != null) {
            c16076d2.f56831a = c16076d3;
        }
        if (c16076d3 == null) {
            this.f56817b = c16076d2;
        } else if (c16076d3.f56832b == c16076d) {
            c16076d3.f56832b = c16076d2;
        } else if (!f56814f && c16076d3.f56833c != c16076d) {
            throw new AssertionError();
        } else {
            c16076d3.f56833c = c16076d2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private C16076d<K, V> m7876b(Object obj) {
        if (obj != 0) {
            try {
                return m7880a((C16069g<K, V>) obj, false);
            } catch (ClassCastException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    private void m7878b(C16076d<K, V> c16076d) {
        C16076d<K, V> c16076d2 = c16076d.f56832b;
        C16076d<K, V> c16076d3 = c16076d.f56833c;
        C16076d<K, V> c16076d4 = c16076d2.f56832b;
        C16076d<K, V> c16076d5 = c16076d2.f56833c;
        c16076d.f56832b = c16076d5;
        if (c16076d5 != null) {
            c16076d5.f56831a = c16076d;
        }
        m7883a(c16076d, c16076d2);
        c16076d2.f56833c = c16076d;
        c16076d.f56831a = c16076d2;
        c16076d.f56838h = Math.max(c16076d3 != null ? c16076d3.f56838h : 0, c16076d5 != null ? c16076d5.f56838h : 0) + 1;
        int i = c16076d.f56838h;
        int i2 = 0;
        if (c16076d4 != null) {
            i2 = c16076d4.f56838h;
        }
        c16076d2.f56838h = Math.max(i, i2) + 1;
    }

    /* renamed from: b */
    private void m7877b(C16076d<K, V> c16076d, boolean z) {
        while (c16076d != null) {
            C16076d<K, V> c16076d2 = c16076d.f56832b;
            C16076d<K, V> c16076d3 = c16076d.f56833c;
            int i = c16076d2 != null ? c16076d2.f56838h : 0;
            int i2 = c16076d3 != null ? c16076d3.f56838h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                C16076d<K, V> c16076d4 = c16076d3.f56832b;
                C16076d<K, V> c16076d5 = c16076d3.f56833c;
                int i4 = c16076d5 != null ? c16076d5.f56838h : 0;
                int i5 = 0;
                if (c16076d4 != null) {
                    i5 = c16076d4.f56838h;
                }
                int i6 = i5 - i4;
                if (i6 == -1 || (i6 == 0 && !z)) {
                    m7884a((C16076d) c16076d);
                } else if (!f56814f && i6 != 1) {
                    throw new AssertionError();
                } else {
                    m7878b((C16076d) c16076d3);
                    m7884a((C16076d) c16076d);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                C16076d<K, V> c16076d6 = c16076d2.f56832b;
                C16076d<K, V> c16076d7 = c16076d2.f56833c;
                int i7 = c16076d7 != null ? c16076d7.f56838h : 0;
                int i8 = 0;
                if (c16076d6 != null) {
                    i8 = c16076d6.f56838h;
                }
                int i9 = i8 - i7;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    m7878b((C16076d) c16076d);
                } else if (!f56814f && i9 != -1) {
                    throw new AssertionError();
                } else {
                    m7884a((C16076d) c16076d2);
                    m7878b((C16076d) c16076d);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                c16076d.f56838h = i + 1;
                if (z) {
                    return;
                }
            } else if (!f56814f && i3 != -1 && i3 != 1) {
                throw new AssertionError();
            } else {
                c16076d.f56838h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            c16076d = c16076d.f56831a;
        }
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    /* renamed from: a */
    final C16076d<K, V> m7881a(Object obj) {
        C16076d<K, V> m7876b = m7876b(obj);
        if (m7876b != null) {
            m7882a((C16076d) m7876b, true);
        }
        return m7876b;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.gson.internal.C16069g.C16076d<K, V> m7879a(java.util.Map.Entry<?, ?> r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.lang.Object r1 = r1.getKey()
            com.google.gson.internal.g$d r0 = r0.m7876b(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L49
            r0 = r5
            V r0 = r0.f56837g
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
            if (r0 == 0) goto L53
            r0 = r5
            return r0
        L53:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.C16069g.m7879a(java.util.Map$Entry):com.google.gson.internal.g$d");
    }

    /* renamed from: a */
    final void m7882a(C16076d<K, V> c16076d, boolean z) {
        int i;
        if (z) {
            c16076d.f56835e.f56834d = c16076d.f56834d;
            c16076d.f56834d.f56835e = c16076d.f56835e;
        }
        C16076d<K, V> c16076d2 = c16076d.f56832b;
        C16076d<K, V> c16076d3 = c16076d.f56833c;
        C16076d<K, V> c16076d4 = c16076d.f56831a;
        int i2 = 0;
        if (c16076d2 == null || c16076d3 == null) {
            if (c16076d2 != null) {
                m7883a(c16076d, c16076d2);
                c16076d.f56832b = null;
            } else if (c16076d3 != null) {
                m7883a(c16076d, c16076d3);
                c16076d.f56833c = null;
            } else {
                m7883a(c16076d, (C16076d) null);
            }
            m7877b(c16076d4, false);
            this.f56818c--;
            this.f56819d++;
            return;
        }
        C16076d<K, V> c16076d5 = c16076d3;
        if (c16076d2.f56838h > c16076d3.f56838h) {
            C16076d<K, V> c16076d6 = c16076d2.f56833c;
            while (true) {
                C16076d<K, V> c16076d7 = c16076d6;
                C16076d<K, V> c16076d8 = c16076d2;
                c16076d2 = c16076d7;
                c16076d5 = c16076d8;
                if (c16076d2 == null) {
                    break;
                }
                c16076d6 = c16076d2.f56833c;
            }
        } else {
            while (true) {
                C16076d<K, V> c16076d9 = c16076d5.f56832b;
                if (c16076d9 == null) {
                    break;
                }
                c16076d5 = c16076d9;
            }
        }
        m7882a((C16076d) c16076d5, false);
        C16076d<K, V> c16076d10 = c16076d.f56832b;
        if (c16076d10 != null) {
            i = c16076d10.f56838h;
            c16076d5.f56832b = c16076d10;
            c16076d10.f56831a = c16076d5;
            c16076d.f56832b = null;
        } else {
            i = 0;
        }
        C16076d<K, V> c16076d11 = c16076d.f56833c;
        if (c16076d11 != null) {
            i2 = c16076d11.f56838h;
            c16076d5.f56833c = c16076d11;
            c16076d11.f56831a = c16076d5;
            c16076d.f56833c = null;
        }
        c16076d5.f56838h = Math.max(i, i2) + 1;
        m7883a(c16076d, c16076d5);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f56817b = null;
        this.f56818c = 0;
        this.f56819d++;
        C16076d<K, V> c16076d = this.f56820e;
        c16076d.f56835e = c16076d;
        c16076d.f56834d = c16076d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return m7876b(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        C16069g<K, V>.C16071a c16071a = this.f56821h;
        if (c16071a != null) {
            return c16071a;
        }
        C16069g<K, V>.C16071a c16071a2 = new C16071a();
        this.f56821h = c16071a2;
        return c16071a2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        C16076d<K, V> m7876b = m7876b(obj);
        if (m7876b != null) {
            return m7876b.f56837g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        C16069g<K, V>.C16073b c16073b = this.f56822i;
        if (c16073b != null) {
            return c16073b;
        }
        C16069g<K, V>.C16073b c16073b2 = new C16073b();
        this.f56822i = c16073b2;
        return c16073b2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        C16076d<K, V> m7880a = m7880a((C16069g<K, V>) k, true);
        V v2 = m7880a.f56837g;
        m7880a.f56837g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        C16076d<K, V> m7881a = m7881a(obj);
        if (m7881a != null) {
            return m7881a.f56837g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f56818c;
    }
}
