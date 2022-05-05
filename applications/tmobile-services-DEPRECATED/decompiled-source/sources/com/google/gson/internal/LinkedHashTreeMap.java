package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap.class */
public final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: n */
    private static final Comparator<Comparable> f11996n = new Comparator<Comparable>() { // from class: com.google.gson.internal.LinkedHashTreeMap.1
        /* renamed from: a */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: f */
    Comparator<? super K> f11997f;

    /* renamed from: g */
    Node<K, V>[] f11998g;

    /* renamed from: h */
    final Node<K, V> f11999h;

    /* renamed from: i */
    int f12000i;

    /* renamed from: j */
    int f12001j;

    /* renamed from: k */
    int f12002k;

    /* renamed from: l */
    private LinkedHashTreeMap<K, V>.EntrySet f12003l;

    /* renamed from: m */
    private LinkedHashTreeMap<K, V>.KeySet f12004m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$AvlBuilder.class */
    public static final class AvlBuilder<K, V> {

        /* renamed from: a */
        private Node<K, V> f12005a;

        /* renamed from: b */
        private int f12006b;

        /* renamed from: c */
        private int f12007c;

        /* renamed from: d */
        private int f12008d;

        AvlBuilder() {
        }

        /* renamed from: a */
        void m8308a(Node<K, V> node) {
            node.f12018h = null;
            node.f12016f = null;
            node.f12017g = null;
            node.f12024n = 1;
            int i = this.f12006b;
            if (i > 0) {
                int i2 = this.f12008d;
                if ((i2 & 1) == 0) {
                    this.f12008d = i2 + 1;
                    this.f12006b = i - 1;
                    this.f12007c++;
                }
            }
            node.f12016f = this.f12005a;
            this.f12005a = node;
            int i3 = this.f12008d + 1;
            this.f12008d = i3;
            int i4 = this.f12006b;
            if (i4 > 0 && (i3 & 1) == 0) {
                this.f12008d = i3 + 1;
                this.f12006b = i4 - 1;
                this.f12007c++;
            }
            int i5 = 4;
            while (true) {
                int i6 = i5 - 1;
                if ((this.f12008d & i6) == i6) {
                    int i7 = this.f12007c;
                    if (i7 == 0) {
                        Node<K, V> node2 = this.f12005a;
                        Node<K, V> node3 = node2.f12016f;
                        Node<K, V> node4 = node3.f12016f;
                        node3.f12016f = node4.f12016f;
                        this.f12005a = node3;
                        node3.f12017g = node4;
                        node3.f12018h = node2;
                        node3.f12024n = node2.f12024n + 1;
                        node4.f12016f = node3;
                        node2.f12016f = node3;
                    } else if (i7 == 1) {
                        Node<K, V> node5 = this.f12005a;
                        Node<K, V> node6 = node5.f12016f;
                        this.f12005a = node6;
                        node6.f12018h = node5;
                        node6.f12024n = node5.f12024n + 1;
                        node5.f12016f = node6;
                        this.f12007c = 0;
                    } else if (i7 == 2) {
                        this.f12007c = 0;
                    }
                    i5 *= 2;
                } else {
                    return;
                }
            }
        }

        /* renamed from: b */
        void m8307b(int i) {
            this.f12006b = ((Integer.highestOneBit(i) * 2) - 1) - i;
            this.f12008d = 0;
            this.f12007c = 0;
            this.f12005a = null;
        }

        /* renamed from: c */
        Node<K, V> m8306c() {
            Node<K, V> node = this.f12005a;
            if (node.f12016f == null) {
                return node;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$AvlIterator.class */
    public static class AvlIterator<K, V> {

        /* renamed from: a */
        private Node<K, V> f12009a;

        AvlIterator() {
        }

        /* renamed from: a */
        public Node<K, V> m8305a() {
            Node<K, V> node = this.f12009a;
            if (node == null) {
                return null;
            }
            Node<K, V> node2 = node.f12016f;
            node.f12016f = null;
            node2 = node.f12018h;
            while (node2 != null) {
                node2.f12016f = node2;
                node2 = node2.f12017g;
            }
            this.f12009a = node2;
            return node;
        }

        /* renamed from: b */
        void m8304b(Node<K, V> node) {
            Node<K, V> node2 = null;
            while (node != null) {
                node.f12016f = node2;
                node = node.f12017g;
                node2 = node;
            }
            this.f12009a = node2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$EntrySet.class */
    final class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedHashTreeMap.this.m8318g((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new LinkedHashTreeMap<K, V>.LinkedTreeMapIterator<Map.Entry<K, V>>(this) { // from class: com.google.gson.internal.LinkedHashTreeMap.EntrySet.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                }

                /* renamed from: b */
                public Map.Entry<K, V> next() {
                    return m8302a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Node<K, V> g;
            if (!(obj instanceof Map.Entry) || (g = LinkedHashTreeMap.this.m8318g((Map.Entry) obj)) == null) {
                return false;
            }
            LinkedHashTreeMap.this.m8315j(g, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.f12000i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$KeySet.class */
    final class KeySet extends AbstractSet<K> {
        KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedHashTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new LinkedHashTreeMap<K, V>.LinkedTreeMapIterator<K>(this) { // from class: com.google.gson.internal.LinkedHashTreeMap.KeySet.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return m8302a().f12021k;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedHashTreeMap.this.m8314k(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.f12000i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator.class */
    public abstract class LinkedTreeMapIterator<T> implements Iterator<T> {

        /* renamed from: f */
        Node<K, V> f12012f;

        /* renamed from: g */
        Node<K, V> f12013g = null;

        /* renamed from: h */
        int f12014h;

        LinkedTreeMapIterator() {
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            this.f12012f = linkedHashTreeMap.f11999h.f12019i;
            this.f12014h = linkedHashTreeMap.f12001j;
        }

        /* renamed from: a */
        final Node<K, V> m8302a() {
            Node<K, V> node = this.f12012f;
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            if (node == linkedHashTreeMap.f11999h) {
                throw new NoSuchElementException();
            } else if (linkedHashTreeMap.f12001j == this.f12014h) {
                this.f12012f = node.f12019i;
                this.f12013g = node;
                return node;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f12012f != LinkedHashTreeMap.this.f11999h;
        }

        @Override // java.util.Iterator
        public final void remove() {
            Node<K, V> node = this.f12013g;
            if (node != null) {
                LinkedHashTreeMap.this.m8315j(node, true);
                this.f12013g = null;
                this.f12014h = LinkedHashTreeMap.this.f12001j;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/LinkedHashTreeMap$Node.class */
    public static final class Node<K, V> implements Map.Entry<K, V> {

        /* renamed from: f */
        Node<K, V> f12016f;

        /* renamed from: g */
        Node<K, V> f12017g;

        /* renamed from: h */
        Node<K, V> f12018h;

        /* renamed from: i */
        Node<K, V> f12019i;

        /* renamed from: j */
        Node<K, V> f12020j;

        /* renamed from: k */
        final K f12021k;

        /* renamed from: l */
        final int f12022l;

        /* renamed from: m */
        V f12023m;

        /* renamed from: n */
        int f12024n;

        Node() {
            this.f12021k = null;
            this.f12022l = -1;
            this.f12020j = this;
            this.f12019i = this;
        }

        Node(Node<K, V> node, K k, int i, Node<K, V> node2, Node<K, V> node3) {
            this.f12016f = node;
            this.f12021k = k;
            this.f12022l = i;
            this.f12024n = 1;
            this.f12019i = node2;
            this.f12020j = node3;
            node3.f12019i = this;
            node2.f12020j = this;
        }

        /* renamed from: a */
        public Node<K, V> m8301a() {
            Node<K, V> node = this.f12017g;
            Node<K, V> node2 = this;
            while (node != null) {
                node = node.f12017g;
                node2 = node;
            }
            return node2;
        }

        /* renamed from: b */
        public Node<K, V> m8300b() {
            Node<K, V> node = this.f12018h;
            Node<K, V> node2 = this;
            while (node != null) {
                node = node.f12018h;
                node2 = node;
            }
            return node2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
            r0 = r3.f12023m;
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
                K r0 = r0.f12021k
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
                V r0 = r0.f12023m
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedHashTreeMap.Node.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f12021k;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f12023m;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f12021k;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f12023m;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f12023m;
            this.f12023m = v;
            return v2;
        }

        public String toString() {
            return this.f12021k + "=" + this.f12023m;
        }
    }

    public LinkedHashTreeMap() {
        this(f11996n);
    }

    public LinkedHashTreeMap(Comparator<? super K> comparator) {
        this.f12000i = 0;
        this.f12001j = 0;
        this.f11997f = comparator == null ? f11996n : comparator;
        this.f11999h = new Node<>();
        Node<K, V>[] nodeArr = new Node[16];
        this.f11998g = nodeArr;
        this.f12002k = (nodeArr.length / 2) + (nodeArr.length / 4);
    }

    /* renamed from: a */
    private void m8322a() {
        Node<K, V>[] b = m8321b(this.f11998g);
        this.f11998g = b;
        this.f12002k = (b.length / 2) + (b.length / 4);
    }

    /* renamed from: b */
    static <K, V> Node<K, V>[] m8321b(Node<K, V>[] nodeArr) {
        int length = nodeArr.length;
        Node<K, V>[] nodeArr2 = new Node[length * 2];
        AvlIterator avlIterator = new AvlIterator();
        AvlBuilder avlBuilder = new AvlBuilder();
        AvlBuilder avlBuilder2 = new AvlBuilder();
        for (int i = 0; i < length; i++) {
            Node<K, V> node = nodeArr[i];
            if (node != null) {
                avlIterator.m8304b(node);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    Node<K, V> a = avlIterator.m8305a();
                    if (a == null) {
                        break;
                    } else if ((a.f12022l & length) == 0) {
                        i2++;
                    } else {
                        i3++;
                    }
                }
                avlBuilder.m8307b(i2);
                avlBuilder2.m8307b(i3);
                avlIterator.m8304b(node);
                while (true) {
                    Node<K, V> a2 = avlIterator.m8305a();
                    if (a2 == null) {
                        break;
                    } else if ((a2.f12022l & length) == 0) {
                        avlBuilder.m8308a(a2);
                    } else {
                        avlBuilder2.m8308a(a2);
                    }
                }
                Node<K, V> node2 = null;
                nodeArr2[i] = i2 > 0 ? avlBuilder.m8306c() : null;
                if (i3 > 0) {
                    node2 = avlBuilder2.m8306c();
                }
                nodeArr2[i + length] = node2;
            }
        }
        return nodeArr2;
    }

    /* renamed from: e */
    private boolean m8320e(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: i */
    private void m8316i(Node<K, V> node, boolean z) {
        while (node != null) {
            Node<K, V> node2 = node.f12017g;
            Node<K, V> node3 = node.f12018h;
            int i = 0;
            int i2 = 0;
            int i3 = node2 != null ? node2.f12024n : 0;
            int i4 = node3 != null ? node3.f12024n : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                Node<K, V> node4 = node3.f12017g;
                Node<K, V> node5 = node3.f12018h;
                int i6 = node5 != null ? node5.f12024n : 0;
                if (node4 != null) {
                    i2 = node4.f12024n;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    m8312m(node);
                } else {
                    m8311n(node3);
                    m8312m(node);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                Node<K, V> node6 = node2.f12017g;
                Node<K, V> node7 = node2.f12018h;
                int i8 = node7 != null ? node7.f12024n : 0;
                if (node6 != null) {
                    i = node6.f12024n;
                }
                int i9 = i - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    m8311n(node);
                } else {
                    m8312m(node2);
                    m8311n(node);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                node.f12024n = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                node.f12024n = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            node = node.f12016f;
        }
    }

    /* renamed from: l */
    private void m8313l(Node<K, V> node, Node<K, V> node2) {
        Node<K, V> node3 = node.f12016f;
        node.f12016f = null;
        if (node2 != null) {
            node2.f12016f = node3;
        }
        if (node3 == null) {
            int i = node.f12022l;
            Node<K, V>[] nodeArr = this.f11998g;
            nodeArr[i & (nodeArr.length - 1)] = node2;
        } else if (node3.f12017g == node) {
            node3.f12017g = node2;
        } else {
            node3.f12018h = node2;
        }
    }

    /* renamed from: m */
    private void m8312m(Node<K, V> node) {
        Node<K, V> node2 = node.f12017g;
        Node<K, V> node3 = node.f12018h;
        Node<K, V> node4 = node3.f12017g;
        Node<K, V> node5 = node3.f12018h;
        node.f12018h = node4;
        if (node4 != null) {
            node4.f12016f = node;
        }
        m8313l(node, node3);
        node3.f12017g = node;
        node.f12016f = node3;
        int i = 0;
        int max = Math.max(node2 != null ? node2.f12024n : 0, node4 != null ? node4.f12024n : 0) + 1;
        node.f12024n = max;
        if (node5 != null) {
            i = node5.f12024n;
        }
        node3.f12024n = Math.max(max, i) + 1;
    }

    /* renamed from: n */
    private void m8311n(Node<K, V> node) {
        Node<K, V> node2 = node.f12017g;
        Node<K, V> node3 = node.f12018h;
        Node<K, V> node4 = node2.f12017g;
        Node<K, V> node5 = node2.f12018h;
        node.f12017g = node5;
        if (node5 != null) {
            node5.f12016f = node;
        }
        m8313l(node, node2);
        node2.f12018h = node;
        node.f12016f = node2;
        int i = 0;
        int max = Math.max(node3 != null ? node3.f12024n : 0, node5 != null ? node5.f12024n : 0) + 1;
        node.f12024n = max;
        if (node4 != null) {
            i = node4.f12024n;
        }
        node2.f12024n = Math.max(max, i) + 1;
    }

    /* renamed from: o */
    private static int m8310o(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.f11998g, (Object) null);
        this.f12000i = 0;
        this.f12001j++;
        Node<K, V> node = this.f11999h;
        Node<K, V> node2 = node.f12019i;
        while (node2 != node) {
            node2 = node2.f12019i;
            node2.f12020j = null;
            node2.f12019i = null;
        }
        node.f12020j = node;
        node.f12019i = node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return m8317h(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedHashTreeMap<K, V>.EntrySet entrySet = this.f12003l;
        if (entrySet == null) {
            entrySet = new EntrySet();
            this.f12003l = entrySet;
        }
        return entrySet;
    }

    /* renamed from: f */
    Node<K, V> m8319f(K k, boolean z) {
        int i;
        Node<K, V> node;
        Comparator<? super K> comparator = this.f11997f;
        Node<K, V>[] nodeArr = this.f11998g;
        int o = m8310o(k.hashCode());
        int length = (nodeArr.length - 1) & o;
        Node<K, V> node2 = nodeArr[length];
        if (node2 != null) {
            Comparable comparable = comparator == f11996n ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(node2.f12021k) : comparator.compare(k, (K) node2.f12021k);
                if (i == 0) {
                    return node2;
                }
                Node<K, V> node3 = i < 0 ? node2.f12017g : node2.f12018h;
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
        Node<K, V> node4 = this.f11999h;
        if (node2 != null) {
            node = new Node<>(node2, k, o, node4, node4.f12020j);
            if (i < 0) {
                node2.f12017g = node;
            } else {
                node2.f12018h = node;
            }
            m8316i(node2, true);
        } else if (comparator != f11996n || (k instanceof Comparable)) {
            node = new Node<>(node2, k, o, node4, node4.f12020j);
            nodeArr[length] = node;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        int i2 = this.f12000i;
        this.f12000i = i2 + 1;
        if (i2 > this.f12002k) {
            m8322a();
        }
        this.f12001j++;
        return node;
    }

    /* renamed from: g */
    Node<K, V> m8318g(Map.Entry<?, ?> entry) {
        Node<K, V> h = m8317h(entry.getKey());
        return h != null && m8320e(h.f12023m, entry.getValue()) ? h : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Node<K, V> h = m8317h(obj);
        return h != null ? h.f12023m : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    Node<K, V> m8317h(Object obj) {
        Node<K, V> node = null;
        if (obj != 0) {
            try {
                node = m8319f(obj, false);
            } catch (ClassCastException e) {
                node = null;
            }
        }
        return node;
    }

    /* renamed from: j */
    void m8315j(Node<K, V> node, boolean z) {
        int i;
        if (z) {
            Node<K, V> node2 = node.f12020j;
            node2.f12019i = node.f12019i;
            node.f12019i.f12020j = node2;
            node.f12020j = null;
            node.f12019i = null;
        }
        Node<K, V> node3 = node.f12017g;
        Node<K, V> node4 = node.f12018h;
        Node<K, V> node5 = node.f12016f;
        int i2 = 0;
        if (node3 == null || node4 == null) {
            if (node3 != null) {
                m8313l(node, node3);
                node.f12017g = null;
            } else if (node4 != null) {
                m8313l(node, node4);
                node.f12018h = null;
            } else {
                m8313l(node, null);
            }
            m8316i(node5, false);
            this.f12000i--;
            this.f12001j++;
            return;
        }
        Node<K, V> b = node3.f12024n > node4.f12024n ? node3.m8300b() : node4.m8301a();
        m8315j(b, false);
        Node<K, V> node6 = node.f12017g;
        if (node6 != null) {
            i = node6.f12024n;
            b.f12017g = node6;
            node6.f12016f = b;
            node.f12017g = null;
        } else {
            i = 0;
        }
        Node<K, V> node7 = node.f12018h;
        if (node7 != null) {
            i2 = node7.f12024n;
            b.f12018h = node7;
            node7.f12016f = b;
            node.f12018h = null;
        }
        b.f12024n = Math.max(i, i2) + 1;
        m8313l(node, b);
    }

    /* renamed from: k */
    Node<K, V> m8314k(Object obj) {
        Node<K, V> h = m8317h(obj);
        if (h != null) {
            m8315j(h, true);
        }
        return h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedHashTreeMap<K, V>.KeySet keySet = this.f12004m;
        if (keySet == null) {
            keySet = new KeySet();
            this.f12004m = keySet;
        }
        return keySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k != null) {
            Node<K, V> f = m8319f(k, true);
            V v2 = f.f12023m;
            f.f12023m = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Node<K, V> k = m8314k(obj);
        return k != null ? k.f12023m : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f12000i;
    }
}
