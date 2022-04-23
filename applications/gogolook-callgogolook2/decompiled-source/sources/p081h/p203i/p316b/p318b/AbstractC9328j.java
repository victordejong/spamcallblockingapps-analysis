package p081h.p203i.p316b.p318b;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import p081h.p203i.p316b.p318b.AbstractC9321h;
/* renamed from: h.i.b.b.j */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/j.class */
public abstract class AbstractC9328j<K, V> implements Map<K, V>, Serializable {

    /* renamed from: a */
    public transient AbstractC9331k<Map.Entry<K, V>> f21356a;

    /* renamed from: b */
    public transient AbstractC9331k<K> f21357b;

    /* renamed from: c */
    public transient AbstractC9321h<V> f21358c;

    /* renamed from: h.i.b.b.j$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/j$a.class */
    public static class C9329a<K, V> {

        /* renamed from: a */
        public Comparator<? super V> f21359a;

        /* renamed from: b */
        public Object[] f21360b;

        /* renamed from: c */
        public int f21361c = 0;

        /* renamed from: d */
        public boolean f21362d = false;

        public C9329a(int i) {
            this.f21360b = new Object[i * 2];
        }

        /* renamed from: a */
        public C9329a<K, V> m15418a(K k, V v) {
            m15419a(this.f21361c + 1);
            C9317d.m15439a(k, v);
            Object[] objArr = this.f21360b;
            int i = this.f21361c;
            objArr[i * 2] = k;
            objArr[(i * 2) + 1] = v;
            this.f21361c = i + 1;
            return this;
        }

        /* renamed from: a */
        public AbstractC9328j<K, V> m15420a() {
            m15417b();
            this.f21362d = true;
            return C9345t.m15390a(this.f21361c, this.f21360b);
        }

        /* renamed from: a */
        public final void m15419a(int i) {
            int i2 = i * 2;
            Object[] objArr = this.f21360b;
            if (i2 > objArr.length) {
                this.f21360b = Arrays.copyOf(objArr, AbstractC9321h.AbstractC9322a.m15433a(objArr.length, i2));
                this.f21362d = false;
            }
        }

        /* renamed from: b */
        public void m15417b() {
            int i;
            if (this.f21359a != null) {
                if (this.f21362d) {
                    this.f21360b = Arrays.copyOf(this.f21360b, this.f21361c * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.f21361c];
                int i2 = 0;
                while (true) {
                    i = this.f21361c;
                    if (i2 >= i) {
                        break;
                    }
                    Object[] objArr = this.f21360b;
                    int i3 = i2 * 2;
                    entryArr[i2] = new AbstractMap.SimpleImmutableEntry(objArr[i3], objArr[i3 + 1]);
                    i2++;
                }
                Arrays.sort(entryArr, 0, i, AbstractC9342q.m15394a(this.f21359a).m15395a(C9337o.m15402b()));
                for (int i4 = 0; i4 < this.f21361c; i4++) {
                    int i5 = i4 * 2;
                    this.f21360b[i5] = entryArr[i4].getKey();
                    this.f21360b[i5 + 1] = entryArr[i4].getValue();
                }
            }
        }
    }

    /* renamed from: h.i.b.b.j$b */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/j$b.class */
    public static class C9330b implements Serializable {

        /* renamed from: a */
        public final Object[] f21363a;

        /* renamed from: b */
        public final Object[] f21364b;

        public C9330b(AbstractC9328j<?, ?> jVar) {
            this.f21363a = new Object[jVar.size()];
            this.f21364b = new Object[jVar.size()];
            AbstractC9311a0<Map.Entry<?, ?>> it = jVar.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                this.f21363a[i] = next.getKey();
                this.f21364b[i] = next.getValue();
                i++;
            }
        }

        /* renamed from: a */
        public Object m15416a(C9329a<Object, Object> aVar) {
            int i = 0;
            while (true) {
                Object[] objArr = this.f21363a;
                if (i >= objArr.length) {
                    return aVar.m15420a();
                }
                aVar.m15418a(objArr[i], this.f21364b[i]);
                i++;
            }
        }

        public Object readResolve() {
            return m15416a(new C9329a<>(this.f21363a.length));
        }
    }

    /* renamed from: of */
    public static <K, V> AbstractC9328j<K, V> m15421of(K k, V v, K k2, V v2, K k3, V v3) {
        C9317d.m15439a(k, v);
        C9317d.m15439a(k2, v2);
        C9317d.m15439a(k3, v3);
        return C9345t.m15390a(3, new Object[]{k, v, k2, v2, k3, v3});
    }

    /* renamed from: a */
    public abstract AbstractC9331k<Map.Entry<K, V>> mo15391a();

    /* renamed from: b */
    public abstract AbstractC9331k<K> mo15386b();

    /* renamed from: c */
    public abstract AbstractC9321h<V> mo15385c();

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

    @Override // java.util.Map
    public AbstractC9331k<Map.Entry<K, V>> entrySet() {
        AbstractC9331k<Map.Entry<K, V>> kVar = this.f21356a;
        AbstractC9331k<Map.Entry<K, V>> kVar2 = kVar;
        if (kVar == null) {
            kVar2 = mo15391a();
            this.f21356a = kVar2;
        }
        return kVar2;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return C9337o.m15403a(this, obj);
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        if (v2 != null) {
            v = v2;
        }
        return v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return C9352w.m15376a(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public AbstractC9331k<K> keySet() {
        AbstractC9331k<K> kVar = this.f21357b;
        AbstractC9331k<K> kVar2 = kVar;
        if (kVar == null) {
            kVar2 = mo15386b();
            this.f21357b = kVar2;
        }
        return kVar2;
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
        return C9337o.m15404a(this);
    }

    @Override // java.util.Map
    public AbstractC9321h<V> values() {
        AbstractC9321h<V> hVar = this.f21358c;
        AbstractC9321h<V> hVar2 = hVar;
        if (hVar == null) {
            hVar2 = mo15385c();
            this.f21358c = hVar2;
        }
        return hVar2;
    }

    public Object writeReplace() {
        return new C9330b(this);
    }
}
