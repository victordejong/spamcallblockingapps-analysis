package com.google.common.collect;

import com.google.common.collect.AbstractC15545t;
import com.google.common.collect.C15446ag;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
/* renamed from: com.google.common.collect.x */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/x.class */
public abstract class AbstractC15556x<K, V> implements Serializable, Map<K, V> {

    /* renamed from: a */
    static final Map.Entry<?, ?>[] f55859a = new Map.Entry[0];

    /* renamed from: b */
    private transient AbstractC15566z<Map.Entry<K, V>> f55860b;

    /* renamed from: c */
    private transient AbstractC15566z<K> f55861c;

    /* renamed from: d */
    private transient AbstractC15545t<V> f55862d;

    /* renamed from: com.google.common.collect.x$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/x$a.class */
    public static final class C15557a<K, V> {

        /* renamed from: a */
        Comparator<? super V> f55863a;

        /* renamed from: b */
        Object[] f55864b;

        /* renamed from: c */
        int f55865c;

        /* renamed from: d */
        boolean f55866d;

        public C15557a() {
            this(4);
        }

        public C15557a(int i) {
            this.f55864b = new Object[i * 2];
            this.f55865c = 0;
            this.f55866d = false;
        }

        /* renamed from: b */
        private void m8692b() {
            int i;
            if (this.f55863a != null) {
                if (this.f55866d) {
                    this.f55864b = Arrays.copyOf(this.f55864b, this.f55865c * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.f55865c];
                int i2 = 0;
                while (true) {
                    i = this.f55865c;
                    if (i2 >= i) {
                        break;
                    }
                    Object[] objArr = this.f55864b;
                    int i3 = i2 * 2;
                    entryArr[i2] = new AbstractMap.SimpleImmutableEntry(objArr[i3], objArr[i3 + 1]);
                    i2++;
                }
                Arrays.sort(entryArr, 0, i, AbstractC15470an.m8834a(this.f55863a).m8835a(C15446ag.EnumC15449a.VALUE));
                for (int i4 = 0; i4 < this.f55865c; i4++) {
                    int i5 = i4 * 2;
                    this.f55864b[i5] = entryArr[i4].getKey();
                    this.f55864b[i5 + 1] = entryArr[i4].getValue();
                }
            }
        }

        /* renamed from: a */
        public final C15557a<K, V> m8693a(K k, V v) {
            m8694a(this.f55865c + 1);
            C15524i.m8780a(k, v);
            Object[] objArr = this.f55864b;
            int i = this.f55865c;
            objArr[i * 2] = k;
            objArr[(i * 2) + 1] = v;
            this.f55865c = i + 1;
            return this;
        }

        /* renamed from: a */
        public final AbstractC15556x<K, V> m8695a() {
            m8692b();
            this.f55866d = true;
            return C15472ap.m8832a(this.f55865c, this.f55864b);
        }

        /* renamed from: a */
        final void m8694a(int i) {
            int i2 = i * 2;
            Object[] objArr = this.f55864b;
            if (i2 > objArr.length) {
                this.f55864b = Arrays.copyOf(objArr, AbstractC15545t.AbstractC15547b.m8730a(objArr.length, i2));
                this.f55866d = false;
            }
        }
    }

    /* renamed from: com.google.common.collect.x$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/x$b.class */
    static final class C15558b<K, V> implements Serializable {

        /* renamed from: a */
        private final Object f55867a;

        /* renamed from: b */
        private final Object f55868b;

        C15558b(AbstractC15556x<K, V> abstractC15556x) {
            Object[] objArr = new Object[abstractC15556x.size()];
            Object[] objArr2 = new Object[abstractC15556x.size()];
            AbstractC15493ay<Map.Entry<K, V>> it2 = abstractC15556x.entrySet().iterator();
            int i = 0;
            while (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                objArr[i] = next.getKey();
                objArr2[i] = next.getValue();
                i++;
            }
            this.f55867a = objArr;
            this.f55868b = objArr2;
        }

