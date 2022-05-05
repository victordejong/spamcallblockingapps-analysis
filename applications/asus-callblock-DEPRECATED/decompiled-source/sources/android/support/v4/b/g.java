package android.support.v4.b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:android/support/v4/b/g.class */
public abstract class g<K, V> {

    /* renamed from: b  reason: collision with root package name */
    g<K, V>.b f128b;
    g<K, V>.c c;
    g<K, V>.e d;

    /* loaded from: classes-dex2jar.jar:android/support/v4/b/g$a.class */
    final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f129a;

        /* renamed from: b  reason: collision with root package name */
        int f130b;
        int c;
        boolean d = false;

        a(int i) {
            this.f129a = i;
            this.f130b = g.this.a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.c < this.f130b;
        }

        @Override // java.util.Iterator
        public final T next() {
            T t = (T) g.this.a(this.c, this.f129a);
            this.c++;
            this.d = true;
            return t;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.d) {
                throw new IllegalStateException();
            }
            this.c--;
            this.f130b--;
            this.d = false;
            g.this.a(this.c);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/b/g$b.class */
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
            int a2 = g.this.a();
            Iterator<? extends Map.Entry<K, V>> it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                g.this.a((g) entry.getKey(), entry.getValue());
            }
            return a2 != g.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            g.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int a2 = g.this.a(entry.getKey());
                if (a2 >= 0) {
                    z = android.support.v4.b.b.a(g.this.a(a2, 1), entry.getValue());
                }
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            boolean z;
            Iterator<?> it = collection.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (!contains(it.next())) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return g.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int a2 = g.this.a() - 1;
            int i = 0;
            while (a2 >= 0) {
                Object a3 = g.this.a(a2, 0);
                Object a4 = g.this.a(a2, 1);
                a2--;
                i += (a4 == null ? 0 : a4.hashCode()) ^ (a3 == null ? 0 : a3.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return g.this.a() == 0;
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
            return g.this.a();
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

    /* loaded from: classes-dex2jar.jar:android/support/v4/b/g$c.class */
    final class c implements Set<K> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
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
            g.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return g.this.a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            boolean z;
            Map<K, V> b2 = g.this.b();
            Iterator<?> it = collection.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (!b2.containsKey(it.next())) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return g.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int i = 0;
            for (int a2 = g.this.a() - 1; a2 >= 0; a2--) {
                Object a3 = g.this.a(a2, 0);
                i += a3 == null ? 0 : a3.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return g.this.a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            boolean z;
            int a2 = g.this.a(obj);
            if (a2 >= 0) {
                g.this.a(a2);
                z = true;
            } else {
                z = false;
            }
            return z;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            Map<K, V> b2 = g.this.b();
            int size = b2.size();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                b2.remove(it.next());
            }
            return size != b2.size();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return g.a((Map) g.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return g.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            return g.this.b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) g.this.a(tArr, 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/b/g$d.class */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        int f133a;
        boolean c = false;

        /* renamed from: b  reason: collision with root package name */
        int f134b = -1;

        d() {
            this.f133a = g.this.a() - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean z;
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                z = false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                z = false;
                if (android.support.v4.b.b.a(entry.getKey(), g.this.a(this.f134b, 0))) {
                    z = false;
                    if (android.support.v4.b.b.a(entry.getValue(), g.this.a(this.f134b, 1))) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            if (this.c) {
                return (K) g.this.a(this.f134b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            if (this.c) {
                return (V) g.this.a(this.f134b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f134b < this.f133a;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int i = 0;
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object a2 = g.this.a(this.f134b, 0);
            Object a3 = g.this.a(this.f134b, 1);
            int hashCode = a2 == null ? 0 : a2.hashCode();
            if (a3 != null) {
                i = a3.hashCode();
            }
            return i ^ hashCode;
        }

        @Override // java.util.Iterator
        public final /* bridge */ /* synthetic */ Object next() {
            this.f134b++;
            this.c = true;
            return this;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.c) {
                throw new IllegalStateException();
            }
            g.this.a(this.f134b);
            this.f134b--;
            this.f133a--;
            this.c = false;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            if (this.c) {
                return (V) g.this.a(this.f134b, (int) v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/b/g$e.class */
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
            g.this.c();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return g.this.b(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            boolean z;
            Iterator<?> it = collection.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (!contains(it.next())) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return g.this.a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            boolean z;
            int b2 = g.this.b(obj);
            if (b2 >= 0) {
                g.this.a(b2);
                z = true;
            } else {
                z = false;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            int a2 = g.this.a();
            int i = 0;
            boolean z = false;
            while (i < a2) {
                int i2 = i;
                a2 = a2;
                if (collection.contains(g.this.a(i, 1))) {
                    g.this.a(i);
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
            int a2 = g.this.a();
            int i = 0;
            boolean z = false;
            while (i < a2) {
                int i2 = i;
                a2 = a2;
                if (!collection.contains(g.this.a(i, 1))) {
                    g.this.a(i);
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
            return g.this.a();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            return g.this.b(1);
        }

        @Override // java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) g.this.a(tArr, 1);
        }
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
        if (r3.containsAll(r0) == false) goto L_0x0030;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> boolean a(java.util.Set<T> r3, java.lang.Object r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L_0x0009
        L_0x0007:
            r0 = r5
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof java.util.Set
            if (r0 == 0) goto L_0x0041
            r0 = r4
            java.util.Set r0 = (java.util.Set) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: NullPointerException -> 0x0035, ClassCastException -> 0x003b
            r1 = r4
            int r1 = r1.size()     // Catch: NullPointerException -> 0x0035, ClassCastException -> 0x003b
            if (r0 != r1) goto L_0x0030
            r0 = r3
            r1 = r4
            boolean r0 = r0.containsAll(r1)     // Catch: NullPointerException -> 0x0035, ClassCastException -> 0x003b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0007
        L_0x0030:
            r0 = 0
            r5 = r0
            goto L_0x0007
        L_0x0035:
            r3 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0007
        L_0x003b:
            r3 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0007
        L_0x0041:
            r0 = 0
            r5 = r0
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.b.g.a(java.util.Set, java.lang.Object):boolean");
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
        if (tArr.length < a2) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), a2));
        }
        for (int i2 = 0; i2 < a2; i2++) {
            tArr[i2] = a(i2, i);
        }
        if (tArr.length > a2) {
            tArr[a2] = null;
        }
        return tArr;
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
}
