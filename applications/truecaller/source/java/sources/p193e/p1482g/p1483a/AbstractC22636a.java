package p193e.p1482g.p1483a;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: e.g.a.a */
/* loaded from: classes-dex2jar.jar:e/g/a/a.class */
public abstract class AbstractC22636a<E> implements Iterator<E> {

    /* renamed from: a */
    public int f62656a = 0;

    /* renamed from: b */
    public E f62657b;

    /* renamed from: a */
    public final E m8009a() {
        this.f62656a = 2;
        return null;
    }

    /* renamed from: b */
    public abstract E mo7984b();

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z = true;
        if (this.f62656a == 0) {
            this.f62656a = 1;
            this.f62657b = mo7984b();
        }
        if (this.f62656a != 1) {
            z = false;
        }
        return z;
    }

    @Override // java.util.Iterator
    public E next() {
        if (hasNext()) {
            this.f62656a = 0;
            return this.f62657b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
