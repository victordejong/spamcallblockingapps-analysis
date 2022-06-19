package com.googlecode.mp4parser.p425c;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* renamed from: com.googlecode.mp4parser.c.e */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/e.class */
public class C16285e<E> extends AbstractList<E> {

    /* renamed from: c */
    private static final AbstractC16287f f57531c = AbstractC16287f.m7514a(C16285e.class);

    /* renamed from: a */
    List<E> f57532a;

    /* renamed from: b */
    Iterator<E> f57533b;

    public C16285e(List<E> list, Iterator<E> it2) {
        this.f57532a = list;
        this.f57533b = it2;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.f57532a.size() > i) {
            return this.f57532a.get(i);
        }
        if (!this.f57533b.hasNext()) {
            throw new NoSuchElementException();
        }
        this.f57532a.add(this.f57533b.next());
        return get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new Iterator<E>() { // from class: com.googlecode.mp4parser.c.e.1

            /* renamed from: a */
            int f57534a = 0;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f57534a < C16285e.this.f57532a.size() || C16285e.this.f57533b.hasNext();
            }

            @Override // java.util.Iterator
            public final E next() {
                while (this.f57534a >= C16285e.this.f57532a.size()) {
                    C16285e.this.f57532a.add(C16285e.this.f57533b.next());
                }
                List<E> list = C16285e.this.f57532a;
                int i = this.f57534a;
                this.f57534a = i + 1;
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
        AbstractC16287f abstractC16287f = f57531c;
        abstractC16287f.mo7513a("potentially expensive size() call");
        abstractC16287f.mo7513a("blowup running");
        while (this.f57533b.hasNext()) {
            this.f57532a.add(this.f57533b.next());
        }
        return this.f57532a.size();
    }
}
