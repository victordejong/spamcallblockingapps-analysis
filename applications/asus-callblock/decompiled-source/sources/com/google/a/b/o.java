package com.google.a.b;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/a/b/o.class */
public abstract class o<E> extends k<E> implements Set<E> {

    /* loaded from: classes-dex2jar.jar:com/google/a/b/o$a.class */
    static abstract class a<E> extends o<E> {

        /* renamed from: a  reason: collision with root package name */
        final transient Object[] f3706a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Object[] objArr) {
            this.f3706a = objArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.a.b.k
        public final boolean a() {
            return false;
        }

        @Override // com.google.a.b.o, com.google.a.b.k
        public final ae<E> b() {
            return q.a(this.f3706a);
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public boolean containsAll(Collection<?> collection) {
            boolean z;
            if (collection == this) {
                z = true;
            } else if (!(collection instanceof a)) {
                z = o.super.containsAll(collection);
            } else if (collection.size() > size()) {
                z = false;
            } else {
                Object[] objArr = ((a) collection).f3706a;
                int length = objArr.length;
                int i = 0;
                while (true) {
                    z = true;
                    if (i >= length) {
                        break;
                    } else if (!contains(objArr[i])) {
                        z = false;
                        break;
                    } else {
                        i++;
                    }
                }
            }
            return z;
        }

        @Override // com.google.a.b.k
        final m<E> e() {
            return new j(this.f3706a, this);
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // com.google.a.b.o, com.google.a.b.k, java.util.Collection, java.lang.Iterable, java.util.List
        public /* synthetic */ Iterator iterator() {
            return q.a(this.f3706a);
        }

        @Override // java.util.Collection, java.util.Set
        public int size() {
            return this.f3706a.length;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public Object[] toArray() {
            Object[] objArr = new Object[size()];
            System.arraycopy(this.f3706a, 0, objArr, 0, size());
            return objArr;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            int size = size();
            if (tArr.length < size) {
                tArr2 = (T[]) u.a(tArr, size);
            } else {
                tArr2 = tArr;
                if (tArr.length > size) {
                    tArr[size] = null;
                    tArr2 = tArr;
                }
            }
            System.arraycopy(this.f3706a, 0, tArr2, 0, size);
            return tArr2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/a/b/o$b.class */
    static abstract class b<D, E> extends o<E> {

        /* renamed from: a  reason: collision with root package name */
        final D[] f3707a;

        /* renamed from: b  reason: collision with root package name */
        final int f3708b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(D[] dArr, int i) {
            this.f3707a = dArr;
            this.f3708b = i;
        }

        @Override // com.google.a.b.o, com.google.a.b.k
        /* renamed from: b */
        public final ae<E> iterator() {
            return new com.google.a.b.a<E>(this.f3707a.length) { // from class: com.google.a.b.o.b.1
                @Override // com.google.a.b.a
                protected final E a(int i) {
                    return (E) b.this.b(b.this.f3707a[i]);
                }
            };
        }

        abstract E b(D d);

        @Override // com.google.a.b.o
        final boolean c() {
            return true;
        }

        @Override // com.google.a.b.o, java.util.Collection, java.util.Set
        public final int hashCode() {
            return this.f3708b;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.util.Set
        public int size() {
            return this.f3707a.length;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public Object[] toArray() {
            return toArray(new Object[size()]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            int size = size();
            if (tArr.length < size) {
                tArr2 = (T[]) u.a(tArr, size);
            } else {
                tArr2 = tArr;
                if (tArr.length > size) {
                    tArr[size] = null;
                    tArr2 = tArr;
                }
            }
            for (int i = 0; i < this.f3707a.length; i++) {
                tArr2[i] = b(this.f3707a[i]);
            }
            return tArr2;
        }
    }

    public static <E> o<E> a(E e) {
        return new ad(e);
    }

    public static <E> o<E> f() {
        return h.f3697a;
    }

    @Override // com.google.a.b.k
    /* renamed from: b */
    public abstract ae<E> iterator();

    boolean c() {
        return false;
    }

    public boolean equals(Object obj) {
        return obj == this ? true : (!(obj instanceof o) || !c() || !((o) obj).c() || hashCode() == obj.hashCode()) ? aa.a(this, obj) : false;
    }

    public int hashCode() {
        Iterator<E> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            E next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }
}
