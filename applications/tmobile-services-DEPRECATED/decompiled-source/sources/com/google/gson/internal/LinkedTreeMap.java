package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedTreeMap.class */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: m */
    private static final Comparator<Comparable> f12025m = new Comparator<Comparable>() { // from class: com.google.gson.internal.LinkedTreeMap.1
        /* renamed from: a */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: f */
    Comparator<? super K> f12026f;

    /* renamed from: g */
    Node<K, V> f12027g;

    /* renamed from: h */
    int f12028h;

    /* renamed from: i */
    int f12029i;

    /* renamed from: j */
    final Node<K, V> f12030j;

    /* renamed from: k */
    private LinkedTreeMap<K, V>.EntrySet f12031k;

    /* renamed from: l */
    private LinkedTreeMap<K, V>.KeySet f12032l;

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$EntrySet.class */
    class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedTreeMap.this.m8297e((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new LinkedTreeMap<K, V>.LinkedTreeMapIterator<Map.Entry<K, V>>(this) { // from class: com.google.gson.internal.LinkedTreeMap.EntrySet.1
                {
                    LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                }

                /* renamed from: b */
                public Map.Entry<K, V> next() {
                    return m8287a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Node<K, V> e;
            if (!(obj instanceof Map.Entry) || (e = LinkedTreeMap.this.m8297e((Map.Entry) obj)) == null) {
                return false;
            }
            LinkedTreeMap.this.m8294h(e, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.f12028h;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$KeySet.class */
    final class KeySet extends AbstractSet<K> {
        KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new LinkedTreeMap<K, V>.LinkedTreeMapIterator<K>(this) { // from class: com.google.gson.internal.LinkedTreeMap.KeySet.1
                {
                    LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return m8287a().f12044k;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedTreeMap.this.m8293i(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.f12028h;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator.class */
    public abstract class LinkedTreeMapIterator<T> implements Iterator<T> {

        /* renamed from: f */
        Node<K, V> f12035f;

        /* renamed from: g */
        Node<K, V> f12036g = null;

        /* renamed from: h */
        int f12037h;

        LinkedTreeMapIterator() {
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            this.f12035f = linkedTreeMap.f12030j.f12042i;
            this.f12037h = linkedTreeMap.f12029i;
        }

        /* renamed from: a */
        final Node<K, V> m8287a() {
            Node<K, V> node = this.f12035f;
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            if (node == linkedTreeMap.f12030j) {
                throw new NoSuchElementException();
            } else if (linkedTreeMap.f12029i == this.f12037h) {
                this.f12035f = node.f12042i;
                this.f12036g = node;
                return node;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f12035f != LinkedTreeMap.this.f12030j;
        }

        @Override // java.util.Iterator
        public final void remove() {
            Node<K, V> node = this.f12036g;
            if (node != null) {
                LinkedTreeMap.this.m8294h(node, true);
                this.f12036g = null;
                this.f12037h = LinkedTreeMap.this.f12029i;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$Node.class */
    public static final class Node<K, V> implements Map.Entry<K, V> {

        /* renamed from: f */
        Node<K, V> f12039f;

        /* renamed from: g */
        Node<K, V> f12040g;

        /* renamed from: h */
        Node<K, V> f12041h;

        /* renamed from: i */
        Node<K, V> f12042i;

        /* renamed from: j */
        Node<K, V> f12043j;

        /* renamed from: k */
        final K f12044k;

        /* renamed from: l */
        V f12045l;

        /* renamed from: m */
        int f12046m;

        Node() {
            this.f12044k = null;
            this.f12043j = this;
            this.f12042i = this;
        }

        Node(Node<K, V> node, K k, Node<K, V> node2, Node<K, V> node3) {
            this.f12039f = node;
            this.f12044k = k;
            this.f12046m = 1;
            this.f12042i = node2;
            this.f12043j = node3;
            node3.f12042i = this;
            node2.f12043j = this;
        }

        /* renamed from: a */
        public Node<K, V> m8286a() {
            Node<K, V> node = this.f12040g;
            Node<K, V> node2 = this;
            while (node != null) {
                node = node.f12040g;
                node2 = node;
            }
            return node2;
        }

        /* renamed from: b */
        public Node<K, V> m8285b() {
            Node<K, V> node = this.f12041h;
            Node<K, V> node2 = this;
            while (node != null) {
                node = node.f12041h;
                node2 = node;
            }
            return node2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
            r0 = r3.f12045l;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
            if (r0 != null) goto L_0x0058;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0049, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
            if (r0.getValue() != null) goto L_0x006c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0066, code lost:
            if (r0.equals(r0.getValue()) == false) goto L_0x006c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
            r7 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0.getKey() == null) goto L_0x003e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
            if (r0.equals(r0.getKey()) != false) goto L_0x003e;
         */
        @Override // java.util.Map.Entry
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                boolean r0 = r0 instanceof java.util.Map.Entry
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L_0x006c
                r0 = r4
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r4 = r0
                r0 = r3
                K r0 = r0.f12044k
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L_0x002d
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.Object r0 = r0.getKey()
                if (r0 != 0) goto L_0x006c
                goto L_0x003e
            L_0x002d:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r4
                java.lang.Object r1 = r1.getKey()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x006c
            L_0x003e:
                r0 = r3
                V r0 = r0.f12045l
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L_0x0058
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.Object r0 = r0.getValue()
                if (r0 != 0) goto L_0x006c
                goto L_0x0069
            L_0x0058:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r4
                java.lang.Object r1 = r1.getValue()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x006c
            L_0x0069:
                r0 = 1
                r7 = r0
            L_0x006c:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.Node.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f12044k;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f12045l;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f12044k;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f12045l;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f12045l;
            this.f12045l = v;
            return v2;
        }

        public String toString() {
            return this.f12044k + "=" + this.f12045l;
        }
    }

    public LinkedTreeMap() {
        this(f12025m);
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        this.f12028h = 0;
        this.f12029i = 0;
        this.f12030j = new Node<>();
        this.f12026f = comparator == null ? f12025m : comparator;
    }

    /* renamed from: a */
    private boolean m8299a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: g */
    private void m8295g(Node<K, V> node, boolean z) {
        while (node != null) {
            Node<K, V> node2 = node.f12040g;
            Node<K, V> node3 = node.f12041h;
            int i = 0;
            int i2 = 0;
            int i3 = node2 != null ? node2.f12046m : 0;
            int i4 = node3 != null ? node3.f12046m : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                Node<K, V> node4 = node3.f12040g;
                Node<K, V> node5 = node3.f12041h;
                int i6 = node5 != null ? node5.f12046m : 0;
                if (node4 != null) {
                    i2 = node4.f12046m;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    m8291k(node);
                } else {
                    m8290l(node3);
                    m8291k(node);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                Node<K, V> node6 = node2.f12040g;
                Node<K, V> node7 = node2.f12041h;
                int i8 = node7 != null ? node7.f12046m : 0;
                if (node6 != null) {
                    i = node6.f12046m;
                }
                int i9 = i - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    m8290l(node);
                } else {
                    m8291k(node2);
                    m8290l(node);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                node.f12046m = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                node.f12046m = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            node = node.f12039f;
        }
    }

    /* renamed from: j */
    private void m8292j(Node<K, V> node, Node<K, V> node2) {
        Node<K, V> node3 = node.f12039f;
        node.f12039f = null;
        if (node2 != null) {
            node2.f12039f = node3;
        }
        if (node3 == null) {
            this.f12027g = node2;
        } else if (node3.f12040g == node) {
            node3.f12040g = node2;
        } else {
            node3.f12041h = node2;
        }
    }

    /* renamed from: k */
    private void m8291k(Node<K, V> node) {
        Node<K, V> node2 = node.f12040g;
        Node<K, V> node3 = node.f12041h;
        Node<K, V> node4 = node3.f12040g;
        Node<K, V> node5 = node3.f12041h;
        node.f12041h = node4;
        if (node4 != null) {
            node4.f12039f = node;
        }
        m8292j(node, node3);
        node3.f12040g = node;
        node.f12039f = node3;
        int i = 0;
        int max = Math.max(node2 != null ? node2.f12046m : 0, node4 != null ? node4.f12046m : 0) + 1;
        node.f12046m = max;
        if (node5 != null) {
            i = node5.f12046m;
        }
        node3.f12046m = Math.max(max, i) + 1;
    }

    /* renamed from: l */
    private void m8290l(Node<K, V> node) {
        Node<K, V> node2 = node.f12040g;
        Node<K, V> node3 = node.f12041h;
        Node<K, V> node4 = node2.f12040g;
        Node<K, V> node5 = node2.f12041h;
        node.f12040g = node5;
        if (node5 != null) {
            node5.f12039f = node;
        }
        m8292j(node, node2);
        node2.f12041h = node;
        node.f12039f = node2;
        int i = 0;
        int max = Math.max(node3 != null ? node3.f12046m : 0, node5 != null ? node5.f12046m : 0) + 1;
        node.f12046m = max;
        if (node4 != null) {
            i = node4.f12046m;
        }
        node2.f12046m = Math.max(max, i) + 1;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    /* renamed from: b */
    Node<K, V> m8298b(K k, boolean z) {
        int i;
        Node<K, V> node;
        Comparator<? super K> comparator = this.f12026f;
        Node<K, V> node2 = this.f12027g;
        if (node2 != null) {
            Comparable comparable = comparator == f12025m ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(node2.f12044k) : comparator.compare(k, (K) node2.f12044k);
                if (i == 0) {
                    return node2;
                }
                Node<K, V> node3 = i < 0 ? node2.f12040g : node2.f12041h;
                if (node3 == null) {
                    break;
                }
                node2 = node3;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        Node<K, V> node4 = this.f12030j;
        if (node2 != null) {
            node = new Node<>(node2, k, node4, node4.f12043j);
            if (i < 0) {
                node2.f12040g = node;
            } else {
                node2.f12041h = node;
            }
            m8295g(node2, true);
        } else if (comparator != f12025m || (k instanceof Comparable)) {
            node = new Node<>(node2, k, node4, node4.f12043j);
            this.f12027g = node;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.f12028h++;
        this.f12029i++;
        return node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f12027g = null;
        this.f12028h = 0;
        this.f12029i++;
        Node<K, V> node = this.f12030j;
        node.f12043j = node;
        node.f12042i = node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return m8296f(obj) != null;
    }

    /* renamed from: e */
    Node<K, V> m8297e(Map.Entry<?, ?> entry) {
        Node<K, V> f = m8296f(entry.getKey());
        return f != null && m8299a(f.f12045l, entry.getValue()) ? f : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedTreeMap<K, V>.EntrySet entrySet = this.f12031k;
        if (entrySet == null) {
            entrySet = new EntrySet();
            this.f12031k = entrySet;
        }
        return entrySet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    Node<K, V> m8296f(Object obj) {
        Node<K, V> node = null;
        if (obj != 0) {
            try {
                node = m8298b(obj, false);
            } catch (ClassCastException e) {
                node = null;
            }
        }
        return node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Node<K, V> f = m8296f(obj);
        return f != null ? f.f12045l : null;
    }

    /* renamed from: h */
    void m8294h(Node<K, V> node, boolean z) {
        int i;
        if (z) {
            Node<K, V> node2 = node.f12043j;
            node2.f12042i = node.f12042i;
            node.f12042i.f12043j = node2;
        }
        Node<K, V> node3 = node.f12040g;
        Node<K, V> node4 = node.f12041h;
        Node<K, V> node5 = node.f12039f;
        int i2 = 0;
        if (node3 == null || node4 == null) {
            if (node3 != null) {
                m8292j(node, node3);
                node.f12040g = null;
            } else if (node4 != null) {
                m8292j(node, node4);
                node.f12041h = null;
            } else {
                m8292j(node, null);
            }
            m8295g(node5, false);
            this.f12028h--;
            this.f12029i++;
            return;
        }
        Node<K, V> b = node3.f12046m > node4.f12046m ? node3.m8285b() : node4.m8286a();
        m8294h(b, false);
        Node<K, V> node6 = node.f12040g;
        if (node6 != null) {
            i = node6.f12046m;
            b.f12040g = node6;
            node6.f12039f = b;
            node.f12040g = null;
        } else {
            i = 0;
        }
        Node<K, V> node7 = node.f12041h;
        if (node7 != null) {
            i2 = node7.f12046m;
            b.f12041h = node7;
            node7.f12039f = b;
            node.f12041h = null;
        }
        b.f12046m = Math.max(i, i2) + 1;
        m8292j(node, b);
    }

    /* renamed from: i */
    Node<K, V> m8293i(Object obj) {
        Node<K, V> f = m8296f(obj);
        if (f != null) {
            m8294h(f, true);
        }
        return f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedTreeMap<K, V>.KeySet keySet = this.f12032l;
        if (keySet == null) {
            keySet = new KeySet();
            this.f12032l = keySet;
        }
        return keySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k != null) {
            Node<K, V> b = m8298b(k, true);
            V v2 = b.f12045l;
            b.f12045l = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Node<K, V> i = m8293i(obj);
        return i != null ? i.f12045l : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f12028h;
    }
}
