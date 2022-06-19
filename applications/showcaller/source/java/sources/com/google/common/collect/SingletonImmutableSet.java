package com.google.common.collect;

import com.google.common.base.C8756j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/SingletonImmutableSet.class */
public final class SingletonImmutableSet<E> extends ImmutableSet<E> {

    /* renamed from: f */
    final transient E f38720f;

    /* renamed from: g */
    private transient int f38721g;

    public SingletonImmutableSet(E e) {
        this.f38720f = (E) C8756j.m2789l(e);
    }

    public SingletonImmutableSet(E e, int i) {
        this.f38720f = e;
        this.f38721g = i;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f38720f.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i) {
        objArr[i] = this.f38720f;
        return i + 1;
    }

    @Override // com.google.common.collect.ImmutableSet
    ImmutableList<E> createAsList() {
        return ImmutableList.m2749of((Object) this.f38720f);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f38721g;
        int i2 = i;
        if (i == 0) {
            i2 = this.f38720f.hashCode();
            this.f38721g = i2;
        }
        return i2;
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean isHashCodeFast() {
        return this.f38721g != 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public AbstractC8821q<E> iterator() {
        return C8811j.m2626e(this.f38720f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.f38720f.toString() + ']';
    }
}
