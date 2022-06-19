package com.google.api.client.util;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: com.google.api.client.util.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/a.class */
public class C8684a<K, V> extends AbstractMap<K, V> implements Cloneable {

    /* renamed from: d */
    int f38476d;

    /* renamed from: e */
    private Object[] f38477e;

    /* renamed from: com.google.api.client.util.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/a$a.class */
    public final class C8685a implements Map.Entry<K, V> {

        /* renamed from: d */
        private int f38478d;

        C8685a(int i) {
            C8684a.this = r4;
            this.f38478d = i;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (!C8727v.m2844a(getKey(), entry.getKey()) || !C8727v.m2844a(getValue(), entry.getValue())) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) C8684a.this.m2947h(this.f38478d);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return (V) C8684a.this.m2946i(this.f38478d);
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object key = getKey();
            Object value = getValue();
            int i = 0;
            int hashCode = key != null ? key.hashCode() : 0;
            if (value != null) {
                i = value.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            return (V) C8684a.this.m2943m(this.f38478d, v);
        }
    }

    /* renamed from: com.google.api.client.util.a$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/a$b.class */
    final class C8686b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: d */
        private boolean f38480d;

        /* renamed from: e */
        private int f38481e;

        C8686b() {
            C8684a.this = r4;
        }

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            int i = this.f38481e;
            C8684a c8684a = C8684a.this;
            if (i != c8684a.f38476d) {
                this.f38481e = i + 1;
                this.f38480d = false;
                return new C8685a(i);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f38481e < C8684a.this.f38476d;
        }

        @Override // java.util.Iterator
        public void remove() {
            int i = this.f38481e - 1;
            if (this.f38480d || i < 0) {
                throw new IllegalArgumentException();
            }
            C8684a.this.m2945j(i);
            this.f38481e--;
            this.f38480d = true;
        }
    }

    /* renamed from: com.google.api.client.util.a$c */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/a$c.class */
    final class C8687c extends AbstractSet<Map.Entry<K, V>> {
        C8687c() {
            C8684a.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C8686b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C8684a.this.f38476d;
        }
    }

    /* renamed from: b */
    public static <K, V> C8684a<K, V> m2951b() {
        return new C8684a<>();
    }

    /* renamed from: d */
    private int m2949d(Object obj) {
        int i = this.f38476d;
        Object[] objArr = this.f38477e;
        for (int i2 = 0; i2 < (i << 1); i2 += 2) {
            Object obj2 = objArr[i2];
            if (obj == null) {
                if (obj2 == null) {
                    return i2;
                }
            } else if (obj.equals(obj2)) {
                return i2;
            }
        }
        return -2;
    }

    /* renamed from: l */
    private V m2944l(int i) {
        int i2 = this.f38476d << 1;
        if (i < 0 || i >= i2) {
            return null;
        }
        V m2939q = m2939q(i + 1);
        Object[] objArr = this.f38477e;
        int i3 = (i2 - i) - 2;
        if (i3 != 0) {
            System.arraycopy(objArr, i + 2, objArr, i, i3);
        }
        this.f38476d--;
        m2941o(i2 - 2, null, null);
        return m2939q;
    }

    /* renamed from: o */
    private void m2941o(int i, K k, V v) {
        Object[] objArr = this.f38477e;
        objArr[i] = k;
        objArr[i + 1] = v;
    }

    /* renamed from: p */
    private void m2940p(int i) {
        if (i == 0) {
            this.f38477e = null;
            return;
        }
        int i2 = this.f38476d;
        Object[] objArr = this.f38477e;
        if (i2 != 0 && i == objArr.length) {
            return;
        }
        Object[] objArr2 = new Object[i];
        this.f38477e = objArr2;
        if (i2 == 0) {
            return;
        }
        System.arraycopy(objArr, 0, objArr2, 0, i2 << 1);
    }

    /* renamed from: q */
    private V m2939q(int i) {
        if (i < 0) {
            return null;
        }
        return (V) this.f38477e[i];
    }

    /* renamed from: a */
    public C8684a<K, V> clone() {
        try {
            C8684a<K, V> c8684a = (C8684a) super.clone();
            Object[] objArr = this.f38477e;
            if (objArr != null) {
                int length = objArr.length;
                Object[] objArr2 = new Object[length];
                c8684a.f38477e = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
            }
            return c8684a;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: c */
    public final void m2950c(int i) {
        if (i >= 0) {
            Object[] objArr = this.f38477e;
            int i2 = i << 1;
            int length = objArr == null ? 0 : objArr.length;
            if (i2 <= length) {
                return;
            }
            int i3 = ((length / 2) * 3) + 1;
            int i4 = i3;
            if (i3 % 2 != 0) {
                i4 = i3 + 1;
            }
            if (i4 < i2) {
                i4 = i2;
            }
            m2940p(i4);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f38476d = 0;
        this.f38477e = null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return -2 != m2949d(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        int i = this.f38476d;
        Object[] objArr = this.f38477e;
        for (int i2 = 1; i2 < (i << 1); i2 += 2) {
            Object obj2 = objArr[i2];
            if (obj == null) {
                if (obj2 == null) {
                    return true;
                }
            } else if (obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return new C8687c();
    }

    /* renamed from: g */
    public final int m2948g(K k) {
        return m2949d(k) >> 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        return m2939q(m2949d(obj) + 1);
    }

    /* renamed from: h */
    public final K m2947h(int i) {
        if (i < 0 || i >= this.f38476d) {
            return null;
        }
        return (K) this.f38477e[i << 1];
    }

    /* renamed from: i */
    public final V m2946i(int i) {
        if (i < 0 || i >= this.f38476d) {
            return null;
        }
        return m2939q((i << 1) + 1);
    }

    /* renamed from: j */
    public final V m2945j(int i) {
        return m2944l(i << 1);
    }

    /* renamed from: m */
    public final V m2943m(int i, V v) {
        int i2 = this.f38476d;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = (i << 1) + 1;
        V m2939q = m2939q(i3);
        this.f38477e[i3] = v;
        return m2939q;
    }

    /* renamed from: n */
    public final V m2942n(int i, K k, V v) {
        if (i >= 0) {
            int i2 = i + 1;
            m2950c(i2);
            int i3 = i << 1;
            V m2939q = m2939q(i3 + 1);
            m2941o(i3, k, v);
            if (i2 > this.f38476d) {
                this.f38476d = i2;
            }
            return m2939q;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int m2948g = m2948g(k);
        int i = m2948g;
        if (m2948g == -1) {
            i = this.f38476d;
        }
        return m2942n(i, k, v);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        return m2944l(m2949d(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f38476d;
    }
}
