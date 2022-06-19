package androidx.p014c;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: androidx.c.f */
/* loaded from: classes-dex2jar.jar:androidx/c/f.class */
public abstract class AbstractC0381f<K, V> {

    /* renamed from: b */
    AbstractC0381f<K, V>.C0383b f1493b;

    /* renamed from: c */
    AbstractC0381f<K, V>.C0384c f1494c;

    /* renamed from: d */
    AbstractC0381f<K, V>.C0386e f1495d;

    /* renamed from: androidx.c.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/c/f$a.class */
    final class C0382a<T> implements Iterator<T> {

        /* renamed from: a */
        final int f1496a;

        /* renamed from: b */
        int f1497b;

        /* renamed from: c */
        int f1498c;

        /* renamed from: d */
        boolean f1499d = false;

        C0382a(int i) {
            AbstractC0381f.this = r4;
            this.f1496a = i;
            this.f1497b = r4.mo6839a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1498c < this.f1497b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) AbstractC0381f.this.mo6837a(this.f1498c, this.f1496a);
                this.f1498c++;
                this.f1499d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f1499d) {
                this.f1498c--;
                this.f1497b--;
                this.f1499d = false;
                AbstractC0381f.this.mo6838a(this.f1498c);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.c.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/c/f$b.class */
    public final class C0383b implements Set<Map.Entry<K, V>> {
        C0383b() {
            AbstractC0381f.this = r4;
        }

        /* renamed from: a */
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo6839a = AbstractC0381f.this.mo6839a();
            for (Map.Entry<K, V> entry : collection) {
                AbstractC0381f.this.mo6834a((AbstractC0381f) entry.getKey(), (K) entry.getValue());
            }
            return mo6839a != AbstractC0381f.this.mo6839a();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC0381f.this.mo6826c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int mo6835a = AbstractC0381f.this.mo6835a(entry.getKey());
            if (mo6835a >= 0) {
                return C0378c.m6859a(AbstractC0381f.this.mo6837a(mo6835a, 1), entry.getValue());
            }
            return false;
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
            return AbstractC0381f.m6832a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo6839a = AbstractC0381f.this.mo6839a() - 1; mo6839a >= 0; mo6839a--) {
                Object mo6837a = AbstractC0381f.this.mo6837a(mo6839a, 0);
                Object mo6837a2 = AbstractC0381f.this.mo6837a(mo6839a, 1);
                i += (mo6837a == null ? 0 : mo6837a.hashCode()) ^ (mo6837a2 == null ? 0 : mo6837a2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC0381f.this.mo6839a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C0385d();
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
            return AbstractC0381f.this.mo6839a();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.c.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/c/f$c.class */
    public final class C0384c implements Set<K> {
        C0384c() {
            AbstractC0381f.this = r4;
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
            AbstractC0381f.this.mo6826c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC0381f.this.mo6835a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return AbstractC0381f.m6833a((Map) AbstractC0381f.this.mo6830b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC0381f.m6832a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo6839a = AbstractC0381f.this.mo6839a() - 1; mo6839a >= 0; mo6839a--) {
                Object mo6837a = AbstractC0381f.this.mo6837a(mo6839a, 0);
                i += mo6837a == null ? 0 : mo6837a.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC0381f.this.mo6839a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C0382a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int mo6835a = AbstractC0381f.this.mo6835a(obj);
            if (mo6835a >= 0) {
                AbstractC0381f.this.mo6838a(mo6835a);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return AbstractC0381f.m6827b(AbstractC0381f.this.mo6830b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return AbstractC0381f.m6825c(AbstractC0381f.this.mo6830b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC0381f.this.mo6839a();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return AbstractC0381f.this.m6829b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0381f.this.m6831a(tArr, 0);
        }
    }

    /* renamed from: androidx.c.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/c/f$d.class */
    final class C0385d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        int f1503a;

        /* renamed from: c */
        boolean f1505c = false;

        /* renamed from: b */
        int f1504b = -1;

        C0385d() {
            AbstractC0381f.this = r5;
            this.f1503a = r5.mo6839a() - 1;
        }

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.f1504b++;
                this.f1505c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f1505c) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                boolean z = false;
                if (C0378c.m6859a(entry.getKey(), AbstractC0381f.this.mo6837a(this.f1504b, 0))) {
                    z = false;
                    if (C0378c.m6859a(entry.getValue(), AbstractC0381f.this.mo6837a(this.f1504b, 1))) {
                        z = true;
                    }
                }
                return z;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f1505c) {
                return (K) AbstractC0381f.this.mo6837a(this.f1504b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f1505c) {
                return (V) AbstractC0381f.this.mo6837a(this.f1504b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1504b < this.f1503a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f1505c) {
                int i = 0;
                Object mo6837a = AbstractC0381f.this.mo6837a(this.f1504b, 0);
                Object mo6837a2 = AbstractC0381f.this.mo6837a(this.f1504b, 1);
                int hashCode = mo6837a == null ? 0 : mo6837a.hashCode();
                if (mo6837a2 != null) {
                    i = mo6837a2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f1505c) {
                AbstractC0381f.this.mo6838a(this.f1504b);
                this.f1504b--;
                this.f1503a--;
                this.f1505c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f1505c) {
                return (V) AbstractC0381f.this.mo6836a(this.f1504b, (int) v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.c.f$e */
    /* loaded from: classes-dex2jar.jar:androidx/c/f$e.class */
    public final class C0386e implements Collection<V> {
        C0386e() {
            AbstractC0381f.this = r4;
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
            AbstractC0381f.this.mo6826c();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC0381f.this.mo6828b(obj) >= 0;
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
            return AbstractC0381f.this.mo6839a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C0382a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int mo6828b = AbstractC0381f.this.mo6828b(obj);
            if (mo6828b >= 0) {
                AbstractC0381f.this.mo6838a(mo6828b);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int mo6839a = AbstractC0381f.this.mo6839a();
            int i = 0;
            boolean z = false;
            while (i < mo6839a) {
                int i2 = mo6839a;
                int i3 = i;
                if (collection.contains(AbstractC0381f.this.mo6837a(i, 1))) {
                    AbstractC0381f.this.mo6838a(i);
                    i3 = i - 1;
                    i2 = mo6839a - 1;
                    z = true;
                }
                i = i3 + 1;
                mo6839a = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int mo6839a = AbstractC0381f.this.mo6839a();
            int i = 0;
            boolean z = false;
            while (i < mo6839a) {
                int i2 = mo6839a;
                int i3 = i;
                if (!collection.contains(AbstractC0381f.this.mo6837a(i, 1))) {
                    AbstractC0381f.this.mo6838a(i);
                    i3 = i - 1;
                    i2 = mo6839a - 1;
                    z = true;
                }
                i = i3 + 1;
                mo6839a = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return AbstractC0381f.this.mo6839a();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return AbstractC0381f.this.m6829b(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0381f.this.m6831a(tArr, 1);
        }
    }

    /* renamed from: a */
    public static <K, V> boolean m6833a(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r3.containsAll(r0) != false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> boolean m6832a(java.util.Set<T> r3, java.lang.Object r4) {
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.p014c.AbstractC0381f.m6832a(java.util.Set, java.lang.Object):boolean");
    }

    /* renamed from: b */
    public static <K, V> boolean m6827b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    /* renamed from: c */
    public static <K, V> boolean m6825c(Map<K, V> map, Collection<?> collection) {
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
    protected abstract int mo6839a();

    /* renamed from: a */
    protected abstract int mo6835a(Object obj);

    /* renamed from: a */
    protected abstract Object mo6837a(int i, int i2);

    /* renamed from: a */
    protected abstract V mo6836a(int i, V v);

    /* renamed from: a */
    protected abstract void mo6838a(int i);

    /* renamed from: a */
    protected abstract void mo6834a(K k, V v);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    /* renamed from: a */
    public <T> T[] m6831a(T[] tArr, int i) {
        int mo6839a = mo6839a();
        T[] tArr2 = tArr;
        if (tArr.length < mo6839a) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo6839a);
        }
        for (int i2 = 0; i2 < mo6839a; i2++) {
            tArr2[i2] = mo6837a(i2, i);
        }
        if (tArr2.length > mo6839a) {
            tArr2[mo6839a] = null;
        }
        return tArr2;
    }

    /* renamed from: b */
    protected abstract int mo6828b(Object obj);

    /* renamed from: b */
    protected abstract Map<K, V> mo6830b();

    /* renamed from: b */
    public Object[] m6829b(int i) {
        int mo6839a = mo6839a();
        Object[] objArr = new Object[mo6839a];
        for (int i2 = 0; i2 < mo6839a; i2++) {
            objArr[i2] = mo6837a(i2, i);
        }
        return objArr;
    }

    /* renamed from: c */
    protected abstract void mo6826c();

    /* renamed from: d */
    public Set<Map.Entry<K, V>> m6824d() {
        if (this.f1493b == null) {
            this.f1493b = new C0383b();
        }
        return this.f1493b;
    }

    /* renamed from: e */
    public Set<K> m6823e() {
        if (this.f1494c == null) {
            this.f1494c = new C0384c();
        }
        return this.f1494c;
    }

    /* renamed from: f */
    public Collection<V> m6822f() {
        if (this.f1495d == null) {
            this.f1495d = new C0386e();
        }
        return this.f1495d;
    }
}
