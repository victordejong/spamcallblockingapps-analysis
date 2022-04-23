package com.google.common.collect;

import com.google.common.collect.ImmutableSet;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC5029u0;
import p131c.p161d.p266c.p269c.C4983g0;
import p131c.p161d.p266c.p269c.C5000k0;
import p131c.p161d.p266c.p269c.C5031v0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSortedSet.class */
public abstract class ImmutableSortedSet<E> extends ImmutableSortedSetFauxverideShim<E> implements NavigableSet<E>, AbstractC5029u0<E> {
    public final transient Comparator<? super E> comparator;
    public transient ImmutableSortedSet<E> descendingSet;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSortedSet$SerializedForm.class */
    public static class SerializedForm<E> implements Serializable {
        public static final long serialVersionUID = 0;
        public final Comparator<? super E> comparator;
        public final Object[] elements;

        public SerializedForm(Comparator<? super E> comparator, Object[] objArr) {
            this.comparator = comparator;
            this.elements = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object readResolve() {
            C7499a aVar = new C7499a(this.comparator);
            aVar.mo8282a(this.elements);
            return aVar.mo8285a();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableSortedSet$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSortedSet$a.class */
    public static final class C7499a<E> extends ImmutableSet.C7492a<E> {

        /* renamed from: f */
        public final Comparator<? super E> f30579f;

        public C7499a(Comparator<? super E> comparator) {
            C4933n.m24795a(comparator);
            this.f30579f = comparator;
        }

        @Override // com.google.common.collect.ImmutableSet.C7492a, com.google.common.collect.ImmutableCollection.AbstractC7466a, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7499a<E> mo8284a(E e) {
            super.mo8284a((C7499a<E>) e);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.C7492a, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7499a<E> mo8283a(Iterator<? extends E> it) {
            super.mo8283a((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.C7492a, com.google.common.collect.ImmutableCollection.AbstractC7466a, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7499a<E> mo8282a(E... eArr) {
            super.mo8282a((Object[]) eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.C7492a
        /* renamed from: a */
        public ImmutableSortedSet<E> mo8285a() {
            ImmutableSortedSet<E> construct = ImmutableSortedSet.construct(this.f30579f, this.f30529b, this.f30528a);
            this.f30529b = construct.size();
            this.f30530c = true;
            return construct;
        }
    }

    public ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> ImmutableSortedSet<E> construct(Comparator<? super E> comparator, int i, E... eArr) {
        if (i == 0) {
            return emptySet(comparator);
        }
        C5000k0.m24705a((Object[]) eArr, i);
        Arrays.sort(eArr, 0, i, comparator);
        int i2 = 1;
        for (int i3 = 1; i3 < i; i3++) {
            Object obj = (Object) eArr[i3];
            i2 = i2;
            if (comparator.compare(obj, (Object) eArr[i2 - 1]) != 0) {
                eArr[i2] = obj;
                i2++;
            }
        }
        Arrays.fill(eArr, i2, i, (Object) null);
        Object[] objArr = eArr;
        if (i2 < eArr.length / 2) {
            objArr = Arrays.copyOf(eArr, i2);
        }
        return new RegularImmutableSortedSet(ImmutableList.asImmutableList(objArr, i2), comparator);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) Ordering.natural(), (Collection) collection);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        C4933n.m24795a(comparator);
        if (C5031v0.m24614a(comparator, iterable) && (iterable instanceof ImmutableSortedSet)) {
            ImmutableSortedSet<E> immutableSortedSet = (ImmutableSortedSet) iterable;
            if (!immutableSortedSet.isPartialView()) {
                return immutableSortedSet;
            }
        }
        Object[] e = C4983g0.m24713e(iterable);
        return construct(comparator, e.length, e);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        C7499a aVar = new C7499a(comparator);
        aVar.mo8283a((Iterator) it);
        return aVar.mo8285a();
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet copyOf(Comparable[] comparableArr) {
        return construct(Ordering.natural(), comparableArr.length, (Object[]) comparableArr.clone());
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator a = C5031v0.m24613a(sortedSet);
        ImmutableList copyOf = ImmutableList.copyOf((Collection) sortedSet);
        return copyOf.isEmpty() ? emptySet(a) : new RegularImmutableSortedSet(copyOf, a);
    }

    public static <E> RegularImmutableSortedSet<E> emptySet(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (RegularImmutableSortedSet<E>) RegularImmutableSortedSet.NATURAL_EMPTY_SET : new RegularImmutableSortedSet<>(ImmutableList.m8400of(), comparator);
    }

    public static <E extends Comparable<?>> C7499a<E> naturalOrder() {
        return new C7499a<>(Ordering.natural());
    }

    /* renamed from: of */
    public static <E> ImmutableSortedSet<E> m8292of() {
        return RegularImmutableSortedSet.NATURAL_EMPTY_SET;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedSet m8291of(Comparable comparable) {
        return new RegularImmutableSortedSet(ImmutableList.m8399of(comparable), Ordering.natural());
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedSet m8290of(Comparable comparable, Comparable comparable2) {
        return construct(Ordering.natural(), 2, comparable, comparable2);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedSet m8289of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return construct(Ordering.natural(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedSet m8288of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return construct(Ordering.natural(), 4, comparable, comparable2, comparable3, comparable4);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedSet m8287of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return construct(Ordering.natural(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedSet m8286of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return construct(Ordering.natural(), length, comparableArr2);
    }

    public static <E> C7499a<E> orderedBy(Comparator<E> comparator) {
        return new C7499a<>(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> C7499a<E> reverseOrder() {
        return new C7499a<>(Collections.reverseOrder());
    }

    public static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    public E ceiling(E e) {
        return (E) C4983g0.m24720a(tailSet((ImmutableSortedSet<E>) e, true), (Object) null);
    }

    @Override // java.util.SortedSet, p131c.p161d.p266c.p269c.AbstractC5029u0
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    public abstract ImmutableSortedSet<E> createDescendingSet();

    public abstract AbstractC4978e1<E> descendingIterator();

    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.descendingSet;
        ImmutableSortedSet<E> immutableSortedSet2 = immutableSortedSet;
        if (immutableSortedSet == null) {
            immutableSortedSet2 = createDescendingSet();
            this.descendingSet = immutableSortedSet2;
            immutableSortedSet2.descendingSet = this;
        }
        return immutableSortedSet2;
    }

    public E first() {
        return iterator().next();
    }

    public E floor(E e) {
        return (E) Iterators.m8257b(headSet((ImmutableSortedSet<E>) e, true).descendingIterator(), (Object) null);
    }

    public ImmutableSortedSet<E> headSet(E e) {
        return headSet((ImmutableSortedSet<E>) e, false);
    }

    public ImmutableSortedSet<E> headSet(E e, boolean z) {
        C4933n.m24795a(e);
        return headSetImpl(e, z);
    }

    public abstract ImmutableSortedSet<E> headSetImpl(E e, boolean z);

    public E higher(E e) {
        return (E) C4983g0.m24720a(tailSet((ImmutableSortedSet<E>) e, false), (Object) null);
    }

    public abstract int indexOf(Object obj);

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public abstract AbstractC4978e1<E> iterator();

    public E last() {
        return descendingIterator().next();
    }

    public E lower(E e) {
        return (E) Iterators.m8257b(headSet((ImmutableSortedSet<E>) e, false).descendingIterator(), (Object) null);
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    public ImmutableSortedSet<E> subSet(E e, E e2) {
        return subSet((boolean) e, true, (boolean) e2, false);
    }

    public ImmutableSortedSet<E> subSet(E e, boolean z, E e2, boolean z2) {
        C4933n.m24795a(e);
        C4933n.m24795a(e2);
        C4933n.m24791a(this.comparator.compare(e, e2) <= 0);
        return subSetImpl(e, z, e2, z2);
    }

    public abstract ImmutableSortedSet<E> subSetImpl(E e, boolean z, E e2, boolean z2);

    public ImmutableSortedSet<E> tailSet(E e) {
        return tailSet((ImmutableSortedSet<E>) e, true);
    }

    public ImmutableSortedSet<E> tailSet(E e, boolean z) {
        C4933n.m24795a(e);
        return tailSetImpl(e, z);
    }

    public abstract ImmutableSortedSet<E> tailSetImpl(E e, boolean z);

    public int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(this.comparator, toArray());
    }
}
