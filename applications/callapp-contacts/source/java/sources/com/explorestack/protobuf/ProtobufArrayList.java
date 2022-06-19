package com.explorestack.protobuf;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ProtobufArrayList.class */
final class ProtobufArrayList<E> extends AbstractProtobufList<E> {
    private static final ProtobufArrayList<Object> EMPTY_LIST;
    private final List<E> list;

    static {
        ProtobufArrayList<Object> protobufArrayList = new ProtobufArrayList<>(new ArrayList(0));
        EMPTY_LIST = protobufArrayList;
        protobufArrayList.makeImmutable();
    }

    ProtobufArrayList() {
        this(new ArrayList(10));
    }

    private ProtobufArrayList(List<E> list) {
        this.list = list;
    }

    public static <E> ProtobufArrayList<E> emptyList() {
        return (ProtobufArrayList<E>) EMPTY_LIST;
    }

    @Override // com.explorestack.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        ensureIsMutable();
        this.list.add(i, e);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.list.get(i);
    }

    @Override // com.explorestack.protobuf.Internal.ProtobufList, com.explorestack.protobuf.Internal.BooleanList
    public final ProtobufArrayList<E> mutableCopyWithCapacity(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.list);
            return new ProtobufArrayList<>(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.explorestack.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        ensureIsMutable();
        E remove = this.list.remove(i);
        this.modCount++;
        return remove;
    }

    @Override // com.explorestack.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        ensureIsMutable();
        E e2 = this.list.set(i, e);
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.list.size();
    }
}
