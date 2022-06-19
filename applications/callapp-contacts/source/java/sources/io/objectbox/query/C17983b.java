package io.objectbox.query;

import io.objectbox.C17944a;
import io.objectbox.exception.DbException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
/* renamed from: io.objectbox.query.b */
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/b.class */
public final class C17983b<E> implements List<E> {

    /* renamed from: a */
    final int f62847a;

    /* renamed from: b */
    private final C17944a<E> f62848b;

    /* renamed from: c */
    private final long[] f62849c;

    /* renamed from: d */
    private final List<E> f62850d;

    /* renamed from: e */
    private volatile int f62851e;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: io.objectbox.query.b$a */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/query/b$a.class */
    public final class C17984a implements ListIterator<E> {

        /* renamed from: b */
        private int f62853b;

        public C17984a(int i) {
            C17983b.this = r4;
            this.f62853b = i;
        }

        @Override // java.util.ListIterator
        public final void add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f62853b < C17983b.this.f62847a;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f62853b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final E next() {
            if (this.f62853b < C17983b.this.f62847a) {
                E e = (E) C17983b.this.get(this.f62853b);
                this.f62853b++;
                return e;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f62853b;
        }

        @Override // java.util.ListIterator
        public final E previous() {
            int i = this.f62853b;
            if (i > 0) {
                int i2 = i - 1;
                this.f62853b = i2;
                return (E) C17983b.this.get(i2);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f62853b - 1;
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

    public C17983b(C17944a<E> c17944a, long[] jArr, boolean z) {
        if (c17944a == null || jArr == null) {
            throw new NullPointerException("Illegal null parameters passed");
        }
        this.f62848b = c17944a;
        this.f62849c = jArr;
        int length = jArr.length;
        this.f62847a = length;
        if (!z) {
            this.f62850d = null;
            return;
        }
        this.f62850d = new ArrayList(length);
        for (int i = 0; i < this.f62847a; i++) {
            this.f62850d.add(null);
        }
    }

    /* renamed from: a */
    private void m4597a() {
        if (this.f62851e != this.f62847a) {
            m4596b();
            this.f62848b.f62707a.m4733b(new Runnable() { // from class: io.objectbox.query._$$Lambda$b$mA87EAqXLimkx_eduBLWpEyewhA
                @Override // java.lang.Runnable
                public final void run() {
                    C17983b.this.m4595c();
                }
            });
        }
    }

    /* renamed from: b */
    private void m4596b() {
        if (this.f62850d != null) {
            return;
        }
        throw new DbException("This operation only works with cached lazy lists");
    }

    /* renamed from: c */
    public /* synthetic */ void m4595c() {
        for (int i = 0; i < this.f62847a; i++) {
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
        m4597a();
        return this.f62850d.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        m4597a();
        return this.f62850d.containsAll(collection);
    }

    @Override // java.util.List
    public final E get(int i) {
        E m4715a;
        if (i < 0 || i > this.f62847a) {
            throw new IndexOutOfBoundsException("Illegal cursor location ".concat(String.valueOf(i)));
        }
        List<E> list = this.f62850d;
        if (list == null) {
            synchronized (this) {
                m4715a = this.f62848b.m4715a(this.f62849c[i]);
            }
            return m4715a;
        }
        E e = list.get(i);
        E e2 = e;
        if (e == null) {
            E m4715a2 = this.f62848b.m4715a(this.f62849c[i]);
            synchronized (this) {
                e2 = this.f62850d.get(i);
                if (e2 == null) {
                    this.f62850d.set(i, m4715a2);
                    this.f62851e++;
                    e2 = m4715a2;
                }
            }
        }
        return e2;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        m4597a();
        return this.f62850d.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f62847a == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return new C17984a(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        m4597a();
        return this.f62850d.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator<E> listIterator() {
        return new C17984a(0);
    }

    @Override // java.util.List
    public final ListIterator<E> listIterator(int i) {
        return new C17984a(i);
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
        return this.f62847a;
    }

    @Override // java.util.List
    public final List<E> subList(int i, int i2) {
        m4596b();
        for (int i3 = i; i3 < i2; i3++) {
            get(i3);
        }
        return this.f62850d.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        m4597a();
        return this.f62850d.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        m4597a();
        return (T[]) this.f62850d.toArray(tArr);
    }
}
