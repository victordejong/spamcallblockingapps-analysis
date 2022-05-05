package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap.class */
class GroupedLinkedMap<K extends Poolable, V> {
    private final LinkedEntry<K, V> head = new LinkedEntry<>();
    private final Map<K, LinkedEntry<K, V>> keyToEntry = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry.class */
    public static class LinkedEntry<K, V> {
        final K key;
        LinkedEntry<K, V> next;
        LinkedEntry<K, V> prev;
        private List<V> values;

        LinkedEntry() {
            this(null);
        }

        LinkedEntry(K k) {
            this.prev = this;
            this.next = this;
            this.key = k;
        }

        public void add(V v) {
            if (this.values == null) {
                this.values = new ArrayList();
            }
            this.values.add(v);
        }

        @Nullable
        public V removeLast() {
            int size = size();
            return size > 0 ? this.values.remove(size - 1) : null;
        }

        public int size() {
            return this.values != null ? this.values.size() : 0;
        }
    }

    private void makeHead(LinkedEntry<K, V> linkedEntry) {
        removeEntry(linkedEntry);
        linkedEntry.prev = this.head;
        linkedEntry.next = this.head.next;
        updateEntry(linkedEntry);
    }

    private void makeTail(LinkedEntry<K, V> linkedEntry) {
        removeEntry(linkedEntry);
        linkedEntry.prev = this.head.prev;
        linkedEntry.next = this.head;
        updateEntry(linkedEntry);
    }

    private static <K, V> void removeEntry(LinkedEntry<K, V> linkedEntry) {
        linkedEntry.prev.next = linkedEntry.next;
        linkedEntry.next.prev = linkedEntry.prev;
    }

    private static <K, V> void updateEntry(LinkedEntry<K, V> linkedEntry) {
        linkedEntry.next.prev = linkedEntry;
        linkedEntry.prev.next = linkedEntry;
    }

    @Nullable
    public V get(K k) {
        LinkedEntry<K, V> linkedEntry;
        LinkedEntry<K, V> linkedEntry2 = this.keyToEntry.get(k);
        if (linkedEntry2 == null) {
            LinkedEntry<K, V> linkedEntry3 = new LinkedEntry<>(k);
            this.keyToEntry.put(k, linkedEntry3);
            linkedEntry = linkedEntry3;
        } else {
            k.offer();
            linkedEntry = linkedEntry2;
        }
        makeHead(linkedEntry);
        return linkedEntry.removeLast();
    }

    public void put(K k, V v) {
        LinkedEntry<K, V> linkedEntry;
        LinkedEntry<K, V> linkedEntry2 = this.keyToEntry.get(k);
        if (linkedEntry2 == null) {
            LinkedEntry<K, V> linkedEntry3 = new LinkedEntry<>(k);
            makeTail(linkedEntry3);
            this.keyToEntry.put(k, linkedEntry3);
            linkedEntry = linkedEntry3;
        } else {
            k.offer();
            linkedEntry = linkedEntry2;
        }
        linkedEntry.add(v);
    }

    @Nullable
    public V removeLast() {
        for (LinkedEntry linkedEntry = this.head.prev; !linkedEntry.equals(this.head); linkedEntry = linkedEntry.prev) {
            V v = (V) linkedEntry.removeLast();
            if (v != null) {
                return v;
            }
            removeEntry(linkedEntry);
            this.keyToEntry.remove(linkedEntry.key);
            ((Poolable) linkedEntry.key).offer();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (LinkedEntry linkedEntry = this.head.next; !linkedEntry.equals(this.head); linkedEntry = linkedEntry.next) {
            z = true;
            sb.append('{');
            sb.append(linkedEntry.key);
            sb.append(':');
            sb.append(linkedEntry.size());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
