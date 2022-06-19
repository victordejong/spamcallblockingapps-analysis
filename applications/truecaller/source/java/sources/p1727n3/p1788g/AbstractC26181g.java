package p1727n3.p1788g;

import com.huawei.hms.framework.common.ContainerUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: n3.g.g */
/* loaded from: classes-dex2jar.jar:n3/g/g.class */
public abstract class AbstractC26181g<K, V> {

    /* renamed from: a */
    public AbstractC26181g<K, V>.C26183b f73004a;

    /* renamed from: b */
    public AbstractC26181g<K, V>.C26184c f73005b;

    /* renamed from: c */
    public AbstractC26181g<K, V>.C26186e f73006c;

    /* renamed from: n3.g.g$a */
    /* loaded from: classes-dex2jar.jar:n3/g/g$a.class */
    public final class C26182a<T> implements Iterator<T> {

        /* renamed from: a */
        public final int f73007a;

        /* renamed from: b */
        public int f73008b;

        /* renamed from: c */
        public int f73009c;

        /* renamed from: d */
        public boolean f73010d = false;

        public C26182a(int i) {
            AbstractC26181g.this = r4;
            this.f73007a = i;
            this.f73008b = r4.mo2593d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f73009c < this.f73008b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) AbstractC26181g.this.mo2595b(this.f73009c, this.f73007a);
                this.f73009c++;
                this.f73010d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f73010d) {
                int i = this.f73009c - 1;
                this.f73009c = i;
                this.f73008b--;
                this.f73010d = false;
                AbstractC26181g.this.mo2589h(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: n3.g.g$b */
    /* loaded from: classes-dex2jar.jar:n3/g/g$b.class */
    public final class C26183b implements Set<Map.Entry<K, V>> {
        public C26183b() {
            AbstractC26181g.this = r4;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo2593d = AbstractC26181g.this.mo2593d();
            for (Map.Entry<K, V> entry : collection) {
                AbstractC26181g.this.mo2590g(entry.getKey(), entry.getValue());
            }
            return mo2593d != AbstractC26181g.this.mo2593d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC26181g.this.mo2596a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int mo2592e = AbstractC26181g.this.mo2592e(entry.getKey());
            if (mo2592e >= 0) {
                return C26178d.m2613c(AbstractC26181g.this.mo2595b(mo2592e, 1), entry.getValue());
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
            return AbstractC26181g.m2587j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo2593d = AbstractC26181g.this.mo2593d() - 1; mo2593d >= 0; mo2593d--) {
                Object mo2595b = AbstractC26181g.this.mo2595b(mo2593d, 0);
                Object mo2595b2 = AbstractC26181g.this.mo2595b(mo2593d, 1);
                i += (mo2595b == null ? 0 : mo2595b.hashCode()) ^ (mo2595b2 == null ? 0 : mo2595b2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC26181g.this.mo2593d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C26185d();
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
            return AbstractC26181g.this.mo2593d();
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

    /* renamed from: n3.g.g$c */
    /* loaded from: classes-dex2jar.jar:n3/g/g$c.class */
    public final class C26184c implements Set<K> {
        public C26184c() {
            AbstractC26181g.this = r4;
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
            AbstractC26181g.this.mo2596a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC26181g.this.mo2592e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            boolean z;
            Map<K, V> mo2594c = AbstractC26181g.this.mo2594c();
            Iterator<?> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                } else if (!mo2594c.containsKey(it.next())) {
                    z = false;
                    break;
                }
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC26181g.m2587j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo2593d = AbstractC26181g.this.mo2593d() - 1; mo2593d >= 0; mo2593d--) {
                Object mo2595b = AbstractC26181g.this.mo2595b(mo2593d, 0);
                i += mo2595b == null ? 0 : mo2595b.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC26181g.this.mo2593d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C26182a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int mo2592e = AbstractC26181g.this.mo2592e(obj);
            if (mo2592e >= 0) {
                AbstractC26181g.this.mo2589h(mo2592e);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Map<K, V> mo2594c = AbstractC26181g.this.mo2594c();
            int size = mo2594c.size();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                mo2594c.remove(it.next());
            }
            return size != mo2594c.size();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return AbstractC26181g.m2586k(AbstractC26181g.this.mo2594c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC26181g.this.mo2593d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return AbstractC26181g.this.m2585l(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC26181g.this.m2584m(tArr, 0);
        }
    }

    /* renamed from: n3.g.g$d */
    /* loaded from: classes-dex2jar.jar:n3/g/g$d.class */
    public final class C26185d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        public int f73014a;

        /* renamed from: c */
        public boolean f73016c = false;

        /* renamed from: b */
        public int f73015b = -1;

        public C26185d() {
            AbstractC26181g.this = r5;
            this.f73014a = r5.mo2593d() - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f73016c) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                boolean z = false;
                if (C26178d.m2613c(entry.getKey(), AbstractC26181g.this.mo2595b(this.f73015b, 0))) {
                    z = false;
                    if (C26178d.m2613c(entry.getValue(), AbstractC26181g.this.mo2595b(this.f73015b, 1))) {
                        z = true;
                    }
                }
                return z;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f73016c) {
                return (K) AbstractC26181g.this.mo2595b(this.f73015b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f73016c) {
                return (V) AbstractC26181g.this.mo2595b(this.f73015b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f73015b < this.f73014a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f73016c) {
                int i = 0;
                Object mo2595b = AbstractC26181g.this.mo2595b(this.f73015b, 0);
                Object mo2595b2 = AbstractC26181g.this.mo2595b(this.f73015b, 1);
                int hashCode = mo2595b == null ? 0 : mo2595b.hashCode();
                if (mo2595b2 != null) {
                    i = mo2595b2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public Object next() {
            if (hasNext()) {
                this.f73015b++;
                this.f73016c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f73016c) {
                AbstractC26181g.this.mo2589h(this.f73015b);
                this.f73015b--;
                this.f73014a--;
                this.f73016c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f73016c) {
                return (V) AbstractC26181g.this.mo2588i(this.f73015b, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + ContainerUtils.KEY_VALUE_DELIMITER + getValue();
        }
    }

    /* renamed from: n3.g.g$e */
    /* loaded from: classes-dex2jar.jar:n3/g/g$e.class */
    public final class C26186e implements Collection<V> {
        public C26186e() {
            AbstractC26181g.this = r4;
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
            AbstractC26181g.this.mo2596a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC26181g.this.mo2591f(obj) >= 0;
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
            return AbstractC26181g.this.mo2593d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C26182a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int mo2591f = AbstractC26181g.this.mo2591f(obj);
            if (mo2591f >= 0) {
                AbstractC26181g.this.mo2589h(mo2591f);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int mo2593d = AbstractC26181g.this.mo2593d();
            int i = 0;
            boolean z = false;
            while (i < mo2593d) {
                int i2 = mo2593d;
                int i3 = i;
                if (collection.contains(AbstractC26181g.this.mo2595b(i, 1))) {
                    AbstractC26181g.this.mo2589h(i);
                    i3 = i - 1;
                    i2 = mo2593d - 1;
                    z = true;
                }
                i = i3 + 1;
                mo2593d = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int mo2593d = AbstractC26181g.this.mo2593d();
            int i = 0;
            boolean z = false;
            while (i < mo2593d) {
                int i2 = mo2593d;
                int i3 = i;
                if (!collection.contains(AbstractC26181g.this.mo2595b(i, 1))) {
                    AbstractC26181g.this.mo2589h(i);
                    i3 = i - 1;
                    i2 = mo2593d - 1;
                    z = true;
                }
                i = i3 + 1;
                mo2593d = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return AbstractC26181g.this.mo2593d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return AbstractC26181g.this.m2585l(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC26181g.this.m2584m(tArr, 1);
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
    public static <T> boolean m2587j(java.util.Set<T> r3, java.lang.Object r4) {
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
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1788g.AbstractC26181g.m2587j(java.util.Set, java.lang.Object):boolean");
    }

    /* renamed from: k */
    public static <K, V> boolean m2586k(Map<K, V> map, Collection<?> collection) {
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
    public abstract void mo2596a();

    /* renamed from: b */
    public abstract Object mo2595b(int i, int i2);

    /* renamed from: c */
    public abstract Map<K, V> mo2594c();

    /* renamed from: d */
    public abstract int mo2593d();

    /* renamed from: e */
    public abstract int mo2592e(Object obj);

    /* renamed from: f */
    public abstract int mo2591f(Object obj);

    /* renamed from: g */
    public abstract void mo2590g(K k, V v);

    /* renamed from: h */
    public abstract void mo2589h(int i);

    /* renamed from: i */
    public abstract V mo2588i(int i, V v);

    /* renamed from: l */
    public Object[] m2585l(int i) {
        int mo2593d = mo2593d();
        Object[] objArr = new Object[mo2593d];
        for (int i2 = 0; i2 < mo2593d; i2++) {
            objArr[i2] = mo2595b(i2, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    /* renamed from: m */
    public <T> T[] m2584m(T[] tArr, int i) {
        int mo2593d = mo2593d();
        T[] tArr2 = tArr;
        if (tArr.length < mo2593d) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo2593d);
        }
        for (int i2 = 0; i2 < mo2593d; i2++) {
            tArr2[i2] = mo2595b(i2, i);
        }
        if (tArr2.length > mo2593d) {
            tArr2[mo2593d] = null;
        }
        return tArr2;
    }
}
