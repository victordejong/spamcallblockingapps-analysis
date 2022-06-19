package com.google.protobuf;

import java.util.AbstractList;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/LazyStringArrayList$ByteArrayListView.class */
public class LazyStringArrayList$ByteArrayListView extends AbstractList<byte[]> implements RandomAccess {
    private final LazyStringArrayList list;

    public LazyStringArrayList$ByteArrayListView(LazyStringArrayList lazyStringArrayList) {
        this.list = lazyStringArrayList;
    }

    public void add(int i, byte[] bArr) {
        LazyStringArrayList.access$200(this.list, i, bArr);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public byte[] get(int i) {
        return this.list.getByteArray(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public byte[] remove(int i) {
        String remove = this.list.remove(i);
        ((AbstractList) this).modCount++;
        return LazyStringArrayList.access$100(remove);
    }

    public byte[] set(int i, byte[] bArr) {
        Object access$000 = LazyStringArrayList.access$000(this.list, i, bArr);
        ((AbstractList) this).modCount++;
        return LazyStringArrayList.access$100(access$000);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }
}
