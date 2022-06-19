package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: e.k.a.c.n0.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/d.class */
public class C23908d<T> implements Iterator<T>, Iterable<T> {

    /* renamed from: a */
    public final T[] f66149a;

    /* renamed from: b */
    public int f66150b = 0;

    public C23908d(T[] tArr) {
        this.f66149a = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f66150b < this.f66149a.length;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.f66150b;
        T[] tArr = this.f66149a;
        if (i < tArr.length) {
            this.f66150b = i + 1;
            return tArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
