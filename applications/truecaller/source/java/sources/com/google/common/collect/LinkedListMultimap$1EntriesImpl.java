package com.google.common.collect;

import com.google.common.collect.LinkedListMultimap;
import java.util.AbstractSequentialList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.Map;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/LinkedListMultimap$1EntriesImpl.class */
public class LinkedListMultimap$1EntriesImpl extends AbstractSequentialList<Map.Entry<K, V>> {
    public final /* synthetic */ LinkedListMultimap this$0;

    public LinkedListMultimap$1EntriesImpl(LinkedListMultimap linkedListMultimap) {
        this.this$0 = linkedListMultimap;
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public ListIterator<Map.Entry<K, V>> listIterator(int i) {
        return new ListIterator<Map.Entry<K, V>>(this.this$0, i) { // from class: com.google.common.collect.LinkedListMultimap$NodeIterator
            public LinkedListMultimap.Node<K, V> current;
            public int expectedModCount;
            public LinkedListMultimap.Node<K, V> next;
            public int nextIndex;
            public LinkedListMultimap.Node<K, V> previous;
            public final /* synthetic */ LinkedListMultimap this$0;

            {
                this.this$0 = linkedListMultimap;
                this.expectedModCount = linkedListMultimap.modCount;
                int i2 = linkedListMultimap.size;
                C26232y.checkPositionIndex(i, i2);
                if (i >= i2 / 2) {
                    this.previous = linkedListMultimap.tail;
                    this.nextIndex = i2;
                    while (r6 < i2) {
                        previous();
                        r6++;
                    }
                } else {
                    this.next = linkedListMultimap.head;
                    while (r6 > 0) {
                        next();
                        r6--;
                    }
                }
                this.current = null;
            }

            @Override // java.util.ListIterator
            public void add(Object obj) {
                Map.Entry entry = (Map.Entry) obj;
                throw new UnsupportedOperationException();
            }

            public final void checkForConcurrentModification() {
                if (this.this$0.modCount == this.expectedModCount) {
                    return;
                }
                throw new ConcurrentModificationException();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                checkForConcurrentModification();
                return this.next != 0;
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                checkForConcurrentModification();
                return this.previous != 0;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public LinkedListMultimap.Node<K, V> next() {
                checkForConcurrentModification();
                LinkedListMultimap.access$300(this.next);
                LinkedListMultimap.Node<K, V> node = this.next;
                this.current = node;
                this.previous = node;
                this.next = node.next;
                this.nextIndex++;
                return node;
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return this.nextIndex;
            }

            @Override // java.util.ListIterator
            public LinkedListMultimap.Node<K, V> previous() {
                checkForConcurrentModification();
                LinkedListMultimap.access$300(this.previous);
                LinkedListMultimap.Node<K, V> node = this.previous;
                this.current = node;
                this.next = node;
                this.previous = node.previous;
                this.nextIndex--;
                return node;
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return this.nextIndex - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                checkForConcurrentModification();
                C26232y.checkState1(this.current != 0, "no calls to next() since the last call to remove()");
                LinkedListMultimap.Node<K, V> node = this.current;
                if (node != this.next) {
                    this.previous = node.previous;
                    this.nextIndex--;
                } else {
                    this.next = node.next;
                }
                LinkedListMultimap.access$400(this.this$0, node);
                this.current = null;
                this.expectedModCount = this.this$0.modCount;
            }

            @Override // java.util.ListIterator
            public void set(Object obj) {
                Map.Entry entry = (Map.Entry) obj;
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.this$0.size;
    }
}
