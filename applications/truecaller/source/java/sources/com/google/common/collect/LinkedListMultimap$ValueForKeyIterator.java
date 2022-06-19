package com.google.common.collect;

import com.google.common.collect.LinkedListMultimap;
import java.util.ListIterator;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/LinkedListMultimap$ValueForKeyIterator.class */
public class LinkedListMultimap$ValueForKeyIterator implements ListIterator<V> {
    public LinkedListMultimap.Node<K, V> current;
    public final Object key;
    public LinkedListMultimap.Node<K, V> next;
    public int nextIndex;
    public LinkedListMultimap.Node<K, V> previous;
    public final /* synthetic */ LinkedListMultimap this$0;

    /* JADX WARN: Multi-variable type inference failed */
    public LinkedListMultimap$ValueForKeyIterator(LinkedListMultimap linkedListMultimap, Object obj) {
        this.this$0 = linkedListMultimap;
        this.key = obj;
        LinkedListMultimap$KeyList linkedListMultimap$KeyList = (LinkedListMultimap$KeyList) linkedListMultimap.keyToKeyList.get(obj);
        this.next = linkedListMultimap$KeyList == null ? null : linkedListMultimap$KeyList.head;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LinkedListMultimap$ValueForKeyIterator(LinkedListMultimap linkedListMultimap, Object obj, int i) {
        this.this$0 = linkedListMultimap;
        LinkedListMultimap$KeyList linkedListMultimap$KeyList = (LinkedListMultimap$KeyList) linkedListMultimap.keyToKeyList.get(obj);
        int i2 = linkedListMultimap$KeyList == null ? 0 : linkedListMultimap$KeyList.count;
        C26232y.checkPositionIndex(i, i2);
        if (i >= i2 / 2) {
            this.previous = linkedListMultimap$KeyList == null ? null : linkedListMultimap$KeyList.tail;
            this.nextIndex = i2;
            while (i < i2) {
                previous();
                i++;
            }
        } else {
            this.next = linkedListMultimap$KeyList == null ? null : linkedListMultimap$KeyList.head;
            while (i > 0) {
                next();
                i--;
            }
        }
        this.key = obj;
        this.current = null;
    }

    @Override // java.util.ListIterator
    public void add(V v) {
        this.previous = this.this$0.addNode(this.key, v, this.next);
        this.nextIndex++;
        this.current = null;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.next != 0;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.previous != 0;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [V, java.lang.Object] */
    @Override // java.util.ListIterator, java.util.Iterator
    public V next() {
        LinkedListMultimap.access$300(this.next);
        LinkedListMultimap.Node<K, V> node = this.next;
        this.current = node;
        this.previous = node;
        this.next = node.nextSibling;
        this.nextIndex++;
        return node.value;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.nextIndex;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [V, java.lang.Object] */
    @Override // java.util.ListIterator
    public V previous() {
        LinkedListMultimap.access$300(this.previous);
        LinkedListMultimap.Node<K, V> node = this.previous;
        this.current = node;
        this.next = node;
        this.previous = node.previousSibling;
        this.nextIndex--;
        return node.value;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.nextIndex - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        C26232y.checkState1(this.current != 0, "no calls to next() since the last call to remove()");
        LinkedListMultimap.Node<K, V> node = this.current;
        if (node != this.next) {
            this.previous = node.previousSibling;
            this.nextIndex--;
        } else {
            this.next = node.nextSibling;
        }
        LinkedListMultimap.access$400(this.this$0, node);
        this.current = null;
    }

    @Override // java.util.ListIterator
    public void set(V v) {
        C26232y.checkState2(this.current != 0);
        this.current.value = v;
    }
}
