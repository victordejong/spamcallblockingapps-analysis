package com.google.common.collect;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4972d0;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Sets.class */
public final class Sets {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Sets$UnmodifiableNavigableSet.class */
    public static final class UnmodifiableNavigableSet<E> extends AbstractC4972d0<E> implements NavigableSet<E>, Serializable {
        public static final long serialVersionUID = 0;
        public final NavigableSet<E> delegate;
        public transient UnmodifiableNavigableSet<E> descendingSet;
        public final SortedSet<E> unmodifiableDelegate;

        public UnmodifiableNavigableSet(NavigableSet<E> navigableSet) {
            C4933n.m24795a(navigableSet);
            this.delegate = navigableSet;
            this.unmodifiableDelegate = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            return this.delegate.ceiling(e);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4972d0, p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public SortedSet<E> delegate() {
            return this.unmodifiableDelegate;
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.m8247j(this.delegate.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            UnmodifiableNavigableSet<E> unmodifiableNavigableSet = this.descendingSet;
            UnmodifiableNavigableSet<E> unmodifiableNavigableSet2 = unmodifiableNavigableSet;
            if (unmodifiableNavigableSet == null) {
                unmodifiableNavigableSet2 = new UnmodifiableNavigableSet<>(this.delegate.descendingSet());
                this.descendingSet = unmodifiableNavigableSet2;
                unmodifiableNavigableSet2.descendingSet = this;
            }
            return unmodifiableNavigableSet2;
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            return this.delegate.floor(e);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return Sets.m8062a((NavigableSet) this.delegate.headSet(e, z));
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            return this.delegate.higher(e);
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            return this.delegate.lower(e);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return Sets.m8062a((NavigableSet) this.delegate.subSet(e, z, e2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return Sets.m8062a((NavigableSet) this.delegate.tailSet(e, z));
        }
    }

    /* renamed from: com.google.common.collect.Sets$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Sets$a.class */
    public static abstract class AbstractC7614a<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return Sets.m8059a((Set<?>) this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            C4933n.m24795a(collection);
            return super.retainAll(collection);
        }
    }

    /* renamed from: a */
    public static int m8061a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ((i + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return i;
    }

    /* renamed from: a */
    public static <E> HashSet<E> m8064a() {
        return new HashSet<>();
    }

    /* renamed from: a */
    public static <E> HashSet<E> m8063a(int i) {
        return new HashSet<>(Maps.m8153a(i));
    }

    /* renamed from: a */
    public static <E> NavigableSet<E> m8062a(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof UnmodifiableNavigableSet)) ? navigableSet : new UnmodifiableNavigableSet(navigableSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r3.containsAll(r0) != false) goto L_0x0035;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8060a(java.util.Set<?> r3, java.lang.Object r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof java.util.Set
            if (r0 == 0) goto L_0x0037
            r0 = r4
            java.util.Set r0 = (java.util.Set) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: NullPointerException | ClassCastException -> 0x0039
            r1 = r4
            int r1 = r1.size()     // Catch: NullPointerException | ClassCastException -> 0x0039
            if (r0 != r1) goto L_0x0033
            r0 = r3
            r1 = r4
            boolean r0 = r0.containsAll(r1)     // Catch: NullPointerException | ClassCastException -> 0x0039
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0033
            goto L_0x0035
        L_0x0033:
            r0 = 0
            r5 = r0
        L_0x0035:
            r0 = r5
            return r0
        L_0x0037:
            r0 = 0
            return r0
        L_0x0039:
            r3 = move-exception
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Sets.m8060a(java.util.Set, java.lang.Object):boolean");
    }

    /* renamed from: a */
    public static boolean m8059a(Set<?> set, Collection<?> collection) {
        C4933n.m24795a(collection);
        Collection<?> collection2 = collection;
        if (collection instanceof AbstractC4997j0) {
            collection2 = ((AbstractC4997j0) collection).elementSet();
        }
        return (!(collection2 instanceof Set) || collection2.size() <= set.size()) ? m8058a(set, collection2.iterator()) : Iterators.m8261a(set.iterator(), collection2);
    }

    /* renamed from: a */
    public static boolean m8058a(Set<?> set, Iterator<?> it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }

    /* renamed from: b */
    public static <E> Set<E> m8057b() {
        return Collections.newSetFromMap(Maps.m8126c());
    }

    /* renamed from: c */
    public static <E> LinkedHashSet<E> m8056c() {
        return new LinkedHashSet<>();
    }
}
