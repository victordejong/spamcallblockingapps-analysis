package p131c.p161d.p266c.p269c;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
/* renamed from: c.d.c.c.d0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/d0.class */
public abstract class AbstractC4972d0<E> extends AbstractC4961b0<E> implements SortedSet<E> {
    private int unsafeCompare(Object obj, Object obj2) {
        Comparator<? super E> comparator = comparator();
        return comparator == null ? ((Comparable) obj).compareTo(obj2) : comparator.compare(obj, obj2);
    }

    @Override // java.util.SortedSet
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Collection delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Set delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract SortedSet<E> delegate();

    @Override // java.util.SortedSet
    public E first() {
        return delegate().first();
    }

    @Override // java.util.SortedSet
    public SortedSet<E> headSet(E e) {
        return delegate().headSet(e);
    }

    @Override // java.util.SortedSet
    public E last() {
        return delegate().last();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public boolean standardContains(Object obj) {
        boolean z = false;
        try {
            if (unsafeCompare(tailSet(obj).first(), obj) == 0) {
                z = true;
            }
        } catch (ClassCastException | NullPointerException | NoSuchElementException e) {
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public boolean standardRemove(Object obj) {
        try {
            Iterator<E> it = tailSet(obj).iterator();
            if (!it.hasNext() || unsafeCompare(it.next(), obj) != 0) {
                return false;
            }
            it.remove();
            return true;
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }

    public SortedSet<E> standardSubSet(E e, E e2) {
        return tailSet(e).headSet(e2);
    }

    @Override // java.util.SortedSet
    public SortedSet<E> subSet(E e, E e2) {
        return delegate().subSet(e, e2);
    }

    @Override // java.util.SortedSet
    public SortedSet<E> tailSet(E e) {
        return delegate().tailSet(e);
    }
}
