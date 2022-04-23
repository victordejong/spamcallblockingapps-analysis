package com.google.a.b;

import com.google.a.a.d;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/a/b/ab.class */
public final class ab<E> extends m<E> {

    /* renamed from: a  reason: collision with root package name */
    final transient E f3677a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(E e) {
        this.f3677a = (E) d.a(e);
    }

    @Override // com.google.a.b.m
    /* renamed from: a */
    public final af<E> listIterator(final int i) {
        d.b(i, 1);
        return new af<E>() { // from class: com.google.a.b.ab.1

            /* renamed from: a  reason: collision with root package name */
            boolean f3678a;

            {
                this.f3678a = i == 0;
            }

            @Override // java.util.Iterator, java.util.ListIterator
            public final boolean hasNext() {
                return this.f3678a;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return !this.f3678a;
            }

            @Override // java.util.Iterator, java.util.ListIterator
            public final E next() {
                if (!this.f3678a) {
                    throw new NoSuchElementException();
                }
                this.f3678a = false;
                return ab.this.f3677a;
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return this.f3678a ? 0 : 1;
            }

            @Override // java.util.ListIterator
            public final E previous() {
                if (this.f3678a) {
                    throw new NoSuchElementException();
                }
                this.f3678a = true;
                return ab.this.f3677a;
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return this.f3678a ? -1 : 0;
            }
        };
    }

    @Override // com.google.a.b.m
    /* renamed from: a */
    public final m<E> subList(int i, int i2) {
        d.a(i, i2, 1);
        m<E> mVar = this;
        if (i == i2) {
            mVar = f.f3694a;
        }
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.a.b.k
    public final boolean a() {
        return false;
    }

    @Override // com.google.a.b.m, com.google.a.b.k
    public final ae<E> b() {
        return q.a(this.f3677a);
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.f3677a.equals(obj);
    }

    @Override // com.google.a.b.m, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() != 1 || !this.f3677a.equals(list.get(0))) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // java.util.List
    public final E get(int i) {
        d.a(i, 1);
        return this.f3677a;
    }

    @Override // com.google.a.b.m, java.util.Collection, java.util.List
    public final int hashCode() {
        return this.f3677a.hashCode() + 31;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return this.f3677a.equals(obj) ? 0 : -1;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // com.google.a.b.m, com.google.a.b.k, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return q.a(this.f3677a);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return this.f3677a.equals(obj) ? 0 : -1;
    }

    @Override // java.util.Collection, java.util.List
    public final int size() {
        return 1;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return new Object[]{this.f3677a};
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        if (tArr.length == 0) {
            tArr2 = (T[]) u.a(tArr, 1);
        } else {
            tArr2 = tArr;
            if (tArr.length > 1) {
                tArr[1] = null;
                tArr2 = tArr;
            }
        }
        tArr2[0] = this.f3677a;
        return tArr2;
    }

    @Override // com.google.a.b.k
    public final String toString() {
        String obj = this.f3677a.toString();
        return new StringBuilder(obj.length() + 2).append('[').append(obj).append(']').toString();
    }
}
