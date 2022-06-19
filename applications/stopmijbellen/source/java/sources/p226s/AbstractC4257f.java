package p226s;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p029c4.C0821e;
/* renamed from: s.f */
/* loaded from: classes-dex2jar.jar:s/f.class */
public abstract class AbstractC4257f<K, V> {

    /* renamed from: a */
    public AbstractC4257f<K, V>.C4259b f13344a;

    /* renamed from: b */
    public AbstractC4257f<K, V>.C4260c f13345b;

    /* renamed from: c */
    public AbstractC4257f<K, V>.C4262e f13346c;

    /* renamed from: s.f$a */
    /* loaded from: classes-dex2jar.jar:s/f$a.class */
    public final class C4258a<T> implements Iterator<T> {

        /* renamed from: a */
        public final int f13347a;

        /* renamed from: b */
        public int f13348b;

        /* renamed from: c */
        public int f13349c;

        /* renamed from: d */
        public boolean f13350d = false;

        public C4258a(int i) {
            AbstractC4257f.this = r4;
            this.f13347a = i;
            this.f13348b = r4.mo1212d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13349c < this.f13348b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) AbstractC4257f.this.mo1214b(this.f13349c, this.f13347a);
                this.f13349c++;
                this.f13350d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f13350d) {
                int i = this.f13349c - 1;
                this.f13349c = i;
                this.f13348b--;
                this.f13350d = false;
                AbstractC4257f.this.mo1208h(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: s.f$b */
    /* loaded from: classes-dex2jar.jar:s/f$b.class */
    public final class C4259b implements Set<Map.Entry<K, V>> {
        public C4259b() {
            AbstractC4257f.this = r4;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo1212d = AbstractC4257f.this.mo1212d();
            for (Map.Entry<K, V> entry : collection) {
                AbstractC4257f.this.mo1209g(entry.getKey(), entry.getValue());
            }
            return mo1212d != AbstractC4257f.this.mo1212d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC4257f.this.mo1215a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int mo1211e = AbstractC4257f.this.mo1211e(entry.getKey());
            if (mo1211e >= 0) {
                return C0821e.m7341d(AbstractC4257f.this.mo1214b(mo1211e, 1), entry.getValue());
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC4257f.m1206j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo1212d = AbstractC4257f.this.mo1212d() - 1; mo1212d >= 0; mo1212d--) {
                Object mo1214b = AbstractC4257f.this.mo1214b(mo1212d, 0);
                Object mo1214b2 = AbstractC4257f.this.mo1214b(mo1212d, 1);
                i += (mo1214b == null ? 0 : mo1214b.hashCode()) ^ (mo1214b2 == null ? 0 : mo1214b2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC4257f.this.mo1212d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C4261d();
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
            return AbstractC4257f.this.mo1212d();
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

    /* renamed from: s.f$c */
    /* loaded from: classes-dex2jar.jar:s/f$c.class */
    public final class C4260c implements Set<K> {
        public C4260c() {
            AbstractC4257f.this = r4;
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
            AbstractC4257f.this.mo1215a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC4257f.this.mo1211e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            boolean z;
            Map<K, V> mo1213c = AbstractC4257f.this.mo1213c();
            Iterator<?> it2 = collection.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                } else if (!mo1213c.containsKey(it2.next())) {
                    z = false;
                    break;
                }
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC4257f.m1206j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo1212d = AbstractC4257f.this.mo1212d() - 1; mo1212d >= 0; mo1212d--) {
                Object mo1214b = AbstractC4257f.this.mo1214b(mo1212d, 0);
                i += mo1214b == null ? 0 : mo1214b.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC4257f.this.mo1212d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C4258a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int mo1211e = AbstractC4257f.this.mo1211e(obj);
            if (mo1211e >= 0) {
                AbstractC4257f.this.mo1208h(mo1211e);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Map<K, V> mo1213c = AbstractC4257f.this.mo1213c();
            int size = mo1213c.size();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                mo1213c.remove(it2.next());
            }
            return size != mo1213c.size();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return AbstractC4257f.m1205k(AbstractC4257f.this.mo1213c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC4257f.this.mo1212d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return AbstractC4257f.this.m1204l(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC4257f.this.m1203m(tArr, 0);
        }
    }

    /* renamed from: s.f$d */
    /* loaded from: classes-dex2jar.jar:s/f$d.class */
    public final class C4261d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        public int f13354a;

        /* renamed from: c */
        public boolean f13356c = false;

        /* renamed from: b */
        public int f13355b = -1;

        public C4261d() {
            AbstractC4257f.this = r5;
            this.f13354a = r5.mo1212d() - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f13356c) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                boolean z = false;
                if (C0821e.m7341d(entry.getKey(), AbstractC4257f.this.mo1214b(this.f13355b, 0))) {
                    z = false;
                    if (C0821e.m7341d(entry.getValue(), AbstractC4257f.this.mo1214b(this.f13355b, 1))) {
                        z = true;
                    }
                }
                return z;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f13356c) {
                return (K) AbstractC4257f.this.mo1214b(this.f13355b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f13356c) {
                return (V) AbstractC4257f.this.mo1214b(this.f13355b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13355b < this.f13354a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f13356c) {
                int i = 0;
                Object mo1214b = AbstractC4257f.this.mo1214b(this.f13355b, 0);
                Object mo1214b2 = AbstractC4257f.this.mo1214b(this.f13355b, 1);
                int hashCode = mo1214b == null ? 0 : mo1214b.hashCode();
                if (mo1214b2 != null) {
                    i = mo1214b2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public Object next() {
            if (hasNext()) {
                this.f13355b++;
                this.f13356c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f13356c) {
                AbstractC4257f.this.mo1208h(this.f13355b);
                this.f13355b--;
                this.f13354a--;
                this.f13356c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f13356c) {
                return (V) AbstractC4257f.this.mo1207i(this.f13355b, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: s.f$e */
    /* loaded from: classes-dex2jar.jar:s/f$e.class */
    public final class C4262e implements Collection<V> {
        public C4262e() {
            AbstractC4257f.this = r4;
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
            AbstractC4257f.this.mo1215a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC4257f.this.mo1210f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return AbstractC4257f.this.mo1212d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C4258a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int mo1210f = AbstractC4257f.this.mo1210f(obj);
            if (mo1210f >= 0) {
                AbstractC4257f.this.mo1208h(mo1210f);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int mo1212d = AbstractC4257f.this.mo1212d();
            int i = 0;
            boolean z = false;
            while (i < mo1212d) {
                int i2 = mo1212d;
                int i3 = i;
                if (collection.contains(AbstractC4257f.this.mo1214b(i, 1))) {
                    AbstractC4257f.this.mo1208h(i);
                    i3 = i - 1;
                    i2 = mo1212d - 1;
                    z = true;
                }
                i = i3 + 1;
                mo1212d = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int mo1212d = AbstractC4257f.this.mo1212d();
            int i = 0;
            boolean z = false;
            while (i < mo1212d) {
                int i2 = mo1212d;
                int i3 = i;
                if (!collection.contains(AbstractC4257f.this.mo1214b(i, 1))) {
                    AbstractC4257f.this.mo1208h(i);
                    i3 = i - 1;
                    i2 = mo1212d - 1;
                    z = true;
                }
                i = i3 + 1;
                mo1212d = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return AbstractC4257f.this.mo1212d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return AbstractC4257f.this.m1204l(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC4257f.this.m1203m(tArr, 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r3.containsAll(r0) != false) goto L13;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> boolean m1206j(java.util.Set<T> r3, java.lang.Object r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof java.util.Set
            if (r0 == 0) goto L37
            r0 = r4
            java.util.Set r0 = (java.util.Set) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L39
            r1 = r4
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L39
            if (r0 != r1) goto L33
            r0 = r3
            r1 = r4
            boolean r0 = r0.containsAll(r1)     // Catch: java.lang.Throwable -> L39
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L33
            goto L35
        L33:
            r0 = 0
            r5 = r0
        L35:
            r0 = r5
            return r0
        L37:
            r0 = 0
            return r0
        L39:
            r3 = move-exception
            goto L37
        */
        throw new UnsupportedOperationException("Method not decompiled: p226s.AbstractC4257f.m1206j(java.util.Set, java.lang.Object):boolean");
    }

    /* renamed from: k */
    public static <K, V> boolean m1205k(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
            }
        }
        return size != map.size();
    }

    /* renamed from: a */
    public abstract void mo1215a();

    /* renamed from: b */
    public abstract Object mo1214b(int i, int i2);

    /* renamed from: c */
    public abstract Map<K, V> mo1213c();

    /* renamed from: d */
    public abstract int mo1212d();

    /* renamed from: e */
    public abstract int mo1211e(Object obj);

    /* renamed from: f */
    public abstract int mo1210f(Object obj);

    /* renamed from: g */
    public abstract void mo1209g(K k, V v);

    /* renamed from: h */
    public abstract void mo1208h(int i);

    /* renamed from: i */
    public abstract V mo1207i(int i, V v);

    /* renamed from: l */
    public Object[] m1204l(int i) {
        int mo1212d = mo1212d();
        Object[] objArr = new Object[mo1212d];
        for (int i2 = 0; i2 < mo1212d; i2++) {
            objArr[i2] = mo1214b(i2, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    /* renamed from: m */
    public <T> T[] m1203m(T[] tArr, int i) {
        int mo1212d = mo1212d();
        T[] tArr2 = tArr;
        if (tArr.length < mo1212d) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo1212d);
        }
        for (int i2 = 0; i2 < mo1212d; i2++) {
            tArr2[i2] = mo1214b(i2, i);
        }
        if (tArr2.length > mo1212d) {
            tArr2[mo1212d] = null;
        }
        return tArr2;
    }
}
