package p131c.p161d.p266c.p269c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
/* renamed from: c.d.c.c.j0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/j0.class */
public interface AbstractC4997j0<E> extends Collection<E> {

    /* renamed from: c.d.c.c.j0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/j0$a.class */
    public interface AbstractC4998a<E> {
        int getCount();

        E getElement();

        String toString();
    }

    int add(E e, int i);

    @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    boolean contains(Object obj);

    @Override // java.util.Collection
    boolean containsAll(Collection<?> collection);

    int count(Object obj);

    Set<E> elementSet();

    Set<AbstractC4998a<E>> entrySet();

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    boolean equals(Object obj);

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    int hashCode();

    @Override // java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
    Iterator<E> iterator();

    int remove(Object obj, int i);

    @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    boolean remove(Object obj);

    int setCount(E e, int i);

    boolean setCount(E e, int i, int i2);

    @Override // java.util.Collection
    int size();
}
