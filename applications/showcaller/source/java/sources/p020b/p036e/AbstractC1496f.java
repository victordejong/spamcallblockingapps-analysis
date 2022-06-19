package p020b.p036e;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: b.e.f */
/* loaded from: classes-dex2jar.jar:b/e/f.class */
public abstract class AbstractC1496f<K, V> {

    /* renamed from: a */
    AbstractC1496f<K, V>.C1498b f5958a;

    /* renamed from: b */
    AbstractC1496f<K, V>.C1499c f5959b;

    /* renamed from: c */
    AbstractC1496f<K, V>.C1501e f5960c;

    /* renamed from: b.e.f$a */
    /* loaded from: classes-dex2jar.jar:b/e/f$a.class */
    final class C1497a<T> implements Iterator<T> {

        /* renamed from: d */
        final int f5961d;

        /* renamed from: e */
        int f5962e;

        /* renamed from: f */
        int f5963f;

        /* renamed from: g */
        boolean f5964g = false;

        C1497a(int i) {
            AbstractC1496f.this = r4;
            this.f5961d = i;
            this.f5962e = r4.mo29935d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5963f < this.f5962e;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) AbstractC1496f.this.mo29937b(this.f5963f, this.f5961d);
                this.f5963f++;
                this.f5964g = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f5964g) {
                int i = this.f5963f - 1;
                this.f5963f = i;
                this.f5962e--;
                this.f5964g = false;
                AbstractC1496f.this.mo29931h(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.e.f$b */
    /* loaded from: classes-dex2jar.jar:b/e/f$b.class */
    public final class C1498b implements Set<Map.Entry<K, V>> {
        C1498b() {
            AbstractC1496f.this = r4;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo29935d = AbstractC1496f.this.mo29935d();
            for (Map.Entry<K, V> entry : collection) {
                AbstractC1496f.this.mo29932g(entry.getKey(), entry.getValue());
            }
            return mo29935d != AbstractC1496f.this.mo29935d();
        }

        /* renamed from: c */
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC1496f.this.mo29938a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int mo29934e = AbstractC1496f.this.mo29934e(entry.getKey());
            if (mo29934e >= 0) {
                return C1493c.m29962c(AbstractC1496f.this.mo29937b(mo29934e, 1), entry.getValue());
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
            return AbstractC1496f.m29928k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo29935d = AbstractC1496f.this.mo29935d() - 1; mo29935d >= 0; mo29935d--) {
                Object mo29937b = AbstractC1496f.this.mo29937b(mo29935d, 0);
                Object mo29937b2 = AbstractC1496f.this.mo29937b(mo29935d, 1);
                i += (mo29937b == null ? 0 : mo29937b.hashCode()) ^ (mo29937b2 == null ? 0 : mo29937b2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC1496f.this.mo29935d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C1500d();
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
            return AbstractC1496f.this.mo29935d();
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
    /* renamed from: b.e.f$c */
    /* loaded from: classes-dex2jar.jar:b/e/f$c.class */
    public final class C1499c implements Set<K> {
        C1499c() {
            AbstractC1496f.this = r4;
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
            AbstractC1496f.this.mo29938a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC1496f.this.mo29934e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return AbstractC1496f.m29929j(AbstractC1496f.this.mo29936c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC1496f.m29928k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo29935d = AbstractC1496f.this.mo29935d() - 1; mo29935d >= 0; mo29935d--) {
                Object mo29937b = AbstractC1496f.this.mo29937b(mo29935d, 0);
                i += mo29937b == null ? 0 : mo29937b.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC1496f.this.mo29935d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C1497a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int mo29934e = AbstractC1496f.this.mo29934e(obj);
            if (mo29934e >= 0) {
                AbstractC1496f.this.mo29931h(mo29934e);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return AbstractC1496f.m29924o(AbstractC1496f.this.mo29936c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return AbstractC1496f.m29923p(AbstractC1496f.this.mo29936c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC1496f.this.mo29935d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return AbstractC1496f.this.m29922q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC1496f.this.m29921r(tArr, 0);
        }
    }

    /* renamed from: b.e.f$d */
    /* loaded from: classes-dex2jar.jar:b/e/f$d.class */
    final class C1500d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: d */
        int f5968d;

        /* renamed from: f */
        boolean f5970f = false;

        /* renamed from: e */
        int f5969e = -1;

        C1500d() {
            AbstractC1496f.this = r5;
            this.f5968d = r5.mo29935d() - 1;
        }

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.f5969e++;
                this.f5970f = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f5970f) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                boolean z = false;
                if (C1493c.m29962c(entry.getKey(), AbstractC1496f.this.mo29937b(this.f5969e, 0))) {
                    z = false;
                    if (C1493c.m29962c(entry.getValue(), AbstractC1496f.this.mo29937b(this.f5969e, 1))) {
                        z = true;
                    }
                }
                return z;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f5970f) {
                return (K) AbstractC1496f.this.mo29937b(this.f5969e, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f5970f) {
                return (V) AbstractC1496f.this.mo29937b(this.f5969e, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5969e < this.f5968d;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f5970f) {
                int i = 0;
                Object mo29937b = AbstractC1496f.this.mo29937b(this.f5969e, 0);
                Object mo29937b2 = AbstractC1496f.this.mo29937b(this.f5969e, 1);
                int hashCode = mo29937b == null ? 0 : mo29937b.hashCode();
                if (mo29937b2 != null) {
                    i = mo29937b2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f5970f) {
                AbstractC1496f.this.mo29931h(this.f5969e);
                this.f5969e--;
                this.f5968d--;
                this.f5970f = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f5970f) {
                return (V) AbstractC1496f.this.mo29930i(this.f5969e, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.e.f$e */
    /* loaded from: classes-dex2jar.jar:b/e/f$e.class */
    public final class C1501e implements Collection<V> {
        C1501e() {
            AbstractC1496f.this = r4;
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
            AbstractC1496f.this.mo29938a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC1496f.this.mo29933f(obj) >= 0;
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
            return AbstractC1496f.this.mo29935d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C1497a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int mo29933f = AbstractC1496f.this.mo29933f(obj);
            if (mo29933f >= 0) {
                AbstractC1496f.this.mo29931h(mo29933f);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int mo29935d = AbstractC1496f.this.mo29935d();
            int i = 0;
            boolean z = false;
            while (i < mo29935d) {
                int i2 = mo29935d;
                int i3 = i;
                if (collection.contains(AbstractC1496f.this.mo29937b(i, 1))) {
                    AbstractC1496f.this.mo29931h(i);
                    i3 = i - 1;
                    i2 = mo29935d - 1;
                    z = true;
                }
                i = i3 + 1;
                mo29935d = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int mo29935d = AbstractC1496f.this.mo29935d();
            int i = 0;
            boolean z = false;
            while (i < mo29935d) {
                int i2 = mo29935d;
                int i3 = i;
                if (!collection.contains(AbstractC1496f.this.mo29937b(i, 1))) {
                    AbstractC1496f.this.mo29931h(i);
                    i3 = i - 1;
                    i2 = mo29935d - 1;
                    z = true;
                }
                i = i3 + 1;
                mo29935d = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return AbstractC1496f.this.mo29935d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return AbstractC1496f.this.m29922q(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC1496f.this.m29921r(tArr, 1);
        }
    }

    /* renamed from: j */
    public static <K, V> boolean m29929j(Map<K, V> map, Collection<?> collection) {
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
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> boolean m29928k(java.util.Set<T> r3, java.lang.Object r4) {
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
        throw new UnsupportedOperationException("Method not decompiled: p020b.p036e.AbstractC1496f.m29928k(java.util.Set, java.lang.Object):boolean");
    }

    /* renamed from: o */
    public static <K, V> boolean m29924o(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    /* renamed from: p */
    public static <K, V> boolean m29923p(Map<K, V> map, Collection<?> collection) {
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
    protected abstract void mo29938a();

    /* renamed from: b */
    protected abstract Object mo29937b(int i, int i2);

    /* renamed from: c */
    protected abstract Map<K, V> mo29936c();

    /* renamed from: d */
    protected abstract int mo29935d();

    /* renamed from: e */
    protected abstract int mo29934e(Object obj);

    /* renamed from: f */
    protected abstract int mo29933f(Object obj);

    /* renamed from: g */
    protected abstract void mo29932g(K k, V v);

    /* renamed from: h */
    protected abstract void mo29931h(int i);

    /* renamed from: i */
    protected abstract V mo29930i(int i, V v);

    /* renamed from: l */
    public Set<Map.Entry<K, V>> m29927l() {
        if (this.f5958a == null) {
            this.f5958a = new C1498b();
        }
        return this.f5958a;
    }

    /* renamed from: m */
    public Set<K> m29926m() {
        if (this.f5959b == null) {
            this.f5959b = new C1499c();
        }
        return this.f5959b;
    }

    /* renamed from: n */
    public Collection<V> m29925n() {
        if (this.f5960c == null) {
            this.f5960c = new C1501e();
        }
        return this.f5960c;
    }

    /* renamed from: q */
    public Object[] m29922q(int i) {
        int mo29935d = mo29935d();
        Object[] objArr = new Object[mo29935d];
        for (int i2 = 0; i2 < mo29935d; i2++) {
            objArr[i2] = mo29937b(i2, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    /* renamed from: r */
    public <T> T[] m29921r(T[] tArr, int i) {
        int mo29935d = mo29935d();
        T[] tArr2 = tArr;
        if (tArr.length < mo29935d) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo29935d);
        }
        for (int i2 = 0; i2 < mo29935d; i2++) {
            tArr2[i2] = mo29937b(i2, i);
        }
        if (tArr2.length > mo29935d) {
            tArr2[mo29935d] = null;
        }
        return tArr2;
    }
}
