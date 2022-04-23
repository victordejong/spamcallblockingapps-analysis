package io.objectbox.query;

import io.objectbox.exception.DbException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/b.class */
public final class b<E> implements List<E> {

    /* renamed from: a  reason: collision with root package name */
    final int f36257a;

    /* renamed from: b  reason: collision with root package name */
    private final io.objectbox.a<E> f36258b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f36259c;

    /* renamed from: d  reason: collision with root package name */
    private final List<E> f36260d;
    private volatile int e;

    /* loaded from: classes5-dex2jar.jar:io/objectbox/query/b$a.class */
    protected final class a implements ListIterator<E> {

        /* renamed from: b  reason: collision with root package name */
        private int f36262b;

        public a(int i) {
            this.f36262b = i;
        }

        @Override // java.util.ListIterator
        public final void add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f36262b < b.this.f36257a;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f36262b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final E next() {
            if (this.f36262b < b.this.f36257a) {
                E e = (E) b.this.get(this.f36262b);
                this.f36262b++;
                return e;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f36262b;
        }

        @Override // java.util.ListIterator
        public final E previous() {
            int i = this.f36262b;
            if (i > 0) {
                int i2 = i - 1;
                this.f36262b = i2;
                return (E) b.this.get(i2);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f36262b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public final void set(E e) {
            throw new UnsupportedOperationException();
        }
    }

    public b(io.objectbox.a<E> aVar, long[] jArr, boolean z) {
        if (aVar == null || jArr == null) {
            throw new NullPointerException("Illegal null parameters passed");
        }
        this.f36258b = aVar;
        this.f36259c = jArr;
        int length = jArr.length;
        this.f36257a = length;
        if (z) {
            this.f36260d = new ArrayList(length);
            for (int i = 0; i < this.f36257a; i++) {
                this.f36260d.add(null);
            }
            return;
        }
        this.f36260d = null;
    }

    private void a() {
        if (this.e != this.f36257a) {
            b();
            this.f36258b.f36185a.b(new Runnable() { // from class: io.objectbox.query._$$Lambda$b$mA87EAqXLimkx_eduBLWpEyewhA
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.c();
                }
            });
        }
    }

    private void b() {
        if (this.f36260d == null) {
            throw new DbException("This operation only works with cached lazy lists");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        for (int i = 0; i < this.f36257a; i++) {
            get(i);
        }
    }

    @Override // java.util.List
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        a();
        return this.f36260d.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        a();
        return this.f36260d.containsAll(collection);
    }

    @Override // java.util.List
    public final E get(int i) {
        E a2;
        if (i < 0 || i > this.f36257a) {
            throw new IndexOutOfBoundsException("Illegal cursor location ".concat(String.valueOf(i)));
        }
        List<E> list = this.f36260d;
        if (list != null) {
            E e = list.get(i);
            E e2 = e;
            if (e == null) {
                E a3 = this.f36258b.a(this.f36259c[i]);
                synchronized (this) {
                    e2 = this.f36260d.get(i);
                    if (e2 == null) {
                        this.f36260d.set(i, a3);
                        this.e++;
                        e2 = a3;
                    }
                }
            }
            return e2;
        }
        synchronized (this) {
            a2 = this.f36258b.a(this.f36259c[i]);
        }
        return a2;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        a();
        return this.f36260d.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f36257a == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return new a(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        a();
        return this.f36260d.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator<E> listIterator() {
        return new a(0);
    }

    @Override // java.util.List
    public final ListIterator<E> listIterator(int i) {
        return new a(i);
    }

    @Override // java.util.List
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.f36257a;
    }

    @Override // java.util.List
    public final List<E> subList(int i, int i2) {
        b();
        for (int i3 = i; i3 < i2; i3++) {
            get(i3);
        }
        return this.f36260d.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        a();
        return this.f36260d.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        a();
        return (T[]) this.f36260d.toArray(tArr);
    }
}
