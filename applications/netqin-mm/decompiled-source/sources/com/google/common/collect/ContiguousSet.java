package com.google.common.collect;

import com.google.common.collect.ImmutableSortedSet;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ContiguousSet.class */
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    public final DiscreteDomain<C> domain;

    public ContiguousSet(DiscreteDomain<C> discreteDomain) {
        super(Ordering.natural());
        this.domain = discreteDomain;
    }

    @Deprecated
    public static <E> ImmutableSortedSet.C7499a<E> builder() {
        throw new UnsupportedOperationException();
    }

    public static ContiguousSet<Integer> closed(int i, int i2) {
        return create(Range.closed(Integer.valueOf(i), Integer.valueOf(i2)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Long> closed(long j, long j2) {
        return create(Range.closed(Long.valueOf(j), Long.valueOf(j2)), DiscreteDomain.longs());
    }

    public static ContiguousSet<Integer> closedOpen(int i, int i2) {
        return create(Range.closedOpen(Integer.valueOf(i), Integer.valueOf(i2)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Long> closedOpen(long j, long j2) {
        return create(Range.closedOpen(Long.valueOf(j), Long.valueOf(j2)), DiscreteDomain.longs());
    }

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, DiscreteDomain<C> discreteDomain) {
        C4933n.m24795a(range);
        C4933n.m24795a(discreteDomain);
        try {
            Range<C> intersection = !range.hasLowerBound() ? range.intersection(Range.atLeast(discreteDomain.minValue())) : range;
            Range<C> range2 = intersection;
            if (!range.hasUpperBound()) {
                range2 = intersection.intersection(Range.atMost(discreteDomain.maxValue()));
            }
            return range2.isEmpty() || Range.compareOrThrow(range.lowerBound.leastValueAbove(discreteDomain), range.upperBound.greatestValueBelow(discreteDomain)) > 0 ? new EmptyContiguousSet<>(discreteDomain) : new RegularContiguousSet<>(range2, discreteDomain);
        } catch (NoSuchElementException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public ImmutableSortedSet<C> createDescendingSet() {
        return new DescendingImmutableSortedSet(this);
    }

    public ContiguousSet<C> headSet(C c) {
        C4933n.m24795a(c);
        return headSetImpl((ContiguousSet<C>) c, false);
    }

    public ContiguousSet<C> headSet(C c, boolean z) {
        C4933n.m24795a(c);
        return headSetImpl((ContiguousSet<C>) c, z);
    }

    public abstract ContiguousSet<C> headSetImpl(C c, boolean z);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet headSetImpl(Object obj, boolean z) {
        return headSetImpl((ContiguousSet<C>) ((Comparable) obj), z);
    }

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet);

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType boundType, BoundType boundType2);

    public ContiguousSet<C> subSet(C c, C c2) {
        C4933n.m24795a(c);
        C4933n.m24795a(c2);
        C4933n.m24791a(comparator().compare(c, c2) <= 0);
        return subSetImpl((boolean) c, true, (boolean) c2, false);
    }

    public ContiguousSet<C> subSet(C c, boolean z, C c2, boolean z2) {
        C4933n.m24795a(c);
        C4933n.m24795a(c2);
        C4933n.m24791a(comparator().compare(c, c2) <= 0);
        return subSetImpl((boolean) c, z, (boolean) c2, z2);
    }

    public abstract ContiguousSet<C> subSetImpl(C c, boolean z, C c2, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet subSetImpl(Object obj, boolean z, Object obj2, boolean z2) {
        return subSetImpl((boolean) ((Comparable) obj), z, (boolean) ((Comparable) obj2), z2);
    }

    public ContiguousSet<C> tailSet(C c) {
        C4933n.m24795a(c);
        return tailSetImpl((ContiguousSet<C>) c, true);
    }

    public ContiguousSet<C> tailSet(C c, boolean z) {
        C4933n.m24795a(c);
        return tailSetImpl((ContiguousSet<C>) c, z);
    }

    public abstract ContiguousSet<C> tailSetImpl(C c, boolean z);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet tailSetImpl(Object obj, boolean z) {
        return tailSetImpl((ContiguousSet<C>) ((Comparable) obj), z);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return range().toString();
    }
}
