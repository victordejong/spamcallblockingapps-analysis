package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableSet.class */
public final class RegularImmutableSet<E> extends ImmutableSet<E> {

    /* renamed from: f */
    static final RegularImmutableSet<Object> f38714f = new RegularImmutableSet<>(new Object[0], 0, null, 0, 0);

    /* renamed from: g */
    final transient Object[] f38715g;

    /* renamed from: h */
    final transient Object[] f38716h;

    /* renamed from: i */
    private final transient int f38717i;

    /* renamed from: j */
    private final transient int f38718j;

    /* renamed from: k */
    private final transient int f38719k;

    public RegularImmutableSet(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f38715g = objArr;
        this.f38716h = objArr2;
        this.f38717i = i2;
        this.f38718j = i;
        this.f38719k = i3;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        Object[] objArr = this.f38716h;
        if (obj == null || objArr == null) {
            return false;
        }
        int m2634b = C8809h.m2634b(obj);
        while (true) {
            int i = m2634b & this.f38717i;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            m2634b = i + 1;
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.f38715g, 0, objArr, i, this.f38719k);
        return i + this.f38719k;
    }

    @Override // com.google.common.collect.ImmutableSet
    ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(this.f38715g, this.f38719k);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f38718j;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object[] internalArray() {
        return this.f38715g;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int internalArrayEnd() {
        return this.f38719k;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayStart() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean isHashCodeFast() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public AbstractC8821q<E> iterator() {
        return asList().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f38719k;
    }
}
