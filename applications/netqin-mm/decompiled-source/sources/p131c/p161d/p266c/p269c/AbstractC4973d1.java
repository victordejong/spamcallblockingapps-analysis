package p131c.p161d.p266c.p269c;

import com.google.common.collect.Iterators;
import java.util.Iterator;
import java.util.ListIterator;
/* renamed from: c.d.c.c.d1 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/d1.class */
public abstract class AbstractC4973d1<F, T> extends AbstractC4968c1<F, T> implements ListIterator<T> {
    public AbstractC4973d1(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    /* renamed from: a */
    public final ListIterator<? extends F> m24730a() {
        return Iterators.m8266a((Iterator) this.f17599a);
    }

    @Override // java.util.ListIterator
    public void add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return m24730a().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return m24730a().nextIndex();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ListIterator
    public final T previous() {
        return (T) mo8028a(m24730a().previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return m24730a().previousIndex();
    }

    @Override // java.util.ListIterator
    public void set(T t) {
        throw new UnsupportedOperationException();
    }
}
