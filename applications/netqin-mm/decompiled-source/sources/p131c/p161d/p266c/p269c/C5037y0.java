package p131c.p161d.p266c.p269c;

import com.google.common.collect.BoundType;
import com.google.common.collect.Multisets;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
/* renamed from: c.d.c.c.y0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/y0.class */
public final class C5037y0 {

    /* renamed from: c.d.c.c.y0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/y0$a.class */
    public static class C5038a<E> extends Multisets.AbstractC7597c<E> implements SortedSet<E> {

        /* renamed from: a */
        public final AbstractC5033w0<E> f17643a;

        public C5038a(AbstractC5033w0<E> w0Var) {
            this.f17643a = w0Var;
        }

        @Override // com.google.common.collect.Multisets.AbstractC7597c
        /* renamed from: a */
        public final AbstractC5033w0<E> mo8075a() {
            return this.f17643a;
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return mo8075a().comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) C5037y0.m24609d(mo8075a().firstEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return mo8075a().headMultiset(e, BoundType.OPEN).elementSet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return Multisets.m8082a(mo8075a().entrySet().iterator());
        }

        @Override // java.util.SortedSet
        public E last() {
            return (E) C5037y0.m24609d(mo8075a().lastEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return mo8075a().subMultiset(e, BoundType.CLOSED, e2, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return mo8075a().tailMultiset(e, BoundType.CLOSED).elementSet();
        }
    }

    /* renamed from: c.d.c.c.y0$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/y0$b.class */
    public static class C5039b<E> extends C5038a<E> implements NavigableSet<E> {
        public C5039b(AbstractC5033w0<E> w0Var) {
            super(w0Var);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            return (E) C5037y0.m24610c(mo8075a().tailMultiset(e, BoundType.CLOSED).firstEntry());
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return new C5039b(mo8075a().descendingMultiset());
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            return (E) C5037y0.m24610c(mo8075a().headMultiset(e, BoundType.CLOSED).lastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return new C5039b(mo8075a().headMultiset(e, BoundType.forBoolean(z)));
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            return (E) C5037y0.m24610c(mo8075a().tailMultiset(e, BoundType.OPEN).firstEntry());
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            return (E) C5037y0.m24610c(mo8075a().headMultiset(e, BoundType.OPEN).lastEntry());
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) C5037y0.m24610c(mo8075a().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) C5037y0.m24610c(mo8075a().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return new C5039b(mo8075a().subMultiset(e, BoundType.forBoolean(z), e2, BoundType.forBoolean(z2)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return new C5039b(mo8075a().tailMultiset(e, BoundType.forBoolean(z)));
        }
    }

    /* renamed from: c */
    public static <E> E m24610c(AbstractC4997j0.AbstractC4998a<E> aVar) {
        return aVar == null ? null : aVar.getElement();
    }

    /* renamed from: d */
    public static <E> E m24609d(AbstractC4997j0.AbstractC4998a<E> aVar) {
        if (aVar != null) {
            return aVar.getElement();
        }
        throw new NoSuchElementException();
    }
}
