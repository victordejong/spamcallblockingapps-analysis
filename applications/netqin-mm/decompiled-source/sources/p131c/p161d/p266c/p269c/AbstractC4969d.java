package p131c.p161d.p266c.p269c;

import com.google.common.collect.Multisets;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
/* renamed from: c.d.c.c.d */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/d.class */
public abstract class AbstractC4969d<E> extends AbstractCollection<E> implements AbstractC4997j0<E> {
    public transient Set<E> elementSet;
    public transient Set<AbstractC4997j0.AbstractC4998a<E>> entrySet;

    /* renamed from: c.d.c.c.d$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/d$a.class */
    public class C4970a extends Multisets.AbstractC7597c<E> {
        public C4970a() {
        }

        @Override // com.google.common.collect.Multisets.AbstractC7597c
        /* renamed from: a */
        public AbstractC4997j0<E> mo8075a() {
            return AbstractC4969d.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return AbstractC4969d.this.elementIterator();
        }
    }

    /* renamed from: c.d.c.c.d$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/d$b.class */
    public class C4971b extends Multisets.AbstractC7598d<E> {
        public C4971b() {
        }

        @Override // com.google.common.collect.Multisets.AbstractC7598d
        /* renamed from: a */
        public AbstractC4997j0<E> mo8074a() {
            return AbstractC4969d.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<AbstractC4997j0.AbstractC4998a<E>> iterator() {
            return AbstractC4969d.this.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractC4969d.this.distinctElements();
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int add(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(E e) {
        add(e, 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        return Multisets.m8086a((AbstractC4997j0) this, (Collection) collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract void clear();

    @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    public Set<E> createElementSet() {
        return new C4970a();
    }

    public Set<AbstractC4997j0.AbstractC4998a<E>> createEntrySet() {
        return new C4971b();
    }

    public abstract int distinctElements();

    public abstract Iterator<E> elementIterator();

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public Set<E> elementSet() {
        Set<E> set = this.elementSet;
        Set<E> set2 = set;
        if (set == null) {
            set2 = createElementSet();
            this.elementSet = set2;
        }
        return set2;
    }

    public abstract Iterator<AbstractC4997j0.AbstractC4998a<E>> entryIterator();

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public Set<AbstractC4997j0.AbstractC4998a<E>> entrySet() {
        Set<AbstractC4997j0.AbstractC4998a<E>> set = this.entrySet;
        Set<AbstractC4997j0.AbstractC4998a<E>> set2 = set;
        if (set == null) {
            set2 = createEntrySet();
            this.entrySet = set2;
        }
        return set2;
    }

    @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final boolean equals(Object obj) {
        return Multisets.m8089a(this, obj);
    }

    @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int remove(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public final boolean remove(Object obj) {
        boolean z = true;
        if (remove(obj, 1) <= 0) {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return Multisets.m8080b(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return Multisets.m8077c(this, collection);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int setCount(E e, int i) {
        return Multisets.m8088a(this, e, i);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public boolean setCount(E e, int i, int i2) {
        return Multisets.m8087a(this, e, i, i2);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }
}
