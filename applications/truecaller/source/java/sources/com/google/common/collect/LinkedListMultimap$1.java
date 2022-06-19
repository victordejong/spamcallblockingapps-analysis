package com.google.common.collect;

import java.util.AbstractSequentialList;
import java.util.ListIterator;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/LinkedListMultimap$1.class */
public class LinkedListMultimap$1 extends AbstractSequentialList<V> {
    public final /* synthetic */ LinkedListMultimap this$0;
    public final /* synthetic */ Object val$key;

    public LinkedListMultimap$1(LinkedListMultimap linkedListMultimap, Object obj) {
        this.this$0 = linkedListMultimap;
        this.val$key = obj;
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public ListIterator<V> listIterator(int i) {
        return new LinkedListMultimap$ValueForKeyIterator(this.this$0, this.val$key, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        LinkedListMultimap$KeyList linkedListMultimap$KeyList = (LinkedListMultimap$KeyList) this.this$0.keyToKeyList.get(this.val$key);
        return linkedListMultimap$KeyList == null ? 0 : linkedListMultimap$KeyList.count;
    }
}
