package p081h.p203i.p316b.p318b;

import java.util.NoSuchElementException;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/a.class */
public abstract class AbstractC9310a<E> extends AbstractC9315b0<E> {

    /* renamed from: a */
    public final int f21335a;

    /* renamed from: b */
    public int f21336b;

    public AbstractC9310a(int i, int i2) {
        C9301k.m15471b(i2, i);
        this.f21335a = i;
        this.f21336b = i2;
    }

    /* renamed from: a */
    public abstract E mo15425a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f21336b < this.f21335a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f21336b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f21336b;
            this.f21336b = i + 1;
            return mo15425a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f21336b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f21336b - 1;
            this.f21336b = i;
            return mo15425a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f21336b - 1;
    }
}
