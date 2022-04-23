package p131c.p161d.p266c.p269c;

import java.util.Comparator;
import java.util.SortedSet;
/* renamed from: c.d.c.c.z0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/z0.class */
public interface AbstractC5041z0<K, V> extends AbstractC5027t0<K, V> {
    @Override // p131c.p161d.p266c.p269c.AbstractC5027t0, p131c.p161d.p266c.p269c.AbstractC4995i0
    SortedSet<V> get(K k);

    @Override // p131c.p161d.p266c.p269c.AbstractC5027t0, p131c.p161d.p266c.p269c.AbstractC4995i0
    SortedSet<V> removeAll(Object obj);

    @Override // p131c.p161d.p266c.p269c.AbstractC5027t0, p131c.p161d.p266c.p269c.AbstractC4995i0
    SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable);

    Comparator<? super V> valueComparator();
}
