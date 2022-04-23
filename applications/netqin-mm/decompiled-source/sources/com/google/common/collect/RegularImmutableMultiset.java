package com.google.common.collect;

import com.google.common.collect.ImmutableMultiset;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5002l0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableMultiset.class */
public class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    public static final RegularImmutableMultiset<Object> EMPTY = new RegularImmutableMultiset<>(C5002l0.m24684e());
    public final transient C5002l0<E> contents;
    public transient ImmutableSet<E> elementSet;
    public final transient int size;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableMultiset$ElementSet.class */
    public final class ElementSet extends IndexedImmutableSet<E> {
        public ElementSet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return RegularImmutableMultiset.this.contains(obj);
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public E get(int i) {
            return RegularImmutableMultiset.this.contents.m24688c(i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return RegularImmutableMultiset.this.contents.m24686d();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableMultiset$SerializedForm.class */
    public static class SerializedForm implements Serializable {
        public static final long serialVersionUID = 0;
        public final int[] counts;
        public final Object[] elements;

        public SerializedForm(AbstractC4997j0<?> j0Var) {
            int size = j0Var.entrySet().size();
            this.elements = new Object[size];
            this.counts = new int[size];
            int i = 0;
            for (AbstractC4997j0.AbstractC4998a<?> aVar : j0Var.entrySet()) {
                this.elements[i] = aVar.getElement();
                this.counts[i] = aVar.getCount();
                i++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object readResolve() {
            ImmutableMultiset.C7484b bVar = new ImmutableMultiset.C7484b(this.elements.length);
            int i = 0;
            while (true) {
                Object[] objArr = this.elements;
                if (i >= objArr.length) {
                    return bVar.mo8304a();
                }
                bVar.mo8302a((ImmutableMultiset.C7484b) objArr[i], this.counts[i]);
                i++;
            }
        }
    }

    public RegularImmutableMultiset(C5002l0<E> l0Var) {
        this.contents = l0Var;
        long j = 0;
        for (int i = 0; i < l0Var.m24686d(); i++) {
            j += l0Var.m24685d(i);
        }
        this.size = Ints.m7808b(j);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int count(Object obj) {
        return this.contents.m24696a(obj);
    }

    @Override // com.google.common.collect.ImmutableMultiset, p131c.p161d.p266c.p269c.AbstractC4997j0
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.elementSet;
        ImmutableSet<E> immutableSet2 = immutableSet;
        if (immutableSet == null) {
            immutableSet2 = new ElementSet();
            this.elementSet = immutableSet2;
        }
        return immutableSet2;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public AbstractC4997j0.AbstractC4998a<E> getEntry(int i) {
        return this.contents.m24694b(i);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(this);
    }
}
