package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.NoSuchElementException;
/* renamed from: h.i.a.e.j.l.g1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/g1.class */
public abstract class AbstractC8113g1<E> extends AbstractC8239m1<E> {

    /* renamed from: a */
    public final int f18844a;

    /* renamed from: b */
    public int f18845b;

    public AbstractC8113g1(int i, int i2) {
        C8056d1.m18633b(i2, i);
        this.f18844a = i;
        this.f18845b = i2;
    }

    /* renamed from: a */
    public abstract E mo18484a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f18845b < this.f18844a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f18845b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f18845b;
            this.f18845b = i + 1;
            return mo18484a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f18845b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f18845b - 1;
            this.f18845b = i;
            return mo18484a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f18845b - 1;
    }
}
