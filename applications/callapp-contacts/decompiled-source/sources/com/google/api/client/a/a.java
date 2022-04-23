package com.google.api.client.a;

import com.google.common.base.j;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a.class */
public class a<K, V> extends AbstractMap<K, V> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    int f31585a;

    /* renamed from: b  reason: collision with root package name */
    Object[] f31586b;

    /* renamed from: com.google.api.client.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a$a.class */
    final class C0494a implements Map.Entry<K, V> {

        /* renamed from: b  reason: collision with root package name */
        private int f31588b;

        C0494a(int i) {
            this.f31588b = i;
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
            return j.a(getKey(), entry.getKey()) && j.a(getValue(), entry.getValue());
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            a aVar = a.this;
            int i = this.f31588b;
            if (i < 0 || i >= aVar.f31585a) {
                return null;
            }
            return (K) aVar.f31586b[i << 1];
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return (V) a.this.a(this.f31588b);
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
            return (V) a.this.a(this.f31588b, v);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a$b.class */
    final class b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private boolean f31594b;

        /* renamed from: c  reason: collision with root package name */
        private int f31595c;

        b() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f31595c < a.this.f31585a;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            int i = this.f31595c;
            if (i != a.this.f31585a) {
                this.f31595c++;
                this.f31594b = false;
                return new C0494a(i);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            int i = this.f31595c - 1;
            if (this.f31594b || i < 0) {
                throw new IllegalArgumentException();
            }
            a.this.b(i << 1);
            this.f31595c--;
            this.f31594b = true;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a$c.class */
    final class c extends AbstractSet<Map.Entry<K, V>> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return a.this.f31585a;
        }
    }

    private int a(Object obj) {
        int i = this.f31585a;
        Object[] objArr = this.f31586b;
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

    public static <K, V> a<K, V> a() {
        return new a<>();
    }

    private void a(int i, K k, V v) {
        Object[] objArr = this.f31586b;
        objArr[i] = k;
        objArr[i + 1] = v;
    }

    private V c(int i) {
        if (i < 0) {
            return null;
        }
        return (V) this.f31586b[i];
    }

    public final V a(int i) {
        if (i < 0 || i >= this.f31585a) {
            return null;
        }
        return c((i << 1) + 1);
    }

    public final V a(int i, V v) {
        int i2 = this.f31585a;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = (i << 1) + 1;
        V c2 = c(i3);
        this.f31586b[i3] = v;
        return c2;
    }

    /* renamed from: b */
    public final a<K, V> clone() {
        try {
            a<K, V> aVar = (a) super.clone();
            Object[] objArr = this.f31586b;
            if (objArr != null) {
                int length = objArr.length;
                Object[] objArr2 = new Object[length];
                aVar.f31586b = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
            }
            return aVar;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    final V b(int i) {
        int i2 = this.f31585a << 1;
        if (i < 0 || i >= i2) {
            return null;
        }
        V c2 = c(i + 1);
        Object[] objArr = this.f31586b;
        int i3 = (i2 - i) - 2;
        if (i3 != 0) {
            System.arraycopy(objArr, i + 2, objArr, i, i3);
        }
        this.f31585a--;
        a(i2 - 2, null, null);
        return c2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f31585a = 0;
        this.f31586b = null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return -2 != a(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        int i = this.f31585a;
        Object[] objArr = this.f31586b;
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
        return new c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        return c(a(obj) + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int a2 = a(k) >> 1;
        int i = a2;
        if (a2 == -1) {
            i = this.f31585a;
        }
        if (i >= 0) {
            int i2 = i + 1;
            if (i2 >= 0) {
                Object[] objArr = this.f31586b;
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
                        this.f31586b = null;
                    } else {
                        int i6 = this.f31585a;
                        if (i6 == 0 || i5 != objArr.length) {
                            Object[] objArr2 = new Object[i5];
                            this.f31586b = objArr2;
                            if (i6 != 0) {
                                System.arraycopy(objArr, 0, objArr2, 0, i6 << 1);
                            }
                        }
                    }
                }
                int i7 = i << 1;
                V c2 = c(i7 + 1);
                a(i7, k, v);
                if (i2 > this.f31585a) {
                    this.f31585a = i2;
                }
                return c2;
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        return b(a(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f31585a;
    }
}
