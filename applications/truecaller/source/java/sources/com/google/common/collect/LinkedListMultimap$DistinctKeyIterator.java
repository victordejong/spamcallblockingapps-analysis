package com.google.common.collect;

import com.google.common.collect.LinkedListMultimap;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/LinkedListMultimap$DistinctKeyIterator.class */
public class LinkedListMultimap$DistinctKeyIterator implements Iterator<K> {
    public LinkedListMultimap.Node<K, V> current;
    public int expectedModCount;
    public LinkedListMultimap.Node<K, V> next;
    public final Set<K> seenKeys;
    public final /* synthetic */ LinkedListMultimap this$0;

    public LinkedListMultimap$DistinctKeyIterator(LinkedListMultimap linkedListMultimap, LinkedListMultimap$1 linkedListMultimap$1) {
        this.this$0 = linkedListMultimap;
        this.seenKeys = Collections2.newHashSetWithExpectedSize(linkedListMultimap.keySet().size());
        this.next = linkedListMultimap.head;
        this.expectedModCount = linkedListMultimap.modCount;
    }

    public final void checkForConcurrentModification() {
        if (this.this$0.modCount == this.expectedModCount) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        checkForConcurrentModification();
        return this.next != 0;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object, K] */
    @Override // java.util.Iterator
    public K next() {
        LinkedListMultimap.Node<K, V> node;
        checkForConcurrentModification();
        LinkedListMultimap.access$300(this.next);
        LinkedListMultimap.Node<K, V> node2 = this.next;
        this.current = node2;
        this.seenKeys.add(node2.key);
        do {
            node = this.next.next;
            this.next = node;
            if (node == 0) {
                break;
            }
        } while (!this.seenKeys.add(node.key));
        return this.current.key;
    }

    @Override // java.util.Iterator
    public void remove() {
        checkForConcurrentModification();
        C26232y.checkState1(this.current != 0, "no calls to next() since the last call to remove()");
        LinkedListMultimap linkedListMultimap = this.this$0;
        Object obj = this.current.key;
        Objects.requireNonNull(linkedListMultimap);
        LinkedListMultimap$ValueForKeyIterator linkedListMultimap$ValueForKeyIterator = new LinkedListMultimap$ValueForKeyIterator(linkedListMultimap, obj);
        while (linkedListMultimap$ValueForKeyIterator.hasNext()) {
            linkedListMultimap$ValueForKeyIterator.next();
            linkedListMultimap$ValueForKeyIterator.remove();
        }
        this.current = null;
        this.expectedModCount = this.this$0.modCount;
    }
}
