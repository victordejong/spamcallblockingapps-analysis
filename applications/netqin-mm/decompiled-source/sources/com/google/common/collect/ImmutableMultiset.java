package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5002l0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultiset.class */
public abstract class ImmutableMultiset<E> extends ImmutableMultisetGwtSerializationDependencies<E> implements AbstractC4997j0<E> {
    public transient ImmutableList<E> asList;
    public transient ImmutableSet<AbstractC4997j0.AbstractC4998a<E>> entrySet;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultiset$EntrySet.class */
    public final class EntrySet extends IndexedImmutableSet<AbstractC4997j0.AbstractC4998a<E>> {
        public static final long serialVersionUID = 0;

        public EntrySet() {
        }

        public /* synthetic */ EntrySet(ImmutableMultiset immutableMultiset, C7483a aVar) {
            this();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof AbstractC4997j0.AbstractC4998a) {
                AbstractC4997j0.AbstractC4998a aVar = (AbstractC4997j0.AbstractC4998a) obj;
                if (aVar.getCount() <= 0) {
                    return false;
                }
                z = false;
                if (ImmutableMultiset.this.count(aVar.getElement()) == aVar.getCount()) {
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public AbstractC4997j0.AbstractC4998a<E> get(int i) {
            return ImmutableMultiset.this.getEntry(i);
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return ImmutableMultiset.this.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return new EntrySetSerializedForm(ImmutableMultiset.this);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultiset$EntrySetSerializedForm.class */
    public static class EntrySetSerializedForm<E> implements Serializable {
        public final ImmutableMultiset<E> multiset;

        public EntrySetSerializedForm(ImmutableMultiset<E> immutableMultiset) {
            this.multiset = immutableMultiset;
        }

        public Object readResolve() {
            return this.multiset.entrySet();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMultiset$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultiset$a.class */
    public class C7483a extends AbstractC4978e1<E> {

        /* renamed from: a */
        public int f30553a;

        /* renamed from: b */
        public E f30554b;

        /* renamed from: c */
        public final /* synthetic */ Iterator f30555c;

        public C7483a(ImmutableMultiset immutableMultiset, Iterator it) {
            this.f30555c = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30553a > 0 || this.f30555c.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f30553a <= 0) {
                AbstractC4997j0.AbstractC4998a aVar = (AbstractC4997j0.AbstractC4998a) this.f30555c.next();
                this.f30554b = (E) aVar.getElement();
                this.f30553a = aVar.getCount();
            }
            this.f30553a--;
            return this.f30554b;
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMultiset$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMultiset$b.class */
    public static class C7484b<E> extends ImmutableCollection.AbstractC7467b<E> {

        /* renamed from: a */
        public C5002l0<E> f30556a;

        /* renamed from: b */
        public boolean f30557b;

        /* renamed from: c */
        public boolean f30558c;

        public C7484b() {
            this(4);
        }

        public C7484b(int i) {
            this.f30557b = false;
            this.f30558c = false;
            this.f30556a = C5002l0.m24680k(i);
        }

        public C7484b(boolean z) {
            this.f30557b = false;
            this.f30558c = false;
            this.f30556a = null;
        }

        /* renamed from: b */
        public static <T> C5002l0<T> m8359b(Iterable<T> iterable) {
            if (iterable instanceof RegularImmutableMultiset) {
                return (C5002l0<E>) ((RegularImmutableMultiset) iterable).contents;
            }
            if (iterable instanceof AbstractMapBasedMultiset) {
                return (C5002l0<E>) ((AbstractMapBasedMultiset) iterable).backingMap;
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7484b<E> mo8303a(Iterable<? extends E> iterable) {
            if (iterable instanceof AbstractC4997j0) {
                AbstractC4997j0 a = Multisets.m8084a(iterable);
                C5002l0 b = m8359b(a);
                if (b != null) {
                    C5002l0<E> l0Var = this.f30556a;
                    l0Var.m24699a(Math.max(l0Var.m24686d(), b.m24686d()));
                    for (int b2 = b.mo24672b(); b2 >= 0; b2 = b.mo24667f(b2)) {
                        mo8302a((C7484b<E>) b.m24688c(b2), b.m24685d(b2));
                    }
                } else {
                    Set<AbstractC4997j0.AbstractC4998a<E>> entrySet = a.entrySet();
                    C5002l0<E> l0Var2 = this.f30556a;
                    l0Var2.m24699a(Math.max(l0Var2.m24686d(), entrySet.size()));
                    for (AbstractC4997j0.AbstractC4998a<E> aVar : a.entrySet()) {
                        mo8302a((C7484b<E>) aVar.getElement(), aVar.getCount());
                    }
                }
            } else {
                super.mo8303a((Iterable) iterable);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7484b<E> mo8284a(E e) {
            return mo8302a((C7484b<E>) e, 1);
        }

        /* renamed from: a */
        public C7484b<E> mo8302a(E e, int i) {
            if (i == 0) {
                return this;
            }
            if (this.f30557b) {
                this.f30556a = new C5002l0<>((C5002l0<? extends E>) this.f30556a);
                this.f30558c = false;
            }
            this.f30557b = false;
            C4933n.m24795a(e);
            C5002l0<E> l0Var = this.f30556a;
            l0Var.m24695a((C5002l0<E>) e, i + l0Var.m24696a(e));
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7484b<E> mo8283a(Iterator<? extends E> it) {
            super.mo8283a((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7484b<E> mo8282a(E... eArr) {
            super.mo8282a((Object[]) eArr);
            return this;
        }

        /* renamed from: a */
        public ImmutableMultiset<E> mo8304a() {
            if (this.f30556a.m24686d() == 0) {
                return ImmutableMultiset.m8366of();
            }
            if (this.f30558c) {
                this.f30556a = new C5002l0<>((C5002l0<? extends E>) this.f30556a);
                this.f30558c = false;
            }
            this.f30557b = true;
            return new RegularImmutableMultiset(this.f30556a);
        }
    }

    public static <E> C7484b<E> builder() {
        return new C7484b<>();
    }

    public static <E> ImmutableMultiset<E> copyFromElements(E... eArr) {
        C7484b bVar = new C7484b();
        bVar.mo8282a((Object[]) eArr);
        return bVar.mo8304a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> ImmutableMultiset<E> copyFromEntries(Collection<? extends AbstractC4997j0.AbstractC4998a<? extends E>> collection) {
        C7484b bVar = new C7484b(collection.size());
        Iterator<? extends AbstractC4997j0.AbstractC4998a<? extends E>> it = collection.iterator();
        while (it.hasNext()) {
            AbstractC4997j0.AbstractC4998a aVar = (AbstractC4997j0.AbstractC4998a) it.next();
            bVar.mo8302a((C7484b) aVar.getElement(), aVar.getCount());
        }
        return bVar.mo8304a();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) iterable;
            if (!immutableMultiset.isPartialView()) {
                return immutableMultiset;
            }
        }
        C7484b bVar = new C7484b(Multisets.m8079b(iterable));
        bVar.mo8303a((Iterable) iterable);
        return bVar.mo8304a();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> it) {
        C7484b bVar = new C7484b();
        bVar.mo8283a((Iterator) it);
        return bVar.mo8304a();
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] eArr) {
        return copyFromElements(eArr);
    }

    private ImmutableSet<AbstractC4997j0.AbstractC4998a<E>> createEntrySet() {
        return isEmpty() ? ImmutableSet.m8349of() : new EntrySet(this, null);
    }

    /* renamed from: of */
    public static <E> ImmutableMultiset<E> m8366of() {
        return RegularImmutableMultiset.EMPTY;
    }

    /* renamed from: of */
    public static <E> ImmutableMultiset<E> m8365of(E e) {
        return copyFromElements(e);
    }

    /* renamed from: of */
    public static <E> ImmutableMultiset<E> m8364of(E e, E e2) {
        return copyFromElements(e, e2);
    }

    /* renamed from: of */
    public static <E> ImmutableMultiset<E> m8363of(E e, E e2, E e3) {
        return copyFromElements(e, e2, e3);
    }

    /* renamed from: of */
    public static <E> ImmutableMultiset<E> m8362of(E e, E e2, E e3, E e4) {
        return copyFromElements(e, e2, e3, e4);
    }

    /* renamed from: of */
    public static <E> ImmutableMultiset<E> m8361of(E e, E e2, E e3, E e4, E e5) {
        return copyFromElements(e, e2, e3, e4, e5);
    }

    /* renamed from: of */
    public static <E> ImmutableMultiset<E> m8360of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        return new C7484b().mo8284a((C7484b) e).mo8284a((C7484b<E>) e2).mo8284a((C7484b<E>) e3).mo8284a((C7484b<E>) e4).mo8284a((C7484b<E>) e5).mo8284a((C7484b<E>) e6).mo8282a((Object[]) eArr).mo8304a();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    @Deprecated
    public final int add(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        ImmutableList<E> immutableList2 = immutableList;
        if (immutableList == null) {
            immutableList2 = super.asList();
            this.asList = immutableList2;
        }
        return immutableList2;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i) {
        AbstractC4978e1<AbstractC4997j0.AbstractC4998a<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            AbstractC4997j0.AbstractC4998a<E> next = it.next();
            Arrays.fill(objArr, i, next.getCount() + i, next.getElement());
            i += next.getCount();
        }
        return i;
    }

    public abstract ImmutableSet<E> elementSet();

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public ImmutableSet<AbstractC4997j0.AbstractC4998a<E>> entrySet() {
        ImmutableSet<AbstractC4997j0.AbstractC4998a<E>> immutableSet = this.entrySet;
        ImmutableSet<AbstractC4997j0.AbstractC4998a<E>> immutableSet2 = immutableSet;
        if (immutableSet == null) {
            immutableSet2 = createEntrySet();
            this.entrySet = immutableSet2;
        }
        return immutableSet2;
    }

    @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public boolean equals(Object obj) {
        return Multisets.m8089a(this, obj);
    }

    public abstract AbstractC4997j0.AbstractC4998a<E> getEntry(int i);

    @Override // java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int hashCode() {
        return Sets.m8061a(entrySet());
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public AbstractC4978e1<E> iterator() {
        return new C7483a(this, entrySet().iterator());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    @Deprecated
    public final int remove(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    @Deprecated
    public final int setCount(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    @Deprecated
    public final boolean setCount(E e, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public abstract Object writeReplace();
}
