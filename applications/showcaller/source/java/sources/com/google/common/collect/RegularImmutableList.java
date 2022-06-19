package com.google.common.collect;

import com.google.common.base.C8756j;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableList.class */
public class RegularImmutableList<E> extends ImmutableList<E> {

    /* renamed from: f */
    static final ImmutableList<Object> f38711f = new RegularImmutableList(new Object[0], 0);

    /* renamed from: g */
    final transient Object[] f38712g;

    /* renamed from: h */
    private final transient int f38713h;

    public RegularImmutableList(Object[] objArr, int i) {
        this.f38712g = objArr;
        this.f38713h = i;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.f38712g, 0, objArr, i, this.f38713h);
        return i + this.f38713h;
    }

    @Override // java.util.List
    public E get(int i) {
        C8756j.m2791j(i, this.f38713h);
        return (E) this.f38712g[i];
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object[] internalArray() {
        return this.f38712g;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int internalArrayEnd() {
        return this.f38713h;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayStart() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f38713h;
    }
}
