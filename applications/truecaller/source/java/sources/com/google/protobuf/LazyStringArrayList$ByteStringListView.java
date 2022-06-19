package com.google.protobuf;

import java.util.AbstractList;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/LazyStringArrayList$ByteStringListView.class */
public class LazyStringArrayList$ByteStringListView extends AbstractList<ByteString> implements RandomAccess {
    private final LazyStringArrayList list;

    public LazyStringArrayList$ByteStringListView(LazyStringArrayList lazyStringArrayList) {
        this.list = lazyStringArrayList;
    }

    public void add(int i, ByteString byteString) {
        LazyStringArrayList.access$500(this.list, i, byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString get(int i) {
        return this.list.getByteString(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString remove(int i) {
        String remove = this.list.remove(i);
        ((AbstractList) this).modCount++;
        return LazyStringArrayList.access$400(remove);
    }

    public ByteString set(int i, ByteString byteString) {
        Object access$300 = LazyStringArrayList.access$300(this.list, i, byteString);
        ((AbstractList) this).modCount++;
        return LazyStringArrayList.access$400(access$300);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }
}
