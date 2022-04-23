package com.google.common.collect;

import p131c.p161d.p266c.p269c.AbstractC4981f1;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableAsList.class */
public class RegularImmutableAsList<E> extends ImmutableAsList<E> {
    public final ImmutableCollection<E> delegate;
    public final ImmutableList<? extends E> delegateList;

    public RegularImmutableAsList(ImmutableCollection<E> immutableCollection, ImmutableList<? extends E> immutableList) {
        this.delegate = immutableCollection;
        this.delegateList = immutableList;
    }

    public RegularImmutableAsList(ImmutableCollection<E> immutableCollection, Object[] objArr) {
        this(immutableCollection, ImmutableList.asImmutableList(objArr));
    }

    public RegularImmutableAsList(ImmutableCollection<E> immutableCollection, Object[] objArr, int i) {
        this(immutableCollection, ImmutableList.asImmutableList(objArr, i));
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i) {
        return this.delegateList.copyIntoArray(objArr, i);
    }

    @Override // com.google.common.collect.ImmutableAsList
    public ImmutableCollection<E> delegateCollection() {
        return this.delegate;
    }

    public ImmutableList<? extends E> delegateList() {
        return this.delegateList;
    }

    @Override // java.util.List
    public E get(int i) {
        return (E) this.delegateList.get(i);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object[] internalArray() {
        return this.delegateList.internalArray();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayEnd() {
        return this.delegateList.internalArrayEnd();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayStart() {
        return this.delegateList.internalArrayStart();
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public AbstractC4981f1<E> listIterator(int i) {
        return (AbstractC4981f1<? extends E>) this.delegateList.listIterator(i);
    }
}