        /* renamed from: a */
        private static C15557a<K, V> m8691a(int i) {
            return new C15557a<>(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        final Object readResolve() {
            Object obj = this.f55867a;
            if (!(obj instanceof AbstractC15566z)) {
                Object[] objArr = (Object[]) obj;
                Object[] objArr2 = (Object[]) this.f55868b;
                C15557a m8691a = m8691a(objArr.length);
                for (int i = 0; i < objArr.length; i++) {
                    m8691a.m8693a(objArr[i], objArr2[i]);
                }
                return m8691a.m8695a();
            }
            AbstractC15566z abstractC15566z = (AbstractC15566z) obj;
            AbstractC15545t abstractC15545t = (AbstractC15545t) this.f55868b;
            C15557a m8691a2 = m8691a(abstractC15566z.size());
            AbstractC15493ay it2 = abstractC15566z.iterator();
            AbstractC15493ay it3 = abstractC15545t.iterator();
            while (it2.hasNext()) {
                m8691a2.m8693a(it2.next(), it3.next());
            }
            return m8691a2.m8695a();
        }
    }

    /* renamed from: a */
    public static <K, V> AbstractC15556x<K, V> m8704a() {
        return (AbstractC15556x<K, V>) C15472ap.f55735b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <K, V> AbstractC15556x<K, V> m8703a(Map<? extends K, ? extends V> map) {
        if (!(map instanceof AbstractC15556x) || (map instanceof SortedMap)) {
            Set<Map.Entry<? extends K, ? extends V>> entrySet = map.entrySet();
            boolean z = entrySet instanceof Collection;
            C15557a c15557a = new C15557a(z ? entrySet.size() : 4);
            if (z) {
                c15557a.m8694a(c15557a.f55865c + entrySet.size());
            }
            Iterator<T> it2 = entrySet.iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                c15557a.m8693a(entry.getKey(), entry.getValue());
            }
            return c15557a.m8695a();
        }
        return (AbstractC15556x) map;
    }

    /* renamed from: b */
    public static <K, V> C15557a<K, V> m8702b() {
        return new C15557a<>();
    }

    /* renamed from: c */
    public final AbstractC15566z<Map.Entry<K, V>> entrySet() {
        AbstractC15566z<Map.Entry<K, V>> abstractC15566z = this.f55860b;
        AbstractC15566z<Map.Entry<K, V>> abstractC15566z2 = abstractC15566z;
        if (abstractC15566z == null) {
            abstractC15566z2 = mo8700d();
            this.f55860b = abstractC15566z2;
        }
        return abstractC15566z2;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    /* renamed from: d */
    abstract AbstractC15566z<Map.Entry<K, V>> mo8700d();

    /* renamed from: e */
    public final AbstractC15566z<K> keySet() {
        AbstractC15566z<K> abstractC15566z = this.f55861c;
        AbstractC15566z<K> abstractC15566z2 = abstractC15566z;
        if (abstractC15566z == null) {
            abstractC15566z2 = mo8698f();
            this.f55861c = abstractC15566z2;
        }
        return abstractC15566z2;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return entrySet().equals(((Map) obj).entrySet());
    }

    /* renamed from: f */
    abstract AbstractC15566z<K> mo8698f();

    /* renamed from: g */
    public final AbstractC15545t<V> values() {
        AbstractC15545t<V> abstractC15545t = this.f55862d;
        AbstractC15545t<V> abstractC15545t2 = abstractC15545t;
        if (abstractC15545t == null) {
            abstractC15545t2 = mo8696h();
            this.f55862d = abstractC15545t2;
        }
        return abstractC15545t2;
    }

    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    /* renamed from: h */
    abstract AbstractC15545t<V> mo8696h();

    @Override // java.util.Map
    public int hashCode() {
        return C15484av.m8824a(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        C15524i.m8781a(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
        }
        sb.append('}');
        return sb.toString();
    }

    Object writeReplace() {
        return new C15558b(this);
    }
}
