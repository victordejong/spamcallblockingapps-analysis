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
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g.class */
public final class g<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean f = true;
    private static final Comparator<Comparable> g = new Comparator<Comparable>() { // from class: com.google.gson.internal.g.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    Comparator<? super K> f32794a;

    /* renamed from: b  reason: collision with root package name */
    d<K, V> f32795b;

    /* renamed from: c  reason: collision with root package name */
    int f32796c;

    /* renamed from: d  reason: collision with root package name */
    int f32797d;
    final d<K, V> e;
    private g<K, V>.a h;
    private g<K, V>.b i;

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g$a.class */
    final class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && g.this.a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new g<K, V>.c<Map.Entry<K, V>>() { // from class: com.google.gson.internal.g.a.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public final /* synthetic */ Object next() {
                    return a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            d<K, V> a2;
            if (!(obj instanceof Map.Entry) || (a2 = g.this.a((Map.Entry) obj)) == null) {
                return false;
            }
            g.this.a((d) a2, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return g.this.f32796c;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g$b.class */
    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new g<K, V>.c<K>() { // from class: com.google.gson.internal.g.b.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public final K next() {
                    return a().f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return g.this.a(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return g.this.f32796c;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g$c.class */
    abstract class c<T> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f32802b;

        /* renamed from: c  reason: collision with root package name */
        d<K, V> f32803c = null;

        /* renamed from: d  reason: collision with root package name */
        int f32804d;

        c() {
            this.f32802b = g.this.e.f32808d;
            this.f32804d = g.this.f32797d;
        }

        final d<K, V> a() {
            d<K, V> dVar = this.f32802b;
            if (dVar == g.this.e) {
                throw new NoSuchElementException();
            } else if (g.this.f32797d == this.f32804d) {
                this.f32802b = dVar.f32808d;
                this.f32803c = dVar;
                return dVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f32802b != g.this.e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d<K, V> dVar = this.f32803c;
            if (dVar != null) {
                g.this.a((d) dVar, true);
                this.f32803c = null;
                this.f32804d = g.this.f32797d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/g$d.class */
    public static final class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        d<K, V> f32805a;

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f32806b;

        /* renamed from: c  reason: collision with root package name */
        d<K, V> f32807c;

        /* renamed from: d  reason: collision with root package name */
        d<K, V> f32808d;
        d<K, V> e;
        final K f;
        V g;
        int h;

        d() {
            this.f = null;
            this.e = this;
            this.f32808d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f32805a = dVar;
            this.f = k;
            this.h = 1;
            this.f32808d = dVar2;
            this.e = dVar3;
            dVar3.f32808d = this;
            dVar2.e = this;
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

    public g() {
        this(g);
    }

    public g(Comparator<? super K> comparator) {
        this.f32796c = 0;
        this.f32797d = 0;
        this.e = new d<>();
        this.f32794a = comparator == null ? g : comparator;
    }

    private d<K, V> a(K k, boolean z) {
        int i;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.f32794a;
        d<K, V> dVar2 = this.f32795b;
        if (dVar2 != null) {
            Comparable comparable = comparator == g ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(dVar2.f) : comparator.compare(k, (K) dVar2.f);
                if (i != 0) {
                    d<K, V> dVar3 = i < 0 ? dVar2.f32806b : dVar2.f32807c;
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
                dVar2.f32806b = dVar;
            } else {
                dVar2.f32807c = dVar;
            }
            b(dVar2, true);
        } else if (comparator != g || (k instanceof Comparable)) {
            dVar = new d<>(dVar2, k, dVar4, dVar4.e);
            this.f32795b = dVar;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.f32796c++;
        this.f32797d++;
        return dVar;
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f32806b;
        d<K, V> dVar3 = dVar.f32807c;
        d<K, V> dVar4 = dVar3.f32806b;
        d<K, V> dVar5 = dVar3.f32807c;
        dVar.f32807c = dVar4;
        if (dVar4 != null) {
            dVar4.f32805a = dVar;
        }
        a(dVar, dVar3);
        dVar3.f32806b = dVar;
        dVar.f32805a = dVar3;
        int i = 0;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar5 != null) {
            i = dVar5.h;
        }
        dVar3.h = Math.max(i2, i) + 1;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f32805a;
        dVar.f32805a = null;
        if (dVar2 != null) {
            dVar2.f32805a = dVar3;
        }
        if (dVar3 == null) {
            this.f32795b = dVar2;
        } else if (dVar3.f32806b == dVar) {
            dVar3.f32806b = dVar2;
        } else if (f || dVar3.f32807c == dVar) {
            dVar3.f32807c = dVar2;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d<K, V> b(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a((g<K, V>) obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f32806b;
        d<K, V> dVar3 = dVar.f32807c;
        d<K, V> dVar4 = dVar2.f32806b;
        d<K, V> dVar5 = dVar2.f32807c;
        dVar.f32806b = dVar5;
        if (dVar5 != null) {
            dVar5.f32805a = dVar;
        }
        a(dVar, dVar2);
        dVar2.f32807c = dVar;
        dVar.f32805a = dVar2;
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
            d<K, V> dVar2 = dVar.f32806b;
            d<K, V> dVar3 = dVar.f32807c;
            int i = 0;
            int i2 = 0;
            int i3 = dVar2 != null ? dVar2.h : 0;
            int i4 = dVar3 != null ? dVar3.h : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                d<K, V> dVar4 = dVar3.f32806b;
                d<K, V> dVar5 = dVar3.f32807c;
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
                d<K, V> dVar6 = dVar2.f32806b;
                d<K, V> dVar7 = dVar2.f32807c;
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
            dVar = dVar.f32805a;
        }
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    final d<K, V> a(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            a((d) b2, true);
        }
        return b2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.gson.internal.g.d<K, V> a(java.util.Map.Entry<?, ?> r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.lang.Object r1 = r1.getKey()
            com.google.gson.internal.g$d r0 = r0.b(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0049
            r0 = r5
            V r0 = r0.g
            r7 = r0
            r0 = r4
            java.lang.Object r0 = r0.getValue()
            r4 = r0
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L_0x003b
            r0 = r7
            if (r0 == 0) goto L_0x0035
            r0 = r7
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0035
            goto L_0x003b
        L_0x0035:
            r0 = 0
            r8 = r0
            goto L_0x003e
        L_0x003b:
            r0 = 1
            r8 = r0
        L_0x003e:
            r0 = r8
            if (r0 == 0) goto L_0x0049
            r0 = r6
            r8 = r0
            goto L_0x004c
        L_0x0049:
            r0 = 0
            r8 = r0
        L_0x004c:
            r0 = r8
            if (r0 == 0) goto L_0x0053
            r0 = r5
            return r0
        L_0x0053:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.g.a(java.util.Map$Entry):com.google.gson.internal.g$d");
    }

    final void a(d<K, V> dVar, boolean z) {
        int i;
        if (z) {
            dVar.e.f32808d = dVar.f32808d;
            dVar.f32808d.e = dVar.e;
        }
        d<K, V> dVar2 = dVar.f32806b;
        d<K, V> dVar3 = dVar.f32807c;
        d<K, V> dVar4 = dVar.f32805a;
        int i2 = 0;
        if (dVar2 == null || dVar3 == null) {
            if (dVar2 != null) {
                a(dVar, dVar2);
                dVar.f32806b = null;
            } else if (dVar3 != null) {
                a(dVar, dVar3);
                dVar.f32807c = null;
            } else {
                a(dVar, (d) null);
            }
            b(dVar4, false);
            this.f32796c--;
            this.f32797d++;
            return;
        }
        dVar2 = dVar3;
        if (dVar2.h > dVar3.h) {
            dVar2 = dVar2.f32807c;
            while (dVar2 != null) {
                dVar2 = dVar2.f32807c;
            }
        } else {
            while (true) {
                d<K, V> dVar5 = dVar2.f32806b;
                if (dVar5 == null) {
                    break;
                }
                dVar2 = dVar5;
            }
        }
        a((d) dVar2, false);
        d<K, V> dVar6 = dVar.f32806b;
        if (dVar6 != null) {
            i = dVar6.h;
            dVar2.f32806b = dVar6;
            dVar6.f32805a = dVar2;
            dVar.f32806b = null;
        } else {
            i = 0;
        }
        d<K, V> dVar7 = dVar.f32807c;
        if (dVar7 != null) {
            i2 = dVar7.h;
            dVar2.f32807c = dVar7;
            dVar7.f32805a = dVar2;
            dVar.f32807c = null;
        }
        dVar2.h = Math.max(i, i2) + 1;
        a(dVar, dVar2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f32795b = null;
        this.f32796c = 0;
        this.f32797d++;
        d<K, V> dVar = this.e;
        dVar.e = dVar;
        dVar.f32808d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        g<K, V>.a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            return b2.g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        g<K, V>.b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        g<K, V>.b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        d<K, V> a2 = a((g<K, V>) k, true);
        V v2 = a2.g;
        a2.g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        d<K, V> a2 = a(obj);
        if (a2 != null) {
            return a2.g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f32796c;
    }
}
