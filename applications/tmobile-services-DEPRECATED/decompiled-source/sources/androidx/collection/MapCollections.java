package androidx.collection;

import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/collection/MapCollections.class */
public abstract class MapCollections<K, V> {
    @Nullable

    /* renamed from: a */
    MapCollections<K, V>.EntrySet f1558a;
    @Nullable

    /* renamed from: b */
    MapCollections<K, V>.KeySet f1559b;
    @Nullable

    /* renamed from: c */
    MapCollections<K, V>.ValuesCollection f1560c;

    /* loaded from: classes-dex2jar.jar:androidx/collection/MapCollections$ArrayIterator.class */
    final class ArrayIterator<T> implements Iterator<T> {

        /* renamed from: f */
        final int f1561f;

        /* renamed from: g */
        int f1562g;

        /* renamed from: h */
        int f1563h;

        /* renamed from: i */
        boolean f1564i = false;

        ArrayIterator(int i) {
            this.f1561f = i;
            this.f1562g = MapCollections.this.mo21032d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1563h < this.f1562g;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) MapCollections.this.mo21034b(this.f1563h, this.f1561f);
                this.f1563h++;
                this.f1564i = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f1564i) {
                int i = this.f1563h - 1;
                this.f1563h = i;
                this.f1562g--;
                this.f1564i = false;
                MapCollections.this.mo21028h(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/collection/MapCollections$EntrySet.class */
    final class EntrySet implements Set<Map.Entry<K, V>> {
        EntrySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            m21017c((Map.Entry) obj);
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int d = MapCollections.this.mo21032d();
            Iterator<? extends Map.Entry<K, V>> it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                MapCollections.this.mo21029g(entry.getKey(), entry.getValue());
            }
            return d != MapCollections.this.mo21032d();
        }

        /* renamed from: c */
        public boolean m21017c(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            MapCollections.this.mo21035a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int e = MapCollections.this.mo21031e(entry.getKey());
            if (e < 0) {
                return false;
            }
            return ContainerHelpers.m21054c(MapCollections.this.mo21034b(e, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return MapCollections.m21025k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int d = MapCollections.this.mo21032d() - 1; d >= 0; d--) {
                Object b = MapCollections.this.mo21034b(d, 0);
                Object b2 = MapCollections.this.mo21034b(d, 1);
                i += (b == null ? 0 : b.hashCode()) ^ (b2 == null ? 0 : b2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.mo21032d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new MapIterator();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return MapCollections.this.mo21032d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/collection/MapCollections$KeySet.class */
    final class KeySet implements Set<K> {
        KeySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            MapCollections.this.mo21035a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return MapCollections.this.mo21031e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return MapCollections.m21026j(MapCollections.this.mo21033c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return MapCollections.m21025k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int d = MapCollections.this.mo21032d() - 1; d >= 0; d--) {
                Object b = MapCollections.this.mo21034b(d, 0);
                i += b == null ? 0 : b.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.mo21032d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new ArrayIterator(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int e = MapCollections.this.mo21031e(obj);
            if (e < 0) {
                return false;
            }
            MapCollections.this.mo21028h(e);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return MapCollections.m21021o(MapCollections.this.mo21033c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return MapCollections.m21020p(MapCollections.this.mo21033c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return MapCollections.this.mo21032d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return MapCollections.this.m21019q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapCollections.this.m21018r(tArr, 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/collection/MapCollections$MapIterator.class */
    final class MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: f */
        int f1568f;

        /* renamed from: h */
        boolean f1570h = false;

        /* renamed from: g */
        int f1569g = -1;

        MapIterator() {
            this.f1568f = MapCollections.this.mo21032d() - 1;
        }

        /* renamed from: a */
        public Map.Entry<K, V> m21016a() {
            if (hasNext()) {
                this.f1569g++;
                this.f1570h = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f1570h) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            } else if (!(obj instanceof Map.Entry)) {
                return false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                boolean z = false;
                if (ContainerHelpers.m21054c(entry.getKey(), MapCollections.this.mo21034b(this.f1569g, 0))) {
                    z = false;
                    if (ContainerHelpers.m21054c(entry.getValue(), MapCollections.this.mo21034b(this.f1569g, 1))) {
                        z = true;
                    }
                }
                return z;
            }
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f1570h) {
                return (K) MapCollections.this.mo21034b(this.f1569g, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f1570h) {
                return (V) MapCollections.this.mo21034b(this.f1569g, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1569g < this.f1568f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f1570h) {
                int i = 0;
                Object b = MapCollections.this.mo21034b(this.f1569g, 0);
                Object b2 = MapCollections.this.mo21034b(this.f1569g, 1);
                int hashCode = b == null ? 0 : b.hashCode();
                if (b2 != null) {
                    i = b2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            m21016a();
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f1570h) {
                MapCollections.this.mo21028h(this.f1569g);
                this.f1569g--;
                this.f1568f--;
                this.f1570h = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f1570h) {
                return (V) MapCollections.this.mo21027i(this.f1569g, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/collection/MapCollections$ValuesCollection.class */
    final class ValuesCollection implements Collection<V> {
        ValuesCollection() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            MapCollections.this.mo21035a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return MapCollections.this.mo21030f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.mo21032d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new ArrayIterator(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int f = MapCollections.this.mo21030f(obj);
            if (f < 0) {
                return false;
            }
            MapCollections.this.mo21028h(f);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int d = MapCollections.this.mo21032d();
            int i = 0;
            boolean z = false;
            while (i < d) {
                d = d;
                int i2 = i;
                if (collection.contains(MapCollections.this.mo21034b(i, 1))) {
                    MapCollections.this.mo21028h(i);
                    i2 = i - 1;
                    d--;
                    z = true;
                }
                i = i2 + 1;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int d = MapCollections.this.mo21032d();
            int i = 0;
            boolean z = false;
            while (i < d) {
                d = d;
                int i2 = i;
                if (!collection.contains(MapCollections.this.mo21034b(i, 1))) {
                    MapCollections.this.mo21028h(i);
                    i2 = i - 1;
                    d--;
                    z = true;
                }
                i = i2 + 1;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return MapCollections.this.mo21032d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return MapCollections.this.m21019q(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapCollections.this.m21018r(tArr, 1);
        }
    }

    /* renamed from: j */
    public static <K, V> boolean m21026j(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r3.containsAll(r0) != false) goto L_0x0035;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> boolean m21025k(java.util.Set<T> r3, java.lang.Object r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof java.util.Set
            if (r0 == 0) goto L_0x0037
            r0 = r4
            java.util.Set r0 = (java.util.Set) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: NullPointerException | ClassCastException -> 0x0039
            r1 = r4
            int r1 = r1.size()     // Catch: NullPointerException | ClassCastException -> 0x0039
            if (r0 != r1) goto L_0x0033
            r0 = r3
            r1 = r4
            boolean r0 = r0.containsAll(r1)     // Catch: NullPointerException | ClassCastException -> 0x0039
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0033
            goto L_0x0035
        L_0x0033:
            r0 = 0
            r5 = r0
        L_0x0035:
            r0 = r5
            return r0
        L_0x0037:
            r0 = 0
            return r0
        L_0x0039:
            r3 = move-exception
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MapCollections.m21025k(java.util.Set, java.lang.Object):boolean");
    }

    /* renamed from: o */
    public static <K, V> boolean m21021o(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    /* renamed from: p */
    public static <K, V> boolean m21020p(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    /* renamed from: a */
    protected abstract void mo21035a();

    /* renamed from: b */
    protected abstract Object mo21034b(int i, int i2);

    /* renamed from: c */
    protected abstract Map<K, V> mo21033c();

    /* renamed from: d */
    protected abstract int mo21032d();

    /* renamed from: e */
    protected abstract int mo21031e(Object obj);

    /* renamed from: f */
    protected abstract int mo21030f(Object obj);

    /* renamed from: g */
    protected abstract void mo21029g(K k, V v);

    /* renamed from: h */
    protected abstract void mo21028h(int i);

    /* renamed from: i */
    protected abstract V mo21027i(int i, V v);

    /* renamed from: l */
    public Set<Map.Entry<K, V>> m21024l() {
        if (this.f1558a == null) {
            this.f1558a = new EntrySet();
        }
        return this.f1558a;
    }

    /* renamed from: m */
    public Set<K> m21023m() {
        if (this.f1559b == null) {
            this.f1559b = new KeySet();
        }
        return this.f1559b;
    }

    /* renamed from: n */
    public Collection<V> m21022n() {
        if (this.f1560c == null) {
            this.f1560c = new ValuesCollection();
        }
        return this.f1560c;
    }

    /* renamed from: q */
    public Object[] m21019q(int i) {
        int d = mo21032d();
        Object[] objArr = new Object[d];
        for (int i2 = 0; i2 < d; i2++) {
            objArr[i2] = mo21034b(i2, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    public <T> T[] m21018r(T[] tArr, int i) {
        int d = mo21032d();
        T[] tArr2 = tArr;
        if (tArr.length < d) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), d));
        }
        for (int i2 = 0; i2 < d; i2++) {
            tArr2[i2] = mo21034b(i2, i);
        }
        if (tArr2.length > d) {
            tArr2[d] = null;
        }
        return tArr2;
    }
}
