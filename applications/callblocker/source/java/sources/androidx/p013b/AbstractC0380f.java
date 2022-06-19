package androidx.p013b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: androidx.b.f */
/* loaded from: classes-dex2jar.jar:androidx/b/f.class */
public abstract class AbstractC0380f<K, V> {

    /* renamed from: b */
    AbstractC0380f<K, V>.C0382b f1573b;

    /* renamed from: c */
    AbstractC0380f<K, V>.C0383c f1574c;

    /* renamed from: d */
    AbstractC0380f<K, V>.C0385e f1575d;

    /* renamed from: androidx.b.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$a.class */
    final class C0381a<T> implements Iterator<T> {

        /* renamed from: a */
        final int f1576a;

        /* renamed from: b */
        int f1577b;

        /* renamed from: c */
        int f1578c;

        /* renamed from: d */
        boolean f1579d = false;

        C0381a(int i) {
            AbstractC0380f.this = r4;
            this.f1576a = i;
            this.f1577b = r4.mo21111a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1578c < this.f1577b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) AbstractC0380f.this.mo21109a(this.f1578c, this.f1576a);
            this.f1578c++;
            this.f1579d = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f1579d) {
                throw new IllegalStateException();
            }
            this.f1578c--;
            this.f1577b--;
            this.f1579d = false;
            AbstractC0380f.this.mo21110a(this.f1578c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.b.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$b.class */
    public final class C0382b implements Set<Map.Entry<K, V>> {
        C0382b() {
            AbstractC0380f.this = r4;
        }

        /* renamed from: a */
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo21111a = AbstractC0380f.this.mo21111a();
            for (Map.Entry<K, V> entry : collection) {
                AbstractC0380f.this.mo21106a((AbstractC0380f) entry.getKey(), (K) entry.getValue());
            }
            return mo21111a != AbstractC0380f.this.mo21111a();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC0380f.this.mo21098c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int mo21107a = AbstractC0380f.this.mo21107a(entry.getKey());
                if (mo21107a >= 0) {
                    z = C0377c.m21138a(AbstractC0380f.this.mo21109a(mo21107a, 1), entry.getValue());
                }
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            boolean z;
            Iterator<?> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                } else if (!contains(it.next())) {
                    z = false;
                    break;
                }
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC0380f.m21104a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int mo21111a = AbstractC0380f.this.mo21111a() - 1;
            int i = 0;
            while (true) {
                int i2 = i;
                if (mo21111a >= 0) {
                    Object mo21109a = AbstractC0380f.this.mo21109a(mo21111a, 0);
                    Object mo21109a2 = AbstractC0380f.this.mo21109a(mo21111a, 1);
                    mo21111a--;
                    i = i2 + ((mo21109a2 == null ? 0 : mo21109a2.hashCode()) ^ (mo21109a == null ? 0 : mo21109a.hashCode()));
                } else {
                    return i2;
                }
            }
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC0380f.this.mo21111a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C0384d();
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
            return AbstractC0380f.this.mo21111a();
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
    /* renamed from: androidx.b.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$c.class */
    public final class C0383c implements Set<K> {
        C0383c() {
            AbstractC0380f.this = r4;
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
            AbstractC0380f.this.mo21098c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC0380f.this.mo21107a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return AbstractC0380f.m21105a((Map) AbstractC0380f.this.mo21102b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC0380f.m21104a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo21111a = AbstractC0380f.this.mo21111a() - 1; mo21111a >= 0; mo21111a--) {
                Object mo21109a = AbstractC0380f.this.mo21109a(mo21111a, 0);
                i += mo21109a == null ? 0 : mo21109a.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC0380f.this.mo21111a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C0381a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            boolean z;
            int mo21107a = AbstractC0380f.this.mo21107a(obj);
            if (mo21107a >= 0) {
                AbstractC0380f.this.mo21110a(mo21107a);
                z = true;
            } else {
                z = false;
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return AbstractC0380f.m21099b(AbstractC0380f.this.mo21102b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return AbstractC0380f.m21097c(AbstractC0380f.this.mo21102b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC0380f.this.mo21111a();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return AbstractC0380f.this.m21101b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0380f.this.m21103a(tArr, 0);
        }
    }

    /* renamed from: androidx.b.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$d.class */
    final class C0384d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        int f1583a;

        /* renamed from: c */
        boolean f1585c = false;

        /* renamed from: b */
        int f1584b = -1;

        C0384d() {
            AbstractC0380f.this = r5;
            this.f1583a = r5.mo21111a() - 1;
        }

        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f1584b++;
            this.f1585c = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = false;
            if (!this.f1585c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                z = C0377c.m21138a(entry.getKey(), AbstractC0380f.this.mo21109a(this.f1584b, 0)) && C0377c.m21138a(entry.getValue(), AbstractC0380f.this.mo21109a(this.f1584b, 1));
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (!this.f1585c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (K) AbstractC0380f.this.mo21109a(this.f1584b, 0);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (!this.f1585c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) AbstractC0380f.this.mo21109a(this.f1584b, 1);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1584b < this.f1583a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int i = 0;
            if (!this.f1585c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object mo21109a = AbstractC0380f.this.mo21109a(this.f1584b, 0);
            Object mo21109a2 = AbstractC0380f.this.mo21109a(this.f1584b, 1);
            int hashCode = mo21109a == null ? 0 : mo21109a.hashCode();
            if (mo21109a2 != null) {
                i = mo21109a2.hashCode();
            }
            return i ^ hashCode;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f1585c) {
                throw new IllegalStateException();
            }
            AbstractC0380f.this.mo21110a(this.f1584b);
            this.f1584b--;
            this.f1583a--;
            this.f1585c = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (!this.f1585c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) AbstractC0380f.this.mo21108a(this.f1584b, (int) v);
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.b.f$e */
    /* loaded from: classes-dex2jar.jar:androidx/b/f$e.class */
    public final class C0385e implements Collection<V> {
        C0385e() {
            AbstractC0380f.this = r4;
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
            AbstractC0380f.this.mo21098c();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC0380f.this.mo21100b(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            boolean z;
            Iterator<?> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                } else if (!contains(it.next())) {
                    z = false;
                    break;
                }
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return AbstractC0380f.this.mo21111a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C0381a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            boolean z;
            int mo21100b = AbstractC0380f.this.mo21100b(obj);
            if (mo21100b >= 0) {
                AbstractC0380f.this.mo21110a(mo21100b);
                z = true;
            } else {
                z = false;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int mo21111a = AbstractC0380f.this.mo21111a();
            int i = 0;
            boolean z = false;
            while (i < mo21111a) {
                int i2 = i;
                int i3 = mo21111a;
                if (collection.contains(AbstractC0380f.this.mo21109a(i, 1))) {
                    AbstractC0380f.this.mo21110a(i);
                    i2 = i - 1;
                    i3 = mo21111a - 1;
                    z = true;
                }
                i = i2 + 1;
                mo21111a = i3;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int mo21111a = AbstractC0380f.this.mo21111a();
            int i = 0;
            boolean z = false;
            while (i < mo21111a) {
                int i2 = i;
                int i3 = mo21111a;
                if (!collection.contains(AbstractC0380f.this.mo21109a(i, 1))) {
                    AbstractC0380f.this.mo21110a(i);
                    i2 = i - 1;
                    i3 = mo21111a - 1;
                    z = true;
                }
                i = i2 + 1;
                mo21111a = i3;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return AbstractC0380f.this.mo21111a();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return AbstractC0380f.this.m21101b(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0380f.this.m21103a(tArr, 1);
        }
    }

    /* renamed from: a */
    public static <K, V> boolean m21105a(Map<K, V> map, Collection<?> collection) {
        boolean z;
        Iterator<?> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            } else if (!map.containsKey(it.next())) {
                z = false;
                break;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static <T> boolean m21104a(Set<T> set, Object obj) {
        boolean z;
        if (set == obj) {
            z = true;
        } else {
            z = false;
            if (obj instanceof Set) {
                Set set2 = (Set) obj;
                try {
                    if (set.size() == set2.size()) {
                        if (set.containsAll(set2)) {
                            z = true;
                        }
                    }
                    z = false;
                } catch (ClassCastException e) {
                    z = false;
                } catch (NullPointerException e2) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static <K, V> boolean m21099b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    /* renamed from: c */
    public static <K, V> boolean m21097c(Map<K, V> map, Collection<?> collection) {
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
    protected abstract int mo21111a();

    /* renamed from: a */
    protected abstract int mo21107a(Object obj);

    /* renamed from: a */
    protected abstract Object mo21109a(int i, int i2);

    /* renamed from: a */
    protected abstract V mo21108a(int i, V v);

    /* renamed from: a */
    protected abstract void mo21110a(int i);

    /* renamed from: a */
    protected abstract void mo21106a(K k, V v);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Object[]] */
    /* renamed from: a */
    public <T> T[] m21103a(T[] tArr, int i) {
        int mo21111a = mo21111a();
        if (tArr.length < mo21111a) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo21111a);
        }
        for (int i2 = 0; i2 < mo21111a; i2++) {
            tArr[i2] = mo21109a(i2, i);
        }
        if (tArr.length > mo21111a) {
            tArr[mo21111a] = null;
        }
        return tArr;
    }

    /* renamed from: b */
    protected abstract int mo21100b(Object obj);

    /* renamed from: b */
    protected abstract Map<K, V> mo21102b();

    /* renamed from: b */
    public Object[] m21101b(int i) {
        int mo21111a = mo21111a();
        Object[] objArr = new Object[mo21111a];
        for (int i2 = 0; i2 < mo21111a; i2++) {
            objArr[i2] = mo21109a(i2, i);
        }
        return objArr;
    }

    /* renamed from: c */
    protected abstract void mo21098c();

    /* renamed from: d */
    public Set<Map.Entry<K, V>> m21096d() {
        if (this.f1573b == null) {
            this.f1573b = new C0382b();
        }
        return this.f1573b;
    }

    /* renamed from: e */
    public Set<K> m21095e() {
        if (this.f1574c == null) {
            this.f1574c = new C0383c();
        }
        return this.f1574c;
    }

    /* renamed from: f */
    public Collection<V> m21094f() {
        if (this.f1575d == null) {
            this.f1575d = new C0385e();
        }
        return this.f1575d;
    }
}
