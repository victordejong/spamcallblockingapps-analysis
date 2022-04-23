package p131c.p161d.p266c.p269c;

import java.util.NoSuchElementException;
/* renamed from: c.d.c.c.g */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/g.class */
public abstract class AbstractC4982g<T> extends AbstractC4978e1<T> {

    /* renamed from: a */
    public T f17603a;

    public AbstractC4982g(T t) {
        this.f17603a = t;
    }

    /* renamed from: a */
    public abstract T mo8066a(T t);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17603a != null;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            try {
                return this.f17603a;
            } finally {
                this.f17603a = mo8066a(this.f17603a);
            }
        } else {
            throw new NoSuchElementException();
        }
    }
}
