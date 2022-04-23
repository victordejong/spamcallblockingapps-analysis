package com.google.common.collect;

import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4968c1;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.AbstractC5033w0;
import p131c.p161d.p266c.p269c.AbstractC5036y;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multisets.class */
public final class Multisets {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multisets$ImmutableEntry.class */
    public static class ImmutableEntry<E> extends AbstractC7596b<E> implements Serializable {
        public static final long serialVersionUID = 0;
        public final int count;
        public final E element;

        public ImmutableEntry(E e, int i) {
            this.element = e;
            this.count = i;
            C5006n.m24663a(i, "count");
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
        public final int getCount() {
            return this.count;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
        public final E getElement() {
            return this.element;
        }

        public ImmutableEntry<E> nextInBucket() {
            return null;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multisets$UnmodifiableMultiset.class */
    public static class UnmodifiableMultiset<E> extends AbstractC5036y<E> implements Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4997j0<? extends E> delegate;
        public transient Set<E> elementSet;
        public transient Set<AbstractC4997j0.AbstractC4998a<E>> entrySet;

        public UnmodifiableMultiset(AbstractC4997j0<? extends E> j0Var) {
            this.delegate = j0Var;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
        public int add(E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        public Set<E> createElementSet() {
            return Collections.unmodifiableSet(this.delegate.elementSet());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public AbstractC4997j0<E> delegate() {
            return (AbstractC4997j0<? extends E>) this.delegate;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Set<E> elementSet() {
            Set<E> set = this.elementSet;
            Set<E> set2 = set;
            if (set == null) {
                set2 = createElementSet();
                this.elementSet = set2;
            }
            return set2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Set<AbstractC4997j0.AbstractC4998a<E>> entrySet() {
            Set<AbstractC4997j0.AbstractC4998a<E>> set = this.entrySet;
            Set<AbstractC4997j0.AbstractC4998a<E>> set2 = set;
            if (set == null) {
                set2 = Collections.unmodifiableSet(this.delegate.entrySet());
                this.entrySet = set2;
            }
            return set2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Iterator<E> iterator() {
            return Iterators.m8247j(this.delegate.iterator());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
        public int remove(Object obj, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
        public int setCount(E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
        public boolean setCount(E e, int i, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.collect.Multisets$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multisets$a.class */
    public static final class C7595a extends AbstractC4968c1<AbstractC4997j0.AbstractC4998a<E>, E> {
        public C7595a(Iterator it) {
            super(it);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [E, java.lang.Object] */
        /* renamed from: a */
        public E m8076a(AbstractC4997j0.AbstractC4998a<E> aVar) {
            return aVar.getElement();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
        /* renamed from: a */
        public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
            return m8076a((AbstractC4997j0.AbstractC4998a<Object>) obj);
        }
    }

    /* renamed from: com.google.common.collect.Multisets$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multisets$b.class */
    public static abstract class AbstractC7596b<E> implements AbstractC4997j0.AbstractC4998a<E> {
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof AbstractC4997j0.AbstractC4998a) {
                AbstractC4997j0.AbstractC4998a aVar = (AbstractC4997j0.AbstractC4998a) obj;
                z = false;
                if (getCount() == aVar.getCount()) {
                    z = false;
                    if (C4928k.m24808a(getElement(), aVar.getElement())) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
        public String toString() {
            String valueOf = String.valueOf(getElement());
            int count = getCount();
            if (count != 1) {
                valueOf = valueOf + " x " + count;
            }
            return valueOf;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multisets$c.class */
    public static abstract class AbstractC7597c<E> extends Sets.AbstractC7614a<E> {
        /* renamed from: a */
        public abstract AbstractC4997j0<E> mo8075a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo8075a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return mo8075a().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return mo8075a().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo8075a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return mo8075a().remove(obj, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo8075a().entrySet().size();
        }
    }

    /* renamed from: com.google.common.collect.Multisets$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multisets$d.class */
    public static abstract class AbstractC7598d<E> extends Sets.AbstractC7614a<AbstractC4997j0.AbstractC4998a<E>> {
        /* renamed from: a */
        public abstract AbstractC4997j0<E> mo8074a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo8074a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof AbstractC4997j0.AbstractC4998a) {
                AbstractC4997j0.AbstractC4998a aVar = (AbstractC4997j0.AbstractC4998a) obj;
                if (aVar.getCount() <= 0) {
                    return false;
                }
                z = false;
                if (mo8074a().count(aVar.getElement()) == aVar.getCount()) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof AbstractC4997j0.AbstractC4998a)) {
                return false;
            }
            AbstractC4997j0.AbstractC4998a aVar = (AbstractC4997j0.AbstractC4998a) obj;
            E e = (E) aVar.getElement();
            int count = aVar.getCount();
            if (count != 0) {
                return mo8074a().setCount(e, count, 0);
            }
            return false;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multisets$e.class */
    public static final class C7599e<E> implements Iterator<E> {

        /* renamed from: a */
        public final AbstractC4997j0<E> f30714a;

        /* renamed from: b */
        public final Iterator<AbstractC4997j0.AbstractC4998a<E>> f30715b;

        /* renamed from: c */
        public AbstractC4997j0.AbstractC4998a<E> f30716c;

        /* renamed from: d */
        public int f30717d;

        /* renamed from: e */
        public int f30718e;

        /* renamed from: f */
        public boolean f30719f;

        public C7599e(AbstractC4997j0<E> j0Var, Iterator<AbstractC4997j0.AbstractC4998a<E>> it) {
            this.f30714a = j0Var;
            this.f30715b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30717d > 0 || this.f30715b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                if (this.f30717d == 0) {
                    AbstractC4997j0.AbstractC4998a<E> next = this.f30715b.next();
                    this.f30716c = next;
                    int count = next.getCount();
                    this.f30717d = count;
                    this.f30718e = count;
                }
                this.f30717d--;
                this.f30719f = true;
                return this.f30716c.getElement();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30719f);
            if (this.f30718e == 1) {
                this.f30715b.remove();
            } else {
                this.f30714a.remove(this.f30716c.getElement());
            }
            this.f30718e--;
            this.f30719f = false;
        }
    }

    /* renamed from: a */
    public static <E> int m8088a(AbstractC4997j0<E> j0Var, E e, int i) {
        C5006n.m24663a(i, "count");
        int count = j0Var.count(e);
        int i2 = i - count;
        if (i2 > 0) {
            j0Var.add(e, i2);
        } else if (i2 < 0) {
            j0Var.remove(e, -i2);
        }
        return count;
    }

    /* renamed from: a */
    public static <E> AbstractC4997j0.AbstractC4998a<E> m8083a(E e, int i) {
        return new ImmutableEntry(e, i);
    }

    /* renamed from: a */
    public static <T> AbstractC4997j0<T> m8084a(Iterable<T> iterable) {
        return (AbstractC4997j0) iterable;
    }

    /* renamed from: a */
    public static <E> AbstractC5033w0<E> m8085a(AbstractC5033w0<E> w0Var) {
        C4933n.m24795a(w0Var);
        return new UnmodifiableSortedMultiset(w0Var);
    }

    /* renamed from: a */
    public static <E> Iterator<E> m8092a(AbstractC4997j0<E> j0Var) {
        return new C7599e(j0Var, j0Var.entrySet().iterator());
    }

    /* renamed from: a */
    public static <E> Iterator<E> m8082a(Iterator<AbstractC4997j0.AbstractC4998a<E>> it) {
        return new C7595a(it);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <E> boolean m8091a(AbstractC4997j0<E> j0Var, AbstractC4997j0<? extends E> j0Var2) {
        if (j0Var2 instanceof AbstractMapBasedMultiset) {
            return m8090a((AbstractC4997j0) j0Var, (AbstractMapBasedMultiset) j0Var2);
        }
        if (j0Var2.isEmpty()) {
            return false;
        }
        for (AbstractC4997j0.AbstractC4998a<? extends E> aVar : j0Var2.entrySet()) {
            j0Var.add(aVar.getElement(), aVar.getCount());
        }
        return true;
    }

    /* renamed from: a */
    public static <E> boolean m8090a(AbstractC4997j0<E> j0Var, AbstractMapBasedMultiset<? extends E> abstractMapBasedMultiset) {
        if (abstractMapBasedMultiset.isEmpty()) {
            return false;
        }
        abstractMapBasedMultiset.addTo(j0Var);
        return true;
    }

    /* renamed from: a */
    public static boolean m8089a(AbstractC4997j0<?> j0Var, Object obj) {
        if (obj == j0Var) {
            return true;
        }
        if (!(obj instanceof AbstractC4997j0)) {
            return false;
        }
        AbstractC4997j0 j0Var2 = (AbstractC4997j0) obj;
        if (!(j0Var.size() == j0Var2.size() && j0Var.entrySet().size() == j0Var2.entrySet().size())) {
            return false;
        }
        for (AbstractC4997j0.AbstractC4998a aVar : j0Var2.entrySet()) {
            if (j0Var.count(aVar.getElement()) != aVar.getCount()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static <E> boolean m8087a(AbstractC4997j0<E> j0Var, E e, int i, int i2) {
        C5006n.m24663a(i, "oldCount");
        C5006n.m24663a(i2, "newCount");
        if (j0Var.count(e) != i) {
            return false;
        }
        j0Var.setCount(e, i2);
        return true;
    }

    /* renamed from: a */
    public static <E> boolean m8086a(AbstractC4997j0<E> j0Var, Collection<? extends E> collection) {
        C4933n.m24795a(j0Var);
        C4933n.m24795a(collection);
        if (collection instanceof AbstractC4997j0) {
            return m8091a((AbstractC4997j0) j0Var, m8084a(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return Iterators.m8267a(j0Var, collection.iterator());
    }

    /* renamed from: b */
    public static int m8081b(AbstractC4997j0<?> j0Var) {
        long j = 0;
        for (AbstractC4997j0.AbstractC4998a<?> aVar : j0Var.entrySet()) {
            j += aVar.getCount();
        }
        return Ints.m7808b(j);
    }

    /* renamed from: b */
    public static int m8079b(Iterable<?> iterable) {
        if (iterable instanceof AbstractC4997j0) {
            return ((AbstractC4997j0) iterable).elementSet().size();
        }
        return 11;
    }

    /* renamed from: b */
    public static boolean m8080b(AbstractC4997j0<?> j0Var, Collection<?> collection) {
        Collection<?> collection2 = collection;
        if (collection instanceof AbstractC4997j0) {
            collection2 = ((AbstractC4997j0) collection).elementSet();
        }
        return j0Var.elementSet().removeAll(collection2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static <E> AbstractC4997j0<E> m8078c(AbstractC4997j0<? extends E> j0Var) {
        if ((j0Var instanceof UnmodifiableMultiset) || (j0Var instanceof ImmutableMultiset)) {
            return j0Var;
        }
        C4933n.m24795a(j0Var);
        return new UnmodifiableMultiset(j0Var);
    }

    /* renamed from: c */
    public static boolean m8077c(AbstractC4997j0<?> j0Var, Collection<?> collection) {
        C4933n.m24795a(collection);
        Collection<?> collection2 = collection;
        if (collection instanceof AbstractC4997j0) {
            collection2 = ((AbstractC4997j0) collection).elementSet();
        }
        return j0Var.elementSet().retainAll(collection2);
    }
}
