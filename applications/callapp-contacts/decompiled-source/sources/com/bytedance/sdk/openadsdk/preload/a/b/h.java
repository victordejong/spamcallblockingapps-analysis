package com.bytedance.sdk.openadsdk.preload.a.b;

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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h.class */
public final class h<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean f = true;
    private static final Comparator<Comparable> g = new Comparator<Comparable>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.h.1
        /* renamed from: a */
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    Comparator<? super K> f10032a;

    /* renamed from: b  reason: collision with root package name */
    d<K, V> f10033b;

    /* renamed from: c  reason: collision with root package name */
    int f10034c;

    /* renamed from: d  reason: collision with root package name */
    int f10035d;
    final d<K, V> e;
    private h<K, V>.a h;
    private h<K, V>.b i;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h$a.class */
    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && h.this.a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new h<K, V>.c<Map.Entry<K, V>>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.h.a.1
                {
                    h hVar = h.this;
                }

                /* renamed from: a */
                public Map.Entry<K, V> next() {
                    return b();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            d<K, V> a2;
            if (!(obj instanceof Map.Entry) || (a2 = h.this.a((Map.Entry) obj)) == null) {
                return false;
            }
            h.this.a((d) a2, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return h.this.f10034c;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h$b.class */
    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return h.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new h<K, V>.c<K>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.h.b.1
                {
                    h hVar = h.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return b().f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return h.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return h.this.f10034c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h$c.class */
    public abstract class c<T> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f10040b;

        /* renamed from: c  reason: collision with root package name */
        d<K, V> f10041c = null;

        /* renamed from: d  reason: collision with root package name */
        int f10042d;

        c() {
            this.f10040b = h.this.e.f10046d;
            this.f10042d = h.this.f10035d;
        }

        final d<K, V> b() {
            d<K, V> dVar = this.f10040b;
            if (dVar == h.this.e) {
                throw new NoSuchElementException();
            } else if (h.this.f10035d == this.f10042d) {
                this.f10040b = dVar.f10046d;
                this.f10041c = dVar;
                return dVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10040b != h.this.e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d<K, V> dVar = this.f10041c;
            if (dVar != null) {
                h.this.a((d) dVar, true);
                this.f10041c = null;
                this.f10042d = h.this.f10035d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/h$d.class */
    public static final class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        d<K, V> f10043a;

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f10044b;

        /* renamed from: c  reason: collision with root package name */
        d<K, V> f10045c;

        /* renamed from: d  reason: collision with root package name */
        d<K, V> f10046d;
        d<K, V> e;
        final K f;
        V g;
        int h;

        d() {
            this.f = null;
            this.e = this;
            this.f10046d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f10043a = dVar;
            this.f = k;
            this.h = 1;
            this.f10046d = dVar2;
            this.e = dVar3;
            dVar3.f10046d = this;
            dVar2.e = this;
        }

        public final d<K, V> a() {
            d<K, V> dVar = this.f10044b;
            d<K, V> dVar2 = this;
            while (dVar != null) {
                dVar = dVar.f10044b;
                dVar2 = dVar;
            }
            return dVar2;
        }

        public final d<K, V> b() {
            d<K, V> dVar = this.f10045c;
            d<K, V> dVar2 = this;
            while (dVar != null) {
                dVar = dVar.f10045c;
                dVar2 = dVar;
            }
            return dVar2;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.f;
            if (k == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k.equals(entry.getKey())) {
                return false;
            }
            V v = this.g;
            return v == null ? entry.getValue() == null : v.equals(entry.getValue());
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.g;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.g;
            this.g = v;
            return v2;
        }

        public final String toString() {
            return this.f + "=" + this.g;
        }
    }

    public h() {
        this(g);
    }

    public h(Comparator<? super K> comparator) {
        this.f10034c = 0;
        this.f10035d = 0;
        this.e = new d<>();
        this.f10032a = comparator == null ? g : comparator;
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f10044b;
        d<K, V> dVar3 = dVar.f10045c;
        d<K, V> dVar4 = dVar3.f10044b;
        d<K, V> dVar5 = dVar3.f10045c;
        dVar.f10045c = dVar4;
        if (dVar4 != null) {
            dVar4.f10043a = dVar;
        }
        a((d) dVar, (d) dVar3);
        dVar3.f10044b = dVar;
        dVar.f10043a = dVar3;
        int i = 0;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar5 != null) {
            i = dVar5.h;
        }
        dVar3.h = Math.max(i2, i) + 1;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f10043a;
        dVar.f10043a = null;
        if (dVar2 != null) {
            dVar2.f10043a = dVar3;
        }
        if (dVar3 == null) {
            this.f10033b = dVar2;
        } else if (dVar3.f10044b == dVar) {
            dVar3.f10044b = dVar2;
        } else if (f || dVar3.f10045c == dVar) {
            dVar3.f10045c = dVar2;
        } else {
            throw new AssertionError();
        }
    }

    private boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f10044b;
        d<K, V> dVar3 = dVar.f10045c;
        d<K, V> dVar4 = dVar2.f10044b;
        d<K, V> dVar5 = dVar2.f10045c;
        dVar.f10044b = dVar5;
        if (dVar5 != null) {
            dVar5.f10043a = dVar;
        }
        a((d) dVar, (d) dVar2);
        dVar2.f10045c = dVar;
        dVar.f10043a = dVar2;
        int i = 0;
        dVar.h = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar4 != null) {
            i = dVar4.h;
        }
        dVar2.h = Math.max(i2, i) + 1;
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f10044b;
            d<K, V> dVar3 = dVar.f10045c;
            int i = 0;
            int i2 = 0;
            int i3 = dVar2 != null ? dVar2.h : 0;
            int i4 = dVar3 != null ? dVar3.h : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                d<K, V> dVar4 = dVar3.f10044b;
                d<K, V> dVar5 = dVar3.f10045c;
                int i6 = dVar5 != null ? dVar5.h : 0;
                if (dVar4 != null) {
                    i2 = dVar4.h;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    a((d) dVar);
                } else if (f || i7 == 1) {
                    b((d) dVar3);
                    a((d) dVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                d<K, V> dVar6 = dVar2.f10044b;
                d<K, V> dVar7 = dVar2.f10045c;
                int i8 = dVar7 != null ? dVar7.h : 0;
                if (dVar6 != null) {
                    i = dVar6.h;
                }
                int i9 = i - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    b((d) dVar);
                } else if (f || i9 == -1) {
                    a((d) dVar2);
                    b((d) dVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                dVar.h = i3 + 1;
                if (z) {
                    return;
                }
            } else if (f || i5 == -1 || i5 == 1) {
                dVar.h = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            dVar = dVar.f10043a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    final d<K, V> a(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a((h<K, V>) obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    final d<K, V> a(K k, boolean z) {
        int i;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.f10032a;
        d<K, V> dVar2 = this.f10033b;
        if (dVar2 != null) {
            Comparable comparable = comparator == g ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(dVar2.f) : comparator.compare(k, (K) dVar2.f);
                if (i != 0) {
                    d<K, V> dVar3 = i < 0 ? dVar2.f10044b : dVar2.f10045c;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar2 = dVar3;
                } else {
                    return dVar2;
                }
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        d<K, V> dVar4 = this.e;
        if (dVar2 != null) {
            dVar = new d<>(dVar2, k, dVar4, dVar4.e);
            if (i < 0) {
                dVar2.f10044b = dVar;
            } else {
                dVar2.f10045c = dVar;
            }
            b(dVar2, true);
        } else if (comparator != g || (k instanceof Comparable)) {
            dVar = new d<>(dVar2, k, dVar4, dVar4.e);
            this.f10033b = dVar;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.f10034c++;
        this.f10035d++;
        return dVar;
    }

    final d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> a2 = a(entry.getKey());
        if (a2 != null && a(a2.g, entry.getValue())) {
            return a2;
        }
        return null;
    }

    final void a(d<K, V> dVar, boolean z) {
        int i;
        if (z) {
            dVar.e.f10046d = dVar.f10046d;
            dVar.f10046d.e = dVar.e;
        }
        d<K, V> dVar2 = dVar.f10044b;
        d<K, V> dVar3 = dVar.f10045c;
        d<K, V> dVar4 = dVar.f10043a;
        int i2 = 0;
        if (dVar2 == null || dVar3 == null) {
            if (dVar2 != null) {
                a((d) dVar, (d) dVar2);
                dVar.f10044b = null;
            } else if (dVar3 != null) {
                a((d) dVar, (d) dVar3);
                dVar.f10045c = null;
            } else {
                a((d) dVar, (d) null);
            }
            b(dVar4, false);
            this.f10034c--;
            this.f10035d++;
            return;
        }
        d<K, V> b2 = dVar2.h > dVar3.h ? dVar2.b() : dVar3.a();
        a((d) b2, false);
        d<K, V> dVar5 = dVar.f10044b;
        if (dVar5 != null) {
            i = dVar5.h;
            b2.f10044b = dVar5;
            dVar5.f10043a = b2;
            dVar.f10044b = null;
        } else {
            i = 0;
        }
        d<K, V> dVar6 = dVar.f10045c;
        if (dVar6 != null) {
            i2 = dVar6.h;
            b2.f10045c = dVar6;
            dVar6.f10043a = b2;
            dVar.f10045c = null;
        }
        b2.h = Math.max(i, i2) + 1;
        a((d) dVar, (d) b2);
    }

    final d<K, V> b(Object obj) {
        d<K, V> a2 = a(obj);
        if (a2 != null) {
            a((d) a2, true);
        }
        return a2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f10033b = null;
        this.f10034c = 0;
        this.f10035d++;
        d<K, V> dVar = this.e;
        dVar.e = dVar;
        dVar.f10046d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        h<K, V>.a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        h<K, V>.a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        d<K, V> a2 = a(obj);
        if (a2 != null) {
            return a2.g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        h<K, V>.b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        h<K, V>.b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        d<K, V> a2 = a((h<K, V>) k, true);
        V v2 = a2.g;
        a2.g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            return b2.g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f10034c;
    }
}
