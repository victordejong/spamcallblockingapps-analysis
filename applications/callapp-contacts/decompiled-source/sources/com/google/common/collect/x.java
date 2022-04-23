package com.google.common.collect;

import com.google.common.collect.ag;
import com.google.common.collect.t;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/x.class */
public abstract class x<K, V> implements Serializable, Map<K, V> {

    /* renamed from: a  reason: collision with root package name */
    static final Map.Entry<?, ?>[] f32119a = new Map.Entry[0];

    /* renamed from: b  reason: collision with root package name */
    private transient z<Map.Entry<K, V>> f32120b;

    /* renamed from: c  reason: collision with root package name */
    private transient z<K> f32121c;

    /* renamed from: d  reason: collision with root package name */
    private transient t<V> f32122d;

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/x$a.class */
    public static final class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        Comparator<? super V> f32123a;

        /* renamed from: b  reason: collision with root package name */
        Object[] f32124b;

        /* renamed from: c  reason: collision with root package name */
        int f32125c;

        /* renamed from: d  reason: collision with root package name */
        boolean f32126d;

        public a() {
            this(4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i) {
            this.f32124b = new Object[i * 2];
            this.f32125c = 0;
            this.f32126d = false;
        }

        private void b() {
            int i;
            if (this.f32123a != null) {
                if (this.f32126d) {
                    this.f32124b = Arrays.copyOf(this.f32124b, this.f32125c * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.f32125c];
                int i2 = 0;
                while (true) {
                    i = this.f32125c;
                    if (i2 >= i) {
                        break;
                    }
                    Object[] objArr = this.f32124b;
                    int i3 = i2 * 2;
                    entryArr[i2] = new AbstractMap.SimpleImmutableEntry(objArr[i3], objArr[i3 + 1]);
                    i2++;
                }
                Arrays.sort(entryArr, 0, i, an.a(this.f32123a).a(ag.a.VALUE));
                for (int i4 = 0; i4 < this.f32125c; i4++) {
                    int i5 = i4 * 2;
                    this.f32124b[i5] = entryArr[i4].getKey();
                    this.f32124b[i5 + 1] = entryArr[i4].getValue();
                }
            }
        }

        public final a<K, V> a(K k, V v) {
            a(this.f32125c + 1);
            i.a(k, v);
            Object[] objArr = this.f32124b;
            int i = this.f32125c;
            objArr[i * 2] = k;
            objArr[(i * 2) + 1] = v;
            this.f32125c = i + 1;
            return this;
        }

        public final x<K, V> a() {
            b();
            this.f32126d = true;
            return ap.a(this.f32125c, this.f32124b);
        }

        final void a(int i) {
            int i2 = i * 2;
            Object[] objArr = this.f32124b;
            if (i2 > objArr.length) {
                this.f32124b = Arrays.copyOf(objArr, t.b.a(objArr.length, i2));
                this.f32126d = false;
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/x$b.class */
    static final class b<K, V> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Object f32127a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f32128b;

        b(x<K, V> xVar) {
            Object[] objArr = new Object[xVar.size()];
            Object[] objArr2 = new Object[xVar.size()];
            ay<Map.Entry<K, V>> a2 = xVar.entrySet().iterator();
            int i = 0;
            while (a2.hasNext()) {
                Map.Entry<K, V> next = a2.next();
                objArr[i] = next.getKey();
                objArr2[i] = next.getValue();
                i++;
            }
            this.f32127a = objArr;
            this.f32128b = objArr2;
        }

        private static a<K, V> a(int i) {
            return new a<>(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        final Object readResolve() {
            Object obj = this.f32127a;
            if (!(obj instanceof z)) {
                Object[] objArr = (Object[]) obj;
                Object[] objArr2 = (Object[]) this.f32128b;
                a a2 = a(objArr.length);
                for (int i = 0; i < objArr.length; i++) {
                    a2.a(objArr[i], objArr2[i]);
                }
                return a2.a();
            }
            z zVar = (z) obj;
            t tVar = (t) this.f32128b;
            a a3 = a(zVar.size());
            ay a4 = zVar.iterator();
            ay a5 = tVar.iterator();
            while (a4.hasNext()) {
                a3.a(a4.next(), a5.next());
            }
            return a3.a();
        }
    }

    public static <K, V> x<K, V> a() {
        return (x<K, V>) ap.f32010b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> x<K, V> a(Map<? extends K, ? extends V> map) {
        if ((map instanceof x) && !(map instanceof SortedMap)) {
            return (x) map;
        }
        Set<Map.Entry<? extends K, ? extends V>> entrySet = map.entrySet();
        boolean z = entrySet instanceof Collection;
        a aVar = new a(z ? entrySet.size() : 4);
        if (z) {
            aVar.a(aVar.f32125c + entrySet.size());
        }
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            aVar.a(entry.getKey(), entry.getValue());
        }
        return aVar.a();
    }

    public static <K, V> a<K, V> b() {
        return new a<>();
    }

    /* renamed from: c */
    public final z<Map.Entry<K, V>> entrySet() {
        z<Map.Entry<K, V>> zVar = this.f32120b;
        z<Map.Entry<K, V>> zVar2 = zVar;
        if (zVar == null) {
            zVar2 = d();
            this.f32120b = zVar2;
        }
        return zVar2;
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

    abstract z<Map.Entry<K, V>> d();

    /* renamed from: e */
    public final z<K> keySet() {
        z<K> zVar = this.f32121c;
        z<K> zVar2 = zVar;
        if (zVar == null) {
            zVar2 = f();
            this.f32121c = zVar2;
        }
        return zVar2;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    abstract z<K> f();

    /* renamed from: g */
    public final t<V> values() {
        t<V> tVar = this.f32122d;
        t<V> tVar2 = tVar;
        if (tVar == null) {
            tVar2 = h();
            this.f32122d = tVar2;
        }
        return tVar2;
    }

    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    abstract t<V> h();

    @Override // java.util.Map
    public int hashCode() {
        return av.a(entrySet());
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
        i.a(size, "size");
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
        return new b(this);
    }
}
