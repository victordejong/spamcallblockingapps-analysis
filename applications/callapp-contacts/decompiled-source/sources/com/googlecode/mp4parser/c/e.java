package com.googlecode.mp4parser.c;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/e.class */
public class e<E> extends AbstractList<E> {

    /* renamed from: c  reason: collision with root package name */
    private static final f f33168c = f.a(e.class);

    /* renamed from: a  reason: collision with root package name */
    List<E> f33169a;

    /* renamed from: b  reason: collision with root package name */
    Iterator<E> f33170b;

    public e(List<E> list, Iterator<E> it2) {
        this.f33169a = list;
        this.f33170b = it2;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.f33169a.size() > i) {
            return this.f33169a.get(i);
        }
        if (this.f33170b.hasNext()) {
            this.f33169a.add(this.f33170b.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new Iterator<E>() { // from class: com.googlecode.mp4parser.c.e.1

            /* renamed from: a  reason: collision with root package name */
            int f33171a = 0;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f33171a < e.this.f33169a.size() || e.this.f33170b.hasNext();
            }

            @Override // java.util.Iterator
            public final E next() {
                while (this.f33171a >= e.this.f33169a.size()) {
                    e.this.f33169a.add(e.this.f33170b.next());
                }
                List<E> list = e.this.f33169a;
                int i = this.f33171a;
                this.f33171a = i + 1;
                return list.get(i);
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        f fVar = f33168c;
        fVar.a("potentially expensive size() call");
        fVar.a("blowup running");
        while (this.f33170b.hasNext()) {
            this.f33169a.add(this.f33170b.next());
        }
        return this.f33169a.size();
    }
}
