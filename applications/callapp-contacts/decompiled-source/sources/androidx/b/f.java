package androidx.b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/b/f.class */
public abstract class f<K, V> {

    /* renamed from: b  reason: collision with root package name */
    f<K, V>.b f1174b;

    /* renamed from: c  reason: collision with root package name */
    f<K, V>.c f1175c;

    /* renamed from: d  reason: collision with root package name */
    f<K, V>.e f1176d;

    /* loaded from: classes-dex2jar.jar:androidx/b/f$a.class */
    final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f1177a;

        /* renamed from: b  reason: collision with root package name */
        int f1178b;

        /* renamed from: c  reason: collision with root package name */
        int f1179c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1180d = false;

        a(int i) {
            this.f1177a = i;
            this.f1178b = f.this.a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f1179c < this.f1178b;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (hasNext()) {
                T t = (T) f.this.a(this.f1179c, this.f1177a);
                this.f1179c++;
                this.f1180d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f1180d) {
                int i = this.f1179c - 1;
                this.f1179c = i;
                this.f1178b--;
                this.f1180d = false;
                f.this.a(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/b/f$b.class */
    final class b implements Set<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        @Override // java.util.Set, java.util.Collection
        public final /* synthetic */ boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int a2 = f.this.a();
            Iterator<? extends Map.Entry<K, V>> it2 = collection.iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                f.this.a((f) entry.getKey(), entry.getValue());
            }
            return a2 != f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a2 = f.this.a(entry.getKey());
            if (a2 < 0) {
                return false;
            }
            return androidx.b.c.a(f.this.a(a2, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return f.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int i = 0;
            for (int a2 = f.this.a() - 1; a2 >= 0; a2--) {
                Object a3 = f.this.a(a2, 0);
                Object a4 = f.this.a(a2, 1);
                i += (a3 == null ? 0 : a3.hashCode()) ^ (a4 == null ? 0 : a4.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return f.this.a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/b/f$c.class */
    final class c implements Set<K> {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return f.this.a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Map<K, V> b2 = f.this.b();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!b2.containsKey(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return f.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int i = 0;
            for (int a2 = f.this.a() - 1; a2 >= 0; a2--) {
                Object a3 = f.this.a(a2, 0);
                i += a3 == null ? 0 : a3.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return f.this.a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            int a2 = f.this.a(obj);
            if (a2 < 0) {
                return false;
            }
            f.this.a(a2);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            Map<K, V> b2 = f.this.b();
            int size = b2.size();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                b2.remove(it2.next());
            }
            return size != b2.size();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return f.a((Map) f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            return f.this.b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.a(tArr, 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/b/f$d.class */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        int f1183a;

        /* renamed from: c  reason: collision with root package name */
        boolean f1185c = false;

        /* renamed from: b  reason: collision with root package name */
        int f1184b = -1;

        d() {
            this.f1183a = f.this.a() - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.f1185c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            } else if (!(obj instanceof Map.Entry)) {
                return false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                return androidx.b.c.a(entry.getKey(), f.this.a(this.f1184b, 0)) && androidx.b.c.a(entry.getValue(), f.this.a(this.f1184b, 1));
            }
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            if (this.f1185c) {
                return (K) f.this.a(this.f1184b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            if (this.f1185c) {
                return (V) f.this.a(this.f1184b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f1184b < this.f1183a;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (this.f1185c) {
                int i = 0;
                Object a2 = f.this.a(this.f1184b, 0);
                Object a3 = f.this.a(this.f1184b, 1);
                int hashCode = a2 == null ? 0 : a2.hashCode();
                if (a3 != null) {
                    i = a3.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (hasNext()) {
                this.f1184b++;
                this.f1185c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f1185c) {
                f.this.a(this.f1184b);
                this.f1184b--;
                this.f1183a--;
                this.f1185c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            if (this.f1185c) {
                return (V) f.this.a(this.f1184b, (int) v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/b/f$e.class */
    final class e implements Collection<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e() {
        }

        @Override // java.util.Collection
        public final boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            f.this.c();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return f.this.b(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return f.this.a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            int b2 = f.this.b(obj);
            if (b2 < 0) {
                return false;
            }
            f.this.a(b2);
            return true;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            int a2 = f.this.a();
            int i = 0;
            boolean z = false;
            while (i < a2) {
                a2 = a2;
                int i2 = i;
                if (collection.contains(f.this.a(i, 1))) {
                    f.this.a(i);
                    i2 = i - 1;
                    a2--;
                    z = true;
                }
                i = i2 + 1;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            int a2 = f.this.a();
            int i = 0;
            boolean z = false;
            while (i < a2) {
                a2 = a2;
                int i2 = i;
                if (!collection.contains(f.this.a(i, 1))) {
                    f.this.a(i);
                    i2 = i - 1;
                    a2--;
                    z = true;
                }
                i = i2 + 1;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return f.this.a();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            return f.this.b(1);
        }

        @Override // java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.a(tArr, 1);
        }
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
            }
        }
        return size != map.size();
    }

    public static <T> boolean a(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
                return set.containsAll(set2);
            }
            return false;
        } catch (ClassCastException | NullPointerException e2) {
            return false;
        }
    }

    protected abstract int a();

    protected abstract int a(Object obj);

    protected abstract Object a(int i, int i2);

    protected abstract V a(int i, V v);

    protected abstract void a(int i);

    protected abstract void a(K k, V v);

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T[] a(T[] tArr, int i) {
        int a2 = a();
        T[] tArr2 = tArr;
        if (tArr.length < a2) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), a2));
        }
        for (int i2 = 0; i2 < a2; i2++) {
            tArr2[i2] = a(i2, i);
        }
        if (tArr2.length > a2) {
            tArr2[a2] = null;
        }
        return tArr2;
    }

    protected abstract int b(Object obj);

    protected abstract Map<K, V> b();

    public final Object[] b(int i) {
        int a2 = a();
        Object[] objArr = new Object[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            objArr[i2] = a(i2, i);
        }
        return objArr;
    }

    protected abstract void c();

    public final Set<K> d() {
        if (this.f1175c == null) {
            this.f1175c = new c();
        }
        return this.f1175c;
    }
}
