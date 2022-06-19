package com.bytedance.sdk.openadsdk.preload.p193a.p195b;

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
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h.class */
public final class C5216h<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: f */
    static final /* synthetic */ boolean f18574f = true;

    /* renamed from: g */
    private static final Comparator<Comparable> f18575g = new Comparator<Comparable>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.h.1
        /* renamed from: a */
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: a */
    Comparator<? super K> f18576a;

    /* renamed from: b */
    C5223d<K, V> f18577b;

    /* renamed from: c */
    int f18578c;

    /* renamed from: d */
    int f18579d;

    /* renamed from: e */
    final C5223d<K, V> f18580e;

    /* renamed from: h */
    private C5216h<K, V>.C5218a f18581h;

    /* renamed from: i */
    private C5216h<K, V>.C5220b f18582i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.h$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h$a.class */
    public class C5218a extends AbstractSet<Map.Entry<K, V>> {
        C5218a() {
            C5216h.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C5216h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && C5216h.this.m32828a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C5216h<K, V>.AbstractC5222c<Map.Entry<K, V>>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.h.a.1
                {
                    C5218a.this = this;
                    C5216h c5216h = C5216h.this;
                }

                /* renamed from: a */
                public Map.Entry<K, V> next() {
                    return m32822b();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            C5223d<K, V> m32828a;
            if ((obj instanceof Map.Entry) && (m32828a = C5216h.this.m32828a((Map.Entry) obj)) != null) {
                C5216h.this.m32832a((C5223d) m32828a, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C5216h.this.f18578c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.h$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h$b.class */
    public final class C5220b extends AbstractSet<K> {
        C5220b() {
            C5216h.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C5216h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return C5216h.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new C5216h<K, V>.AbstractC5222c<K>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.h.b.1
                {
                    C5220b.this = this;
                    C5216h c5216h = C5216h.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return m32822b().f18596f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return C5216h.this.m32825b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C5216h.this.f18578c;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.h$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h$c.class */
    public abstract class AbstractC5222c<T> implements Iterator<T> {

        /* renamed from: b */
        C5223d<K, V> f18587b;

        /* renamed from: c */
        C5223d<K, V> f18588c = null;

        /* renamed from: d */
        int f18589d;

        AbstractC5222c() {
            C5216h.this = r4;
            this.f18587b = r4.f18580e.f18594d;
            this.f18589d = r4.f18579d;
        }

        /* renamed from: b */
        final C5223d<K, V> m32822b() {
            C5223d<K, V> c5223d = this.f18587b;
            if (c5223d != C5216h.this.f18580e) {
                if (C5216h.this.f18579d != this.f18589d) {
                    throw new ConcurrentModificationException();
                }
                this.f18587b = c5223d.f18594d;
                this.f18588c = c5223d;
                return c5223d;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f18587b != C5216h.this.f18580e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            C5223d<K, V> c5223d = this.f18588c;
            if (c5223d != null) {
                C5216h.this.m32832a((C5223d) c5223d, true);
                this.f18588c = null;
                this.f18589d = C5216h.this.f18579d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.h$d */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h$d.class */
    public static final class C5223d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        C5223d<K, V> f18591a;

        /* renamed from: b */
        C5223d<K, V> f18592b;

        /* renamed from: c */
        C5223d<K, V> f18593c;

        /* renamed from: d */
        C5223d<K, V> f18594d;

        /* renamed from: e */
        C5223d<K, V> f18595e;

        /* renamed from: f */
        final K f18596f;

        /* renamed from: g */
        V f18597g;

        /* renamed from: h */
        int f18598h;

        C5223d() {
            this.f18596f = null;
            this.f18595e = this;
            this.f18594d = this;
        }

        C5223d(C5223d<K, V> c5223d, K k, C5223d<K, V> c5223d2, C5223d<K, V> c5223d3) {
            this.f18591a = c5223d;
            this.f18596f = k;
            this.f18598h = 1;
            this.f18594d = c5223d2;
            this.f18595e = c5223d3;
            c5223d3.f18594d = this;
            c5223d2.f18595e = this;
        }

        /* renamed from: a */
        public final C5223d<K, V> m32821a() {
            C5223d<K, V> c5223d = this;
            for (C5223d<K, V> c5223d2 = this.f18592b; c5223d2 != null; c5223d2 = c5223d2.f18592b) {
                c5223d = c5223d2;
            }
            return c5223d;
        }

        /* renamed from: b */
        public final C5223d<K, V> m32820b() {
            C5223d<K, V> c5223d = this;
            for (C5223d<K, V> c5223d2 = this.f18593c; c5223d2 != null; c5223d2 = c5223d2.f18593c) {
                c5223d = c5223d2;
            }
            return c5223d;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k = this.f18596f;
                if (k == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!k.equals(entry.getKey())) {
                    return false;
                }
                V v = this.f18597g;
                return v == null ? entry.getValue() == null : v.equals(entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f18596f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f18597g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f18596f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f18597g;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.f18597g;
            this.f18597g = v;
            return v2;
        }

        public final String toString() {
            return this.f18596f + "=" + this.f18597g;
        }
    }

    public C5216h() {
        this(f18575g);
    }

    public C5216h(Comparator<? super K> comparator) {
        this.f18578c = 0;
        this.f18579d = 0;
        this.f18580e = new C5223d<>();
        this.f18576a = comparator == null ? f18575g : comparator;
    }

    /* renamed from: a */
    private void m32834a(C5223d<K, V> c5223d) {
        C5223d<K, V> c5223d2 = c5223d.f18592b;
        C5223d<K, V> c5223d3 = c5223d.f18593c;
        C5223d<K, V> c5223d4 = c5223d3.f18592b;
        C5223d<K, V> c5223d5 = c5223d3.f18593c;
        c5223d.f18593c = c5223d4;
        if (c5223d4 != null) {
            c5223d4.f18591a = c5223d;
        }
        m32833a((C5223d) c5223d, (C5223d) c5223d3);
        c5223d3.f18592b = c5223d;
        c5223d.f18591a = c5223d3;
        c5223d.f18598h = Math.max(c5223d2 != null ? c5223d2.f18598h : 0, c5223d4 != null ? c5223d4.f18598h : 0) + 1;
        int i = c5223d.f18598h;
        int i2 = 0;
        if (c5223d5 != null) {
            i2 = c5223d5.f18598h;
        }
        c5223d3.f18598h = Math.max(i, i2) + 1;
    }

    /* renamed from: a */
    private void m32833a(C5223d<K, V> c5223d, C5223d<K, V> c5223d2) {
        C5223d<K, V> c5223d3 = c5223d.f18591a;
        c5223d.f18591a = null;
        if (c5223d2 != null) {
            c5223d2.f18591a = c5223d3;
        }
        if (c5223d3 == null) {
            this.f18577b = c5223d2;
        } else if (c5223d3.f18592b == c5223d) {
            c5223d3.f18592b = c5223d2;
        } else if (!f18574f && c5223d3.f18593c != c5223d) {
            throw new AssertionError();
        } else {
            c5223d3.f18593c = c5223d2;
        }
    }

    /* renamed from: a */
    private boolean m32830a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    private void m32827b(C5223d<K, V> c5223d) {
        C5223d<K, V> c5223d2 = c5223d.f18592b;
        C5223d<K, V> c5223d3 = c5223d.f18593c;
        C5223d<K, V> c5223d4 = c5223d2.f18592b;
        C5223d<K, V> c5223d5 = c5223d2.f18593c;
        c5223d.f18592b = c5223d5;
        if (c5223d5 != null) {
            c5223d5.f18591a = c5223d;
        }
        m32833a((C5223d) c5223d, (C5223d) c5223d2);
        c5223d2.f18593c = c5223d;
        c5223d.f18591a = c5223d2;
        c5223d.f18598h = Math.max(c5223d3 != null ? c5223d3.f18598h : 0, c5223d5 != null ? c5223d5.f18598h : 0) + 1;
        int i = c5223d.f18598h;
        int i2 = 0;
        if (c5223d4 != null) {
            i2 = c5223d4.f18598h;
        }
        c5223d2.f18598h = Math.max(i, i2) + 1;
    }

    /* renamed from: b */
    private void m32826b(C5223d<K, V> c5223d, boolean z) {
        while (c5223d != null) {
            C5223d<K, V> c5223d2 = c5223d.f18592b;
            C5223d<K, V> c5223d3 = c5223d.f18593c;
            int i = c5223d2 != null ? c5223d2.f18598h : 0;
            int i2 = c5223d3 != null ? c5223d3.f18598h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                C5223d<K, V> c5223d4 = c5223d3.f18592b;
                C5223d<K, V> c5223d5 = c5223d3.f18593c;
                int i4 = c5223d5 != null ? c5223d5.f18598h : 0;
                int i5 = 0;
                if (c5223d4 != null) {
                    i5 = c5223d4.f18598h;
                }
                int i6 = i5 - i4;
                if (i6 == -1 || (i6 == 0 && !z)) {
                    m32834a((C5223d) c5223d);
                } else if (!f18574f && i6 != 1) {
                    throw new AssertionError();
                } else {
                    m32827b((C5223d) c5223d3);
                    m32834a((C5223d) c5223d);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                C5223d<K, V> c5223d6 = c5223d2.f18592b;
                C5223d<K, V> c5223d7 = c5223d2.f18593c;
                int i7 = c5223d7 != null ? c5223d7.f18598h : 0;
                int i8 = 0;
                if (c5223d6 != null) {
                    i8 = c5223d6.f18598h;
                }
                int i9 = i8 - i7;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    m32827b((C5223d) c5223d);
                } else if (!f18574f && i9 != -1) {
                    throw new AssertionError();
                } else {
                    m32834a((C5223d) c5223d2);
                    m32827b((C5223d) c5223d);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                c5223d.f18598h = i + 1;
                if (z) {
                    return;
                }
            } else if (!f18574f && i3 != -1 && i3 != 1) {
                throw new AssertionError();
            } else {
                c5223d.f18598h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            c5223d = c5223d.f18591a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    final C5223d<K, V> m32831a(Object obj) {
        if (obj != 0) {
            try {
                return m32829a((C5216h<K, V>) obj, false);
            } catch (ClassCastException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    final C5223d<K, V> m32829a(K k, boolean z) {
        int i;
        C5223d<K, V> c5223d;
        Comparator<? super K> comparator = this.f18576a;
        C5223d<K, V> c5223d2 = this.f18577b;
        if (c5223d2 != null) {
            Comparable comparable = comparator == f18575g ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(c5223d2.f18596f) : comparator.compare(k, (K) c5223d2.f18596f);
                if (i != 0) {
                    C5223d<K, V> c5223d3 = i < 0 ? c5223d2.f18592b : c5223d2.f18593c;
                    if (c5223d3 == null) {
                        break;
                    }
                    c5223d2 = c5223d3;
                } else {
                    return c5223d2;
                }
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        C5223d<K, V> c5223d4 = this.f18580e;
        if (c5223d2 != null) {
            c5223d = new C5223d<>(c5223d2, k, c5223d4, c5223d4.f18595e);
            if (i < 0) {
                c5223d2.f18592b = c5223d;
            } else {
                c5223d2.f18593c = c5223d;
            }
            m32826b(c5223d2, true);
        } else if (comparator == f18575g && !(k instanceof Comparable)) {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        } else {
            c5223d = new C5223d<>(c5223d2, k, c5223d4, c5223d4.f18595e);
            this.f18577b = c5223d;
        }
        this.f18578c++;
        this.f18579d++;
        return c5223d;
    }

    /* renamed from: a */
    final C5223d<K, V> m32828a(Map.Entry<?, ?> entry) {
        C5223d<K, V> m32831a = m32831a(entry.getKey());
        if (m32831a != null && m32830a(m32831a.f18597g, entry.getValue())) {
            return m32831a;
        }
        return null;
    }

    /* renamed from: a */
    final void m32832a(C5223d<K, V> c5223d, boolean z) {
        int i;
        if (z) {
            c5223d.f18595e.f18594d = c5223d.f18594d;
            c5223d.f18594d.f18595e = c5223d.f18595e;
        }
        C5223d<K, V> c5223d2 = c5223d.f18592b;
        C5223d<K, V> c5223d3 = c5223d.f18593c;
        C5223d<K, V> c5223d4 = c5223d.f18591a;
        int i2 = 0;
        if (c5223d2 == null || c5223d3 == null) {
            if (c5223d2 != null) {
                m32833a((C5223d) c5223d, (C5223d) c5223d2);
                c5223d.f18592b = null;
            } else if (c5223d3 != null) {
                m32833a((C5223d) c5223d, (C5223d) c5223d3);
                c5223d.f18593c = null;
            } else {
                m32833a((C5223d) c5223d, (C5223d) null);
            }
            m32826b(c5223d4, false);
            this.f18578c--;
            this.f18579d++;
            return;
        }
        C5223d<K, V> m32820b = c5223d2.f18598h > c5223d3.f18598h ? c5223d2.m32820b() : c5223d3.m32821a();
        m32832a((C5223d) m32820b, false);
        C5223d<K, V> c5223d5 = c5223d.f18592b;
        if (c5223d5 != null) {
            i = c5223d5.f18598h;
            m32820b.f18592b = c5223d5;
            c5223d5.f18591a = m32820b;
            c5223d.f18592b = null;
        } else {
            i = 0;
        }
        C5223d<K, V> c5223d6 = c5223d.f18593c;
        if (c5223d6 != null) {
            i2 = c5223d6.f18598h;
            m32820b.f18593c = c5223d6;
            c5223d6.f18591a = m32820b;
            c5223d.f18593c = null;
        }
        m32820b.f18598h = Math.max(i, i2) + 1;
        m32833a((C5223d) c5223d, (C5223d) m32820b);
    }

    /* renamed from: b */
    final C5223d<K, V> m32825b(Object obj) {
        C5223d<K, V> m32831a = m32831a(obj);
        if (m32831a != null) {
            m32832a((C5223d) m32831a, true);
        }
        return m32831a;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f18577b = null;
        this.f18578c = 0;
        this.f18579d++;
        C5223d<K, V> c5223d = this.f18580e;
        c5223d.f18595e = c5223d;
        c5223d.f18594d = c5223d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return m32831a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        C5216h<K, V>.C5218a c5218a = this.f18581h;
        if (c5218a != null) {
            return c5218a;
        }
        C5216h<K, V>.C5218a c5218a2 = new C5218a();
        this.f18581h = c5218a2;
        return c5218a2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        C5223d<K, V> m32831a = m32831a(obj);
        if (m32831a != null) {
            return m32831a.f18597g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        C5216h<K, V>.C5220b c5220b = this.f18582i;
        if (c5220b != null) {
            return c5220b;
        }
        C5216h<K, V>.C5220b c5220b2 = new C5220b();
        this.f18582i = c5220b2;
        return c5220b2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        C5223d<K, V> m32829a = m32829a((C5216h<K, V>) k, true);
        V v2 = m32829a.f18597g;
        m32829a.f18597g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        C5223d<K, V> m32825b = m32825b(obj);
        if (m32825b != null) {
            return m32825b.f18597g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f18578c;
    }
}
