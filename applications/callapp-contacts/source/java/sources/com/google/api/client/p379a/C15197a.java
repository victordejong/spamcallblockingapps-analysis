package com.google.api.client.p379a;

import com.google.common.base.C15386j;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: com.google.api.client.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a.class */
public class C15197a<K, V> extends AbstractMap<K, V> implements Cloneable {

    /* renamed from: a */
    int f55033a;

    /* renamed from: b */
    Object[] f55034b;

    /* renamed from: com.google.api.client.a.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a$a.class */
    final class C15198a implements Map.Entry<K, V> {

        /* renamed from: b */
        private int f55036b;

        C15198a(int i) {
            C15197a.this = r4;
            this.f55036b = i;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return C15386j.m8951a(getKey(), entry.getKey()) && C15386j.m8951a(getValue(), entry.getValue());
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            C15197a c15197a = C15197a.this;
            int i = this.f55036b;
            if (i < 0 || i >= c15197a.f55033a) {
                return null;
            }
            return (K) c15197a.f55034b[i << 1];
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return (V) C15197a.this.m9305a(this.f55036b);
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
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
        public final V setValue(V v) {
            return (V) C15197a.this.m9304a(this.f55036b, v);
        }
    }

    /* renamed from: com.google.api.client.a.a$b */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a$b.class */
    final class C15199b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private boolean f55038b;

        /* renamed from: c */
        private int f55039c;

        C15199b() {
            C15197a.this = r4;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f55039c < C15197a.this.f55033a;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            int i = this.f55039c;
            if (i != C15197a.this.f55033a) {
                this.f55039c++;
                this.f55038b = false;
                return new C15198a(i);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            int i = this.f55039c - 1;
            if (this.f55038b || i < 0) {
                throw new IllegalArgumentException();
            }
            C15197a.this.m9300b(i << 1);
            this.f55039c--;
            this.f55038b = true;
        }
    }

    /* renamed from: com.google.api.client.a.a$c */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a$c.class */
    final class C15200c extends AbstractSet<Map.Entry<K, V>> {
        C15200c() {
            C15197a.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new C15199b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C15197a.this.f55033a;
        }
    }

    /* renamed from: a */
    private int m9302a(Object obj) {
        int i = this.f55033a;
        Object[] objArr = this.f55034b;
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

    /* renamed from: a */
    public static <K, V> C15197a<K, V> m9306a() {
        return new C15197a<>();
    }

    /* renamed from: a */
    private void m9303a(int i, K k, V v) {
        Object[] objArr = this.f55034b;
        objArr[i] = k;
        objArr[i + 1] = v;
    }

    /* renamed from: c */
    private V m9299c(int i) {
        if (i < 0) {
            return null;
        }
        return (V) this.f55034b[i];
    }

    /* renamed from: a */
    public final V m9305a(int i) {
        if (i < 0 || i >= this.f55033a) {
            return null;
        }
        return m9299c((i << 1) + 1);
    }

    /* renamed from: a */
    public final V m9304a(int i, V v) {
        int i2 = this.f55033a;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = (i << 1) + 1;
        V m9299c = m9299c(i3);
        this.f55034b[i3] = v;
        return m9299c;
    }

    /* renamed from: b */
    public final C15197a<K, V> clone() {
        try {
            C15197a<K, V> c15197a = (C15197a) super.clone();
            Object[] objArr = this.f55034b;
            if (objArr != null) {
                int length = objArr.length;
                Object[] objArr2 = new Object[length];
                c15197a.f55034b = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
            }
            return c15197a;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: b */
    final V m9300b(int i) {
        int i2 = this.f55033a << 1;
        if (i < 0 || i >= i2) {
            return null;
        }
        V m9299c = m9299c(i + 1);
        Object[] objArr = this.f55034b;
        int i3 = (i2 - i) - 2;
        if (i3 != 0) {
            System.arraycopy(objArr, i + 2, objArr, i, i3);
        }
        this.f55033a--;
        m9303a(i2 - 2, null, null);
        return m9299c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f55033a = 0;
        this.f55034b = null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return -2 != m9302a(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        int i = this.f55033a;
        Object[] objArr = this.f55034b;
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
        return new C15200c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        return m9299c(m9302a(obj) + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int m9302a = m9302a(k) >> 1;
        int i = m9302a;
        if (m9302a == -1) {
            i = this.f55033a;
        }
        if (i >= 0) {
            int i2 = i + 1;
            if (i2 < 0) {
                throw new IndexOutOfBoundsException();
            }
            Object[] objArr = this.f55034b;
            int i3 = i2 << 1;
            int length = objArr == null ? 0 : objArr.length;
            if (i3 > length) {
                int i4 = ((length / 2) * 3) + 1;
                int i5 = i4;
                if (i4 % 2 != 0) {
                    i5 = i4 + 1;
                }
                if (i5 < i3) {
                    i5 = i3;
                }
                if (i5 == 0) {
                    this.f55034b = null;
                } else {
                    int i6 = this.f55033a;
                    if (i6 == 0 || i5 != objArr.length) {
                        Object[] objArr2 = new Object[i5];
                        this.f55034b = objArr2;
                        if (i6 != 0) {
                            System.arraycopy(objArr, 0, objArr2, 0, i6 << 1);
                        }
                    }
                }
            }
            int i7 = i << 1;
            V m9299c = m9299c(i7 + 1);
            m9303a(i7, k, v);
            if (i2 > this.f55033a) {
                this.f55033a = i2;
            }
            return m9299c;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        return m9300b(m9302a(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f55033a;
    }
}
