package com.airbnb.lottie.parser.moshi;

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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/LinkedHashTreeMap.class */
public final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: n */
    private static final Comparator<Comparable> f6355n = new Comparator<Comparable>() { // from class: com.airbnb.lottie.parser.moshi.LinkedHashTreeMap.1
        /* renamed from: a */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: f */
    Comparator<? super K> f6356f;

    /* renamed from: g */
    Node<K, V>[] f6357g;

    /* renamed from: h */
    final Node<K, V> f6358h;

    /* renamed from: i */
    int f6359i;

    /* renamed from: j */
    int f6360j;

    /* renamed from: k */
    int f6361k;

    /* renamed from: l */
    private LinkedHashTreeMap<K, V>.EntrySet f6362l;

    /* renamed from: m */
    private LinkedHashTreeMap<K, V>.KeySet f6363m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlBuilder.class */
    public static final class AvlBuilder<K, V> {

        /* renamed from: a */
        private Node<K, V> f6364a;

        /* renamed from: b */
        private int f6365b;

        /* renamed from: c */
        private int f6366c;

        /* renamed from: d */
        private int f6367d;

        AvlBuilder() {
        }

        /* renamed from: a */
        void m15760a(Node<K, V> node) {
            node.f6377h = null;
            node.f6375f = null;
            node.f6376g = null;
            node.f6383n = 1;
            int i = this.f6365b;
            if (i > 0) {
                int i2 = this.f6367d;
                if ((i2 & 1) == 0) {
                    this.f6367d = i2 + 1;
                    this.f6365b = i - 1;
                    this.f6366c++;
                }
            }
            node.f6375f = this.f6364a;
            this.f6364a = node;
            int i3 = this.f6367d + 1;
            this.f6367d = i3;
            int i4 = this.f6365b;
            if (i4 > 0 && (i3 & 1) == 0) {
                this.f6367d = i3 + 1;
                this.f6365b = i4 - 1;
                this.f6366c++;
            }
            int i5 = 4;
            while (true) {
                int i6 = i5 - 1;
                if ((this.f6367d & i6) == i6) {
                    int i7 = this.f6366c;
                    if (i7 == 0) {
                        Node<K, V> node2 = this.f6364a;
                        Node<K, V> node3 = node2.f6375f;
                        Node<K, V> node4 = node3.f6375f;
                        node3.f6375f = node4.f6375f;
                        this.f6364a = node3;
                        node3.f6376g = node4;
                        node3.f6377h = node2;
                        node3.f6383n = node2.f6383n + 1;
                        node4.f6375f = node3;
                        node2.f6375f = node3;
                    } else if (i7 == 1) {
                        Node<K, V> node5 = this.f6364a;
                        Node<K, V> node6 = node5.f6375f;
                        this.f6364a = node6;
                        node6.f6377h = node5;
                        node6.f6383n = node5.f6383n + 1;
                        node5.f6375f = node6;
                        this.f6366c = 0;
                    } else if (i7 == 2) {
                        this.f6366c = 0;
                    }
                    i5 *= 2;
                } else {
                    return;
                }
            }
        }

        /* renamed from: b */
        void m15759b(int i) {
            this.f6365b = ((Integer.highestOneBit(i) * 2) - 1) - i;
            this.f6367d = 0;
            this.f6366c = 0;
            this.f6364a = null;
        }

        /* renamed from: c */
        Node<K, V> m15758c() {
            Node<K, V> node = this.f6364a;
            if (node.f6375f == null) {
                return node;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/LinkedHashTreeMap$AvlIterator.class */
    public static class AvlIterator<K, V> {

        /* renamed from: a */
        private Node<K, V> f6368a;

        AvlIterator() {
        }

        /* renamed from: a */
        public Node<K, V> m15757a() {
            Node<K, V> node = this.f6368a;
            if (node == null) {
                return null;
            }
            Node<K, V> node2 = node.f6375f;
            node.f6375f = null;
            node2 = node.f6377h;
            while (node2 != null) {
                node2.f6375f = node2;
                node2 = node2.f6376g;
            }
            this.f6368a = node2;
            return node;
        }

        /* renamed from: b */
        void m15756b(Node<K, V> node) {
            Node<K, V> node2 = null;
            while (node != null) {
                node.f6375f = node2;
                node = node.f6376g;
                node2 = node;
            }
            this.f6368a = node2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/LinkedHashTreeMap$EntrySet.class */
    final class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedHashTreeMap.this.m15770g((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new LinkedHashTreeMap<K, V>.LinkedTreeMapIterator<Map.Entry<K, V>>(this) { // from class: com.airbnb.lottie.parser.moshi.LinkedHashTreeMap.EntrySet.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                }

                /* renamed from: b */
                public Map.Entry<K, V> next() {
                    return m15754a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Node<K, V> g;
            if (!(obj instanceof Map.Entry) || (g = LinkedHashTreeMap.this.m15770g((Map.Entry) obj)) == null) {
                return false;
            }
            LinkedHashTreeMap.this.m15767j(g, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.f6359i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet.class */
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
            return new LinkedHashTreeMap<K, V>.LinkedTreeMapIterator<K>(this) { // from class: com.airbnb.lottie.parser.moshi.LinkedHashTreeMap.KeySet.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return m15754a().f6380k;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedHashTreeMap.this.m15766k(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.f6359i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/LinkedHashTreeMap$LinkedTreeMapIterator.class */
    public abstract class LinkedTreeMapIterator<T> implements Iterator<T> {

        /* renamed from: f */
        Node<K, V> f6371f;

        /* renamed from: g */
        Node<K, V> f6372g = null;

        /* renamed from: h */
        int f6373h;

        LinkedTreeMapIterator() {
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            this.f6371f = linkedHashTreeMap.f6358h.f6378i;
            this.f6373h = linkedHashTreeMap.f6360j;
        }

        /* renamed from: a */
        final Node<K, V> m15754a() {
            Node<K, V> node = this.f6371f;
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            if (node == linkedHashTreeMap.f6358h) {
                throw new NoSuchElementException();
            } else if (linkedHashTreeMap.f6360j == this.f6373h) {
                this.f6371f = node.f6378i;
                this.f6372g = node;
                return node;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f6371f != LinkedHashTreeMap.this.f6358h;
        }

        @Override // java.util.Iterator
        public final void remove() {
            Node<K, V> node = this.f6372g;
            if (node != null) {
                LinkedHashTreeMap.this.m15767j(node, true);
                this.f6372g = null;
                this.f6373h = LinkedHashTreeMap.this.f6360j;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node.class */
    public static final class Node<K, V> implements Map.Entry<K, V> {

        /* renamed from: f */
        Node<K, V> f6375f;

        /* renamed from: g */
        Node<K, V> f6376g;

        /* renamed from: h */
        Node<K, V> f6377h;

        /* renamed from: i */
        Node<K, V> f6378i;

        /* renamed from: j */
        Node<K, V> f6379j;

        /* renamed from: k */
        final K f6380k;

        /* renamed from: l */
        final int f6381l;

        /* renamed from: m */
        V f6382m;

        /* renamed from: n */
        int f6383n;

        Node() {
            this.f6380k = null;
            this.f6381l = -1;
            this.f6379j = this;
            this.f6378i = this;
        }

        Node(Node<K, V> node, K k, int i, Node<K, V> node2, Node<K, V> node3) {
            this.f6375f = node;
            this.f6380k = k;
            this.f6381l = i;
            this.f6383n = 1;
            this.f6378i = node2;
            this.f6379j = node3;
            node3.f6378i = this;
            node2.f6379j = this;
        }

        /* renamed from: a */
        public Node<K, V> m15753a() {
            Node<K, V> node = this.f6376g;
            Node<K, V> node2 = this;
            while (node != null) {
                node = node.f6376g;
                node2 = node;
            }
            return node2;
        }

        /* renamed from: b */
        public Node<K, V> m15752b() {
            Node<K, V> node = this.f6377h;
            Node<K, V> node2 = this;
            while (node != null) {
                node = node.f6377h;
                node2 = node;
            }
            return node2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
            r0 = r3.f6382m;
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
                K r0 = r0.f6380k
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
                V r0 = r0.f6382m
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
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.LinkedHashTreeMap.Node.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f6380k;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f6382m;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f6380k;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f6382m;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f6382m;
            this.f6382m = v;
            return v2;
        }

        public String toString() {
            return this.f6380k + "=" + this.f6382m;
        }
    }

    LinkedHashTreeMap() {
        this(null);
    }

    LinkedHashTreeMap(Comparator<? super K> comparator) {
        this.f6359i = 0;
        this.f6360j = 0;
        this.f6356f = comparator == null ? f6355n : comparator;
        this.f6358h = new Node<>();
        Node<K, V>[] nodeArr = new Node[16];
        this.f6357g = nodeArr;
        this.f6361k = (nodeArr.length / 2) + (nodeArr.length / 4);
    }

    /* renamed from: a */
    private void m15774a() {
        Node<K, V>[] b = m15773b(this.f6357g);
        this.f6357g = b;
        this.f6361k = (b.length / 2) + (b.length / 4);
    }

    /* renamed from: b */
    static <K, V> Node<K, V>[] m15773b(Node<K, V>[] nodeArr) {
        int length = nodeArr.length;
        Node<K, V>[] nodeArr2 = new Node[length * 2];
        AvlIterator avlIterator = new AvlIterator();
        AvlBuilder avlBuilder = new AvlBuilder();
        AvlBuilder avlBuilder2 = new AvlBuilder();
        for (int i = 0; i < length; i++) {
            Node<K, V> node = nodeArr[i];
            if (node != null) {
                avlIterator.m15756b(node);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    Node<K, V> a = avlIterator.m15757a();
                    if (a == null) {
                        break;
                    } else if ((a.f6381l & length) == 0) {
                        i2++;
                    } else {
                        i3++;
                    }
                }
                avlBuilder.m15759b(i2);
                avlBuilder2.m15759b(i3);
                avlIterator.m15756b(node);
                while (true) {
                    Node<K, V> a2 = avlIterator.m15757a();
                    if (a2 == null) {
                        break;
                    } else if ((a2.f6381l & length) == 0) {
                        avlBuilder.m15760a(a2);
                    } else {
                        avlBuilder2.m15760a(a2);
                    }
                }
                Node<K, V> node2 = null;
                nodeArr2[i] = i2 > 0 ? avlBuilder.m15758c() : null;
                if (i3 > 0) {
                    node2 = avlBuilder2.m15758c();
                }
                nodeArr2[i + length] = node2;
            }
        }
        return nodeArr2;
    }

    /* renamed from: e */
    private boolean m15772e(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: i */
    private void m15768i(Node<K, V> node, boolean z) {
        while (node != null) {
            Node<K, V> node2 = node.f6376g;
            Node<K, V> node3 = node.f6377h;
            int i = 0;
            int i2 = 0;
            int i3 = node2 != null ? node2.f6383n : 0;
            int i4 = node3 != null ? node3.f6383n : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                Node<K, V> node4 = node3.f6376g;
                Node<K, V> node5 = node3.f6377h;
                int i6 = node5 != null ? node5.f6383n : 0;
                if (node4 != null) {
                    i2 = node4.f6383n;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    m15764m(node);
                } else {
                    m15763n(node3);
                    m15764m(node);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                Node<K, V> node6 = node2.f6376g;
                Node<K, V> node7 = node2.f6377h;
                int i8 = node7 != null ? node7.f6383n : 0;
                if (node6 != null) {
                    i = node6.f6383n;
                }
                int i9 = i - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    m15763n(node);
                } else {
                    m15764m(node2);
                    m15763n(node);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                node.f6383n = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                node.f6383n = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            node = node.f6375f;
        }
    }

    /* renamed from: l */
    private void m15765l(Node<K, V> node, Node<K, V> node2) {
        Node<K, V> node3 = node.f6375f;
        node.f6375f = null;
        if (node2 != null) {
            node2.f6375f = node3;
        }
        if (node3 == null) {
            int i = node.f6381l;
            Node<K, V>[] nodeArr = this.f6357g;
            nodeArr[i & (nodeArr.length - 1)] = node2;
        } else if (node3.f6376g == node) {
            node3.f6376g = node2;
        } else {
            node3.f6377h = node2;
        }
    }

    /* renamed from: m */
    private void m15764m(Node<K, V> node) {
        Node<K, V> node2 = node.f6376g;
        Node<K, V> node3 = node.f6377h;
        Node<K, V> node4 = node3.f6376g;
        Node<K, V> node5 = node3.f6377h;
        node.f6377h = node4;
        if (node4 != null) {
            node4.f6375f = node;
        }
        m15765l(node, node3);
        node3.f6376g = node;
        node.f6375f = node3;
        int i = 0;
        int max = Math.max(node2 != null ? node2.f6383n : 0, node4 != null ? node4.f6383n : 0) + 1;
        node.f6383n = max;
        if (node5 != null) {
            i = node5.f6383n;
        }
        node3.f6383n = Math.max(max, i) + 1;
    }

    /* renamed from: n */
    private void m15763n(Node<K, V> node) {
        Node<K, V> node2 = node.f6376g;
        Node<K, V> node3 = node.f6377h;
        Node<K, V> node4 = node2.f6376g;
        Node<K, V> node5 = node2.f6377h;
        node.f6376g = node5;
        if (node5 != null) {
            node5.f6375f = node;
        }
        m15765l(node, node2);
        node2.f6377h = node;
        node.f6375f = node2;
        int i = 0;
        int max = Math.max(node3 != null ? node3.f6383n : 0, node5 != null ? node5.f6383n : 0) + 1;
        node.f6383n = max;
        if (node4 != null) {
            i = node4.f6383n;
        }
        node2.f6383n = Math.max(max, i) + 1;
    }

    /* renamed from: o */
    private static int m15762o(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.f6357g, (Object) null);
        this.f6359i = 0;
        this.f6360j++;
        Node<K, V> node = this.f6358h;
        Node<K, V> node2 = node.f6378i;
        while (node2 != node) {
            node2 = node2.f6378i;
            node2.f6379j = null;
            node2.f6378i = null;
        }
        node.f6379j = node;
        node.f6378i = node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return m15769h(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedHashTreeMap<K, V>.EntrySet entrySet = this.f6362l;
        if (entrySet == null) {
            entrySet = new EntrySet();
            this.f6362l = entrySet;
        }
        return entrySet;
    }

    /* renamed from: f */
    Node<K, V> m15771f(K k, boolean z) {
        int i;
        Node<K, V> node;
        Comparator<? super K> comparator = this.f6356f;
        Node<K, V>[] nodeArr = this.f6357g;
        int o = m15762o(k.hashCode());
        int length = (nodeArr.length - 1) & o;
        Node<K, V> node2 = nodeArr[length];
        if (node2 != null) {
            Comparable comparable = comparator == f6355n ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(node2.f6380k) : comparator.compare(k, (K) node2.f6380k);
                if (i == 0) {
                    return node2;
                }
                Node<K, V> node3 = i < 0 ? node2.f6376g : node2.f6377h;
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
        Node<K, V> node4 = this.f6358h;
        if (node2 != null) {
            node = new Node<>(node2, k, o, node4, node4.f6379j);
            if (i < 0) {
                node2.f6376g = node;
            } else {
                node2.f6377h = node;
            }
            m15768i(node2, true);
        } else if (comparator != f6355n || (k instanceof Comparable)) {
            node = new Node<>(node2, k, o, node4, node4.f6379j);
            nodeArr[length] = node;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        int i2 = this.f6359i;
        this.f6359i = i2 + 1;
        if (i2 > this.f6361k) {
            m15774a();
        }
        this.f6360j++;
        return node;
    }

    /* renamed from: g */
    Node<K, V> m15770g(Map.Entry<?, ?> entry) {
        Node<K, V> h = m15769h(entry.getKey());
        return h != null && m15772e(h.f6382m, entry.getValue()) ? h : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Node<K, V> h = m15769h(obj);
        return h != null ? h.f6382m : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    Node<K, V> m15769h(Object obj) {
        Node<K, V> node = null;
        if (obj != 0) {
            try {
                node = m15771f(obj, false);
            } catch (ClassCastException e) {
                node = null;
            }
        }
        return node;
    }

    /* renamed from: j */
    void m15767j(Node<K, V> node, boolean z) {
        int i;
        if (z) {
            Node<K, V> node2 = node.f6379j;
            node2.f6378i = node.f6378i;
            node.f6378i.f6379j = node2;
            node.f6379j = null;
            node.f6378i = null;
        }
        Node<K, V> node3 = node.f6376g;
        Node<K, V> node4 = node.f6377h;
        Node<K, V> node5 = node.f6375f;
        int i2 = 0;
        if (node3 == null || node4 == null) {
            if (node3 != null) {
                m15765l(node, node3);
                node.f6376g = null;
            } else if (node4 != null) {
                m15765l(node, node4);
                node.f6377h = null;
            } else {
                m15765l(node, null);
            }
            m15768i(node5, false);
            this.f6359i--;
            this.f6360j++;
            return;
        }
        Node<K, V> b = node3.f6383n > node4.f6383n ? node3.m15752b() : node4.m15753a();
        m15767j(b, false);
        Node<K, V> node6 = node.f6376g;
        if (node6 != null) {
            i = node6.f6383n;
            b.f6376g = node6;
            node6.f6375f = b;
            node.f6376g = null;
        } else {
            i = 0;
        }
        Node<K, V> node7 = node.f6377h;
        if (node7 != null) {
            i2 = node7.f6383n;
            b.f6377h = node7;
            node7.f6375f = b;
            node.f6377h = null;
        }
        b.f6383n = Math.max(i, i2) + 1;
        m15765l(node, b);
    }

    /* renamed from: k */
    Node<K, V> m15766k(Object obj) {
        Node<K, V> h = m15769h(obj);
        if (h != null) {
            m15767j(h, true);
        }
        return h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedHashTreeMap<K, V>.KeySet keySet = this.f6363m;
        if (keySet == null) {
            keySet = new KeySet();
            this.f6363m = keySet;
        }
        return keySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k != null) {
            Node<K, V> f = m15771f(k, true);
            V v2 = f.f6382m;
            f.f6382m = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Node<K, V> k = m15766k(obj);
        return k != null ? k.f6382m : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f6359i;
    }
}
