package p131c.p161d.p266c.p269c;

import com.google.common.collect.Ordering;
import java.util.Comparator;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.v0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/v0.class */
public final class C5031v0 {
    /* renamed from: a */
    public static <E> Comparator<? super E> m24613a(SortedSet<E> sortedSet) {
        Comparator<? super E> comparator = sortedSet.comparator();
        Comparator<? super E> comparator2 = comparator;
        if (comparator == null) {
            comparator2 = Ordering.natural();
        }
        return comparator2;
    }

    /* renamed from: a */
    public static boolean m24614a(Comparator<?> comparator, Iterable<?> iterable) {
        Comparator comparator2;
        C4933n.m24795a(comparator);
        C4933n.m24795a(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = m24613a((SortedSet) iterable);
        } else if (!(iterable instanceof AbstractC5029u0)) {
            return false;
        } else {
            comparator2 = ((AbstractC5029u0) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
