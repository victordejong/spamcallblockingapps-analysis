package p131c.p161d.p266c.p269c;

import com.google.common.collect.BoundType;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
/* renamed from: c.d.c.c.w0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/w0.class */
public interface AbstractC5033w0<E> extends AbstractC5035x0<E>, AbstractC5029u0<E> {
    Comparator<? super E> comparator();

    AbstractC5033w0<E> descendingMultiset();

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    NavigableSet<E> elementSet();

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    Set<AbstractC4997j0.AbstractC4998a<E>> entrySet();

    AbstractC4997j0.AbstractC4998a<E> firstEntry();

    AbstractC5033w0<E> headMultiset(E e, BoundType boundType);

    AbstractC4997j0.AbstractC4998a<E> lastEntry();

    AbstractC4997j0.AbstractC4998a<E> pollFirstEntry();

    AbstractC4997j0.AbstractC4998a<E> pollLastEntry();

    AbstractC5033w0<E> subMultiset(E e, BoundType boundType, E e2, BoundType boundType2);

    AbstractC5033w0<E> tailMultiset(E e, BoundType boundType);
}
