package androidx.p023b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: androidx.b.f */
/* loaded from: classes-dex2jar.jar:androidx/b/f.class */
public abstract class AbstractC0435f<K, V> {

    /* renamed from: b */
    AbstractC0435f<K, V>.C0437b f1730b;

    /* renamed from: c */
    AbstractC0435f<K, V>.C0438c f1731c;

    /* renamed from: d */
    AbstractC0435f<K, V>.C0440e f1732d;

    /* renamed from: androidx.b.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$a.class */
    final class C0436a<T> implements Iterator<T> {

        /* renamed from: a */
        final int f1733a;

        /* renamed from: b */
        int f1734b;

        /* renamed from: c */
        int f1735c;

        /* renamed from: d */
        boolean f1736d = false;

        C0436a(int i) {
            AbstractC0435f.this = r4;
            this.f1733a = i;
            this.f1734b = r4.mo45537a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f1735c < this.f1734b;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (hasNext()) {
                T t = (T) AbstractC0435f.this.mo45535a(this.f1735c, this.f1733a);
                this.f1735c++;
                this.f1736d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f1736d) {
                int i = this.f1735c - 1;
                this.f1735c = i;
                this.f1734b--;
                this.f1736d = false;
                AbstractC0435f.this.mo45536a(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: androidx.b.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$b.class */
    final class C0437b implements Set<Map.Entry<K, V>> {
        public C0437b() {
            AbstractC0435f.this = r4;
        }

        @Override // java.util.Set, java.util.Collection
        public final /* synthetic */ boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo45537a = AbstractC0435f.this.mo45537a();
            for (Map.Entry<K, V> entry : collection) {
                AbstractC0435f.this.mo45532a((AbstractC0435f) entry.getKey(), (K) entry.getValue());
            }
            return mo45537a != AbstractC0435f.this.mo45537a();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            AbstractC0435f.this.mo45525c();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int mo45533a = AbstractC0435f.this.mo45533a(entry.getKey());
            if (mo45533a >= 0) {
                return C0432c.m45557a(AbstractC0435f.this.mo45535a(mo45533a, 1), entry.getValue());
            }
            return false;
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
            return AbstractC0435f.m45530a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int i = 0;
            for (int mo45537a = AbstractC0435f.this.mo45537a() - 1; mo45537a >= 0; mo45537a--) {
                Object mo45535a = AbstractC0435f.this.mo45535a(mo45537a, 0);
                Object mo45535a2 = AbstractC0435f.this.mo45535a(mo45537a, 1);
                i += (mo45535a == null ? 0 : mo45535a.hashCode()) ^ (mo45535a2 == null ? 0 : mo45535a2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return AbstractC0435f.this.mo45537a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new C0439d();
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
            return AbstractC0435f.this.mo45537a();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.b.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$c.class */
    public final class C0438c implements Set<K> {
        C0438c() {
            AbstractC0435f.this = r4;
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
            AbstractC0435f.this.mo45525c();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC0435f.this.mo45533a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Map<K, V> mo45528b = AbstractC0435f.this.mo45528b();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!mo45528b.containsKey(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return AbstractC0435f.m45530a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int i = 0;
            for (int mo45537a = AbstractC0435f.this.mo45537a() - 1; mo45537a >= 0; mo45537a--) {
                Object mo45535a = AbstractC0435f.this.mo45535a(mo45537a, 0);
                i += mo45535a == null ? 0 : mo45535a.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return AbstractC0435f.this.mo45537a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<K> iterator() {
            return new C0436a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            int mo45533a = AbstractC0435f.this.mo45533a(obj);
            if (mo45533a >= 0) {
                AbstractC0435f.this.mo45536a(mo45533a);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            Map<K, V> mo45528b = AbstractC0435f.this.mo45528b();
            int size = mo45528b.size();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                mo45528b.remove(it2.next());
            }
            return size != mo45528b.size();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return AbstractC0435f.m45531a((Map) AbstractC0435f.this.mo45528b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return AbstractC0435f.this.mo45537a();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            return AbstractC0435f.this.m45527b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0435f.this.m45529a(tArr, 0);
        }
    }

    /* renamed from: androidx.b.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$d.class */
    final class C0439d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        int f1740a;

        /* renamed from: c */
        boolean f1742c = false;

        /* renamed from: b */
        int f1741b = -1;

        C0439d() {
            AbstractC0435f.this = r5;
            this.f1740a = r5.mo45537a() - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this.f1742c) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return C0432c.m45557a(entry.getKey(), AbstractC0435f.this.mo45535a(this.f1741b, 0)) && C0432c.m45557a(entry.getValue(), AbstractC0435f.this.mo45535a(this.f1741b, 1));
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            if (this.f1742c) {
                return (K) AbstractC0435f.this.mo45535a(this.f1741b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            if (this.f1742c) {
                return (V) AbstractC0435f.this.mo45535a(this.f1741b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f1741b < this.f1740a;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (this.f1742c) {
                int i = 0;
                Object mo45535a = AbstractC0435f.this.mo45535a(this.f1741b, 0);
                Object mo45535a2 = AbstractC0435f.this.mo45535a(this.f1741b, 1);
                int hashCode = mo45535a == null ? 0 : mo45535a.hashCode();
                if (mo45535a2 != null) {
                    i = mo45535a2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (hasNext()) {
                this.f1741b++;
                this.f1742c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f1742c) {
                AbstractC0435f.this.mo45536a(this.f1741b);
                this.f1741b--;
                this.f1740a--;
                this.f1742c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            if (this.f1742c) {
                return (V) AbstractC0435f.this.mo45534a(this.f1741b, (int) v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: androidx.b.f$e */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$e.class */
    final class C0440e implements Collection<V> {
        public C0440e() {
            AbstractC0435f.this = r4;
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
            AbstractC0435f.this.mo45525c();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC0435f.this.mo45526b(obj) >= 0;
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
            return AbstractC0435f.this.mo45537a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new C0436a(1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            int mo45526b = AbstractC0435f.this.mo45526b(obj);
            if (mo45526b >= 0) {
                AbstractC0435f.this.mo45536a(mo45526b);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            int mo45537a = AbstractC0435f.this.mo45537a();
            int i = 0;
            boolean z = false;
            while (i < mo45537a) {
                int i2 = mo45537a;
                int i3 = i;
                if (collection.contains(AbstractC0435f.this.mo45535a(i, 1))) {
                    AbstractC0435f.this.mo45536a(i);
                    i3 = i - 1;
                    i2 = mo45537a - 1;
                    z = true;
                }
                i = i3 + 1;
                mo45537a = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            int mo45537a = AbstractC0435f.this.mo45537a();
            int i = 0;
            boolean z = false;
            while (i < mo45537a) {
                int i2 = mo45537a;
                int i3 = i;
                if (!collection.contains(AbstractC0435f.this.mo45535a(i, 1))) {
                    AbstractC0435f.this.mo45536a(i);
                    i3 = i - 1;
                    i2 = mo45537a - 1;
                    z = true;
                }
                i = i3 + 1;
                mo45537a = i2;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return AbstractC0435f.this.mo45537a();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            return AbstractC0435f.this.m45527b(1);
        }

        @Override // java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0435f.this.m45529a(tArr, 1);
        }
    }

    /* renamed from: a */
    public static <K, V> boolean m45531a(Map<K, V> map, Collection<?> collection) {
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
    public static <T> boolean m45530a(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() != set2.size()) {
                return false;
            }
            return set.containsAll(set2);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }

    /* renamed from: a */
    protected abstract int mo45537a();

    /* renamed from: a */
    protected abstract int mo45533a(Object obj);

    /* renamed from: a */
    protected abstract Object mo45535a(int i, int i2);

    /* renamed from: a */
    protected abstract V mo45534a(int i, V v);

    /* renamed from: a */
    protected abstract void mo45536a(int i);

    /* renamed from: a */
    protected abstract void mo45532a(K k, V v);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    /* renamed from: a */
    public final <T> T[] m45529a(T[] tArr, int i) {
        int mo45537a = mo45537a();
        T[] tArr2 = tArr;
        if (tArr.length < mo45537a) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo45537a);
        }
        for (int i2 = 0; i2 < mo45537a; i2++) {
            tArr2[i2] = mo45535a(i2, i);
        }
        if (tArr2.length > mo45537a) {
            tArr2[mo45537a] = null;
        }
        return tArr2;
    }

    /* renamed from: b */
    protected abstract int mo45526b(Object obj);

    /* renamed from: b */
    protected abstract Map<K, V> mo45528b();

    /* renamed from: b */
    public final Object[] m45527b(int i) {
        int mo45537a = mo45537a();
        Object[] objArr = new Object[mo45537a];
        for (int i2 = 0; i2 < mo45537a; i2++) {
            objArr[i2] = mo45535a(i2, i);
        }
        return objArr;
    }

    /* renamed from: c */
    protected abstract void mo45525c();

    /* renamed from: d */
    public final Set<K> m45524d() {
        if (this.f1731c == null) {
            this.f1731c = new C0438c();
        }
        return this.f1731c;
    }
}
