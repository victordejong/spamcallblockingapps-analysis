package p131c.p161d.p266c.p269c;

import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/a.class */
public abstract class AbstractC4956a<E> extends AbstractC4981f1<E> {

    /* renamed from: a */
    public final int f17590a;

    /* renamed from: b */
    public int f17591b;

    public AbstractC4956a(int i) {
        this(i, 0);
    }

    public AbstractC4956a(int i, int i2) {
        C4933n.m24779b(i2, i);
        this.f17590a = i;
        this.f17591b = i2;
    }

    /* renamed from: a */
    public abstract E mo8246a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f17591b < this.f17590a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f17591b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f17591b;
            this.f17591b = i + 1;
            return mo8246a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f17591b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f17591b - 1;
            this.f17591b = i;
            return mo8246a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f17591b - 1;
    }
}
