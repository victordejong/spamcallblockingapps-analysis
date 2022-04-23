package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5031v0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableSortedSet.class */
public final class RegularImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    public static final RegularImmutableSortedSet<Comparable> NATURAL_EMPTY_SET = new RegularImmutableSortedSet<>(ImmutableList.m8400of(), Ordering.natural());
    public final transient ImmutableList<E> elements;

    public RegularImmutableSortedSet(ImmutableList<E> immutableList, Comparator<? super E> comparator) {
        super(comparator);
        this.elements = immutableList;
    }

    private int unsafeBinarySearch(Object obj) throws ClassCastException {
        return Collections.binarySearch(this.elements, obj, unsafeComparator());
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        return this.elements;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e) {
        int tailIndex = tailIndex(e, true);
        return tailIndex == size() ? null : this.elements.get(tailIndex);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                z = false;
                if (unsafeBinarySearch(obj) >= 0) {
                    z = true;
                }
            } catch (ClassCastException e) {
                z = false;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Set<E> set = collection;
        if (collection instanceof AbstractC4997j0) {
            set = ((AbstractC4997j0) collection).elementSet();
        }
        if (!C5031v0.m24614a(comparator(), set) || set.size() <= 1) {
            return super.containsAll(set);
        }
        AbstractC4978e1<E> it = iterator();
        Iterator<?> it2 = set.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        E next2 = it.next();
        while (true) {
            try {
                int unsafeCompare = unsafeCompare(next2, next);
                if (unsafeCompare < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (unsafeCompare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (unsafeCompare > 0) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i) {
        return this.elements.copyIntoArray(objArr, i);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public ImmutableSortedSet<E> createDescendingSet() {
        Comparator reverseOrder = Collections.reverseOrder(this.comparator);
        return isEmpty() ? ImmutableSortedSet.emptySet(reverseOrder) : new RegularImmutableSortedSet(this.elements.reverse(), reverseOrder);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public AbstractC4978e1<E> descendingIterator() {
        return this.elements.reverse().iterator();
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        E next;
        E next2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!C5031v0.m24614a(this.comparator, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            AbstractC4978e1<E> it2 = iterator();
            do {
                if (!it2.hasNext()) {
                    return true;
                }
                next = it2.next();
                next2 = it.next();
                if (next2 == null) {
                    return false;
                }
            } while (unsafeCompare(next, next2) == 0);
            return false;
        } catch (ClassCastException | NoSuchElementException e) {
            return false;
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E first() {
        if (!isEmpty()) {
            return this.elements.get(0);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e) {
        int headIndex = headIndex(e, true) - 1;
        return headIndex == -1 ? null : this.elements.get(headIndex);
    }

    public RegularImmutableSortedSet<E> getSubSet(int i, int i2) {
        return (i == 0 && i2 == size()) ? this : i < i2 ? new RegularImmutableSortedSet<>(this.elements.subList(i, i2), this.comparator) : ImmutableSortedSet.emptySet(this.comparator);
    }

    public int headIndex(E e, boolean z) {
        ImmutableList<E> immutableList = this.elements;
        C4933n.m24795a(e);
        int binarySearch = Collections.binarySearch(immutableList, e, comparator());
        if (binarySearch < 0) {
            return binarySearch ^ (-1);
        }
        int i = binarySearch;
        if (z) {
            i = binarySearch + 1;
        }
        return i;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public ImmutableSortedSet<E> headSetImpl(E e, boolean z) {
        return getSubSet(0, headIndex(e, z));
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e) {
        int tailIndex = tailIndex(e, false);
        return tailIndex == size() ? null : this.elements.get(tailIndex);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public int indexOf(Object obj) {
        int i = -1;
        if (obj == null) {
            return -1;
        }
        try {
            int binarySearch = Collections.binarySearch(this.elements, obj, unsafeComparator());
            if (binarySearch >= 0) {
                i = binarySearch;
            }
        } catch (ClassCastException e) {
        }
        return i;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object[] internalArray() {
        return this.elements.internalArray();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayEnd() {
        return this.elements.internalArrayEnd();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayStart() {
        return this.elements.internalArrayStart();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return this.elements.isPartialView();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public AbstractC4978e1<E> iterator() {
        return this.elements.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E last() {
        if (!isEmpty()) {
            return this.elements.get(size() - 1);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e) {
        int headIndex = headIndex(e, false) - 1;
        return headIndex == -1 ? null : this.elements.get(headIndex);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.elements.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public ImmutableSortedSet<E> subSetImpl(E e, boolean z, E e2, boolean z2) {
        return tailSetImpl(e, z).headSetImpl(e2, z2);
    }

    public int tailIndex(E e, boolean z) {
        ImmutableList<E> immutableList = this.elements;
        C4933n.m24795a(e);
        int binarySearch = Collections.binarySearch(immutableList, e, comparator());
        if (binarySearch < 0) {
            return binarySearch ^ (-1);
        }
        if (!z) {
            binarySearch++;
        }
        return binarySearch;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public ImmutableSortedSet<E> tailSetImpl(E e, boolean z) {
        return getSubSet(tailIndex(e, z), size());
    }

    public Comparator<Object> unsafeComparator() {
        return this.comparator;
    }
}
