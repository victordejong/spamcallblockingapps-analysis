package com.freshchat.consumer.sdk.p057j;

import java.util.LinkedList;
/* renamed from: com.freshchat.consumer.sdk.j.ar */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ar.class */
public class C1625ar<E> extends LinkedList<E> {
    private int maxSize;

    @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
    public boolean add(E e) {
        boolean add = super.add(e);
        if (size() > getMaxSize()) {
            removeFirst();
        }
        return add;
    }

    public int getMaxSize() {
        return this.maxSize;
    }

    /* renamed from: v */
    public void m40234v(int i) {
        this.maxSize = i;
    }
}
