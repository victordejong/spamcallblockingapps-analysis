package com.google.common.collect;

import com.google.common.collect.LinkedListMultimap;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/LinkedListMultimap$KeyList.class */
public class LinkedListMultimap$KeyList<K, V> {
    public int count = 1;
    public LinkedListMultimap.Node<K, V> head;
    public LinkedListMultimap.Node<K, V> tail;

    public LinkedListMultimap$KeyList(LinkedListMultimap.Node<K, V> node) {
        this.head = node;
        this.tail = node;
        node.previousSibling = null;
        node.nextSibling = null;
    }
}
