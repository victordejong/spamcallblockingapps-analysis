package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4960b;
import p131c.p161d.p266c.p269c.AbstractC4999k;
import p131c.p161d.p266c.p269c.C4980f0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5023s0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap.class */
public final class HashBiMap<K, V> extends AbstractMap<K, V> implements AbstractC4999k<K, V>, Serializable {
    public static final int ABSENT = -1;
    public static final int ENDPOINT = -2;
    public transient Set<Map.Entry<K, V>> entrySet;
    public transient int firstInInsertionOrder;
    public transient int[] hashTableKToV;
    public transient int[] hashTableVToK;
    public transient AbstractC4999k<V, K> inverse;
    public transient Set<K> keySet;
    public transient K[] keys;
    public transient int lastInInsertionOrder;
    public transient int modCount;
    public transient int[] nextInBucketKToV;
    public transient int[] nextInBucketVToK;
    public transient int[] nextInInsertionOrder;
    public transient int[] prevInInsertionOrder;
    public transient int size;
    public transient Set<V> valueSet;
    public transient V[] values;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$Inverse.class */
    public static class Inverse<K, V> extends AbstractMap<V, K> implements AbstractC4999k<V, K>, Serializable {
        public final HashBiMap<K, V> forward;
        public transient Set<Map.Entry<V, K>> inverseEntrySet;

        public Inverse(HashBiMap<K, V> hashBiMap) {
            this.forward = hashBiMap;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.forward.inverse = this;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.forward.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.forward.containsValue(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsValue(Object obj) {
            return this.forward.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<V, K>> entrySet() {
            Set<Map.Entry<V, K>> set = this.inverseEntrySet;
            Set<Map.Entry<V, K>> set2 = set;
            if (set == null) {
                set2 = new C7458d<>(this.forward);
                this.inverseEntrySet = set2;
            }
            return set2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4999k
        public K forcePut(V v, K k) {
            return this.forward.putInverse(v, k, true);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K get(Object obj) {
            return this.forward.getInverse(obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4999k
        public AbstractC4999k<K, V> inverse() {
            return this.forward;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return this.forward.values();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K put(V v, K k) {
            return this.forward.putInverse(v, k, false);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K remove(Object obj) {
            return this.forward.removeInverse(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.forward.size;
        }

        @Override // java.util.AbstractMap, java.util.Map, p131c.p161d.p266c.p269c.AbstractC4999k
        public Set<K> values() {
            return this.forward.keySet();
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$a.class */
    public final class C7455a extends AbstractC4960b<K, V> {

        /* renamed from: a */
        public final K f30512a;

        /* renamed from: b */
        public int f30513b;

        public C7455a(int i) {
            this.f30512a = HashBiMap.this.keys[i];
            this.f30513b = i;
        }

        /* renamed from: a */
        public void m8417a() {
            int i = this.f30513b;
            if (i != -1) {
                HashBiMap hashBiMap = HashBiMap.this;
                if (i <= hashBiMap.size && C4928k.m24808a(hashBiMap.keys[i], this.f30512a)) {
                    return;
                }
            }
            this.f30513b = HashBiMap.this.findEntryByKey(this.f30512a);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public K getKey() {
            return this.f30512a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V getValue() {
            m8417a();
            int i = this.f30513b;
            return i == -1 ? null : HashBiMap.this.values[i];
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V setValue(V v) {
            m8417a();
            int i = this.f30513b;
            if (i == -1) {
                return (V) HashBiMap.this.put(this.f30512a, v);
            }
            V v2 = HashBiMap.this.values[i];
            if (C4928k.m24808a(v2, v)) {
                return v;
            }
            HashBiMap.this.replaceValueInEntry(this.f30513b, v, false);
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$b.class */
    public static final class C7456b<K, V> extends AbstractC4960b<V, K> {

        /* renamed from: a */
        public final HashBiMap<K, V> f30515a;

        /* renamed from: b */
        public final V f30516b;

        /* renamed from: c */
        public int f30517c;

        public C7456b(HashBiMap<K, V> hashBiMap, int i) {
            this.f30515a = hashBiMap;
            this.f30516b = hashBiMap.values[i];
            this.f30517c = i;
        }

        /* renamed from: a */
        public final void m8416a() {
            int i = this.f30517c;
            if (i != -1) {
                HashBiMap<K, V> hashBiMap = this.f30515a;
                if (i <= hashBiMap.size && C4928k.m24808a(this.f30516b, hashBiMap.values[i])) {
                    return;
                }
            }
            this.f30517c = this.f30515a.findEntryByValue(this.f30516b);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V getKey() {
            return this.f30516b;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public K getValue() {
            m8416a();
            int i = this.f30517c;
            return i == -1 ? null : this.f30515a.keys[i];
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public K setValue(K k) {
            m8416a();
            int i = this.f30517c;
            if (i == -1) {
                return this.f30515a.putInverse(this.f30516b, k, false);
            }
            K k2 = this.f30515a.keys[i];
            if (C4928k.m24808a(k2, k)) {
                return k;
            }
            this.f30515a.replaceKeyInEntry(this.f30517c, k, false);
            return k2;
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$c.class */
    public final class C7457c extends AbstractC7461g<K, V, Map.Entry<K, V>> {
        public C7457c() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.AbstractC7461g
        /* renamed from: a */
        public Map.Entry<K, V> mo8415a(int i) {
            return new C7455a(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                int findEntryByKey = HashBiMap.this.findEntryByKey(key);
                z = false;
                if (findEntryByKey != -1) {
                    z = false;
                    if (C4928k.m24808a(value, HashBiMap.this.values[findEntryByKey])) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int a = C4980f0.m24726a(key);
            int findEntryByKey = HashBiMap.this.findEntryByKey(key, a);
            if (findEntryByKey == -1 || !C4928k.m24808a(value, HashBiMap.this.values[findEntryByKey])) {
                return false;
            }
            HashBiMap.this.removeEntryKeyHashKnown(findEntryByKey, a);
            return true;
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$d.class */
    public static class C7458d<K, V> extends AbstractC7461g<K, V, Map.Entry<V, K>> {
        public C7458d(HashBiMap<K, V> hashBiMap) {
            super(hashBiMap);
        }

        @Override // com.google.common.collect.HashBiMap.AbstractC7461g
        /* renamed from: a */
        public Map.Entry<V, K> mo8415a(int i) {
            return new C7456b(this.f30521a, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                int findEntryByValue = this.f30521a.findEntryByValue(key);
                z = false;
                if (findEntryByValue != -1) {
                    z = false;
                    if (C4928k.m24808a(this.f30521a.keys[findEntryByValue], value)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int a = C4980f0.m24726a(key);
            int findEntryByValue = this.f30521a.findEntryByValue(key, a);
            if (findEntryByValue == -1 || !C4928k.m24808a(this.f30521a.keys[findEntryByValue], value)) {
                return false;
            }
            this.f30521a.removeEntryValueHashKnown(findEntryByValue, a);
            return true;
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$e.class */
    public final class C7459e extends AbstractC7461g<K, V, K> {
        public C7459e() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.AbstractC7461g
        /* renamed from: a */
        public K mo8415a(int i) {
            return HashBiMap.this.keys[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return HashBiMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int a = C4980f0.m24726a(obj);
            int findEntryByKey = HashBiMap.this.findEntryByKey(obj, a);
            if (findEntryByKey == -1) {
                return false;
            }
            HashBiMap.this.removeEntryKeyHashKnown(findEntryByKey, a);
            return true;
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$f.class */
    public final class C7460f extends AbstractC7461g<K, V, V> {
        public C7460f() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.AbstractC7461g
        /* renamed from: a */
        public V mo8415a(int i) {
            return HashBiMap.this.values[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return HashBiMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int a = C4980f0.m24726a(obj);
            int findEntryByValue = HashBiMap.this.findEntryByValue(obj, a);
            if (findEntryByValue == -1) {
                return false;
            }
            HashBiMap.this.removeEntryValueHashKnown(findEntryByValue, a);
            return true;
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$g.class */
    public static abstract class AbstractC7461g<K, V, T> extends AbstractSet<T> {

        /* renamed from: a */
        public final HashBiMap<K, V> f30521a;

        /* renamed from: com.google.common.collect.HashBiMap$g$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/HashBiMap$g$a.class */
        public class C7462a implements Iterator<T> {

            /* renamed from: a */
            public int f30522a;

            /* renamed from: b */
            public int f30523b = -1;

            /* renamed from: c */
            public int f30524c;

            /* renamed from: d */
            public int f30525d;

            public C7462a() {
                this.f30522a = AbstractC7461g.this.f30521a.firstInInsertionOrder;
                HashBiMap<K, V> hashBiMap = AbstractC7461g.this.f30521a;
                this.f30524c = hashBiMap.modCount;
                this.f30525d = hashBiMap.size;
            }

            /* renamed from: a */
            public final void m8414a() {
                if (AbstractC7461g.this.f30521a.modCount != this.f30524c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m8414a();
                return this.f30522a != -2 && this.f30525d > 0;
            }

            @Override // java.util.Iterator
            public T next() {
                if (hasNext()) {
                    T t = (T) AbstractC7461g.this.mo8415a(this.f30522a);
                    this.f30523b = this.f30522a;
                    this.f30522a = AbstractC7461g.this.f30521a.nextInInsertionOrder[this.f30522a];
                    this.f30525d--;
                    return t;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                m8414a();
                C5006n.m24660a(this.f30523b != -1);
                AbstractC7461g.this.f30521a.removeEntry(this.f30523b);
                if (this.f30522a == AbstractC7461g.this.f30521a.size) {
                    this.f30522a = this.f30523b;
                }
                this.f30523b = -1;
                this.f30524c = AbstractC7461g.this.f30521a.modCount;
            }
        }

        public AbstractC7461g(HashBiMap<K, V> hashBiMap) {
            this.f30521a = hashBiMap;
        }

        /* renamed from: a */
        public abstract T mo8415a(int i);

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f30521a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<T> iterator() {
            return new C7462a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f30521a.size;
        }
    }

    public HashBiMap(int i) {
        init(i);
    }

    private int bucket(int i) {
        return i & (this.hashTableKToV.length - 1);
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    public static <K, V> HashBiMap<K, V> create(int i) {
        return new HashBiMap<>(i);
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> create = create(map.size());
        create.putAll(map);
        return create;
    }

    public static int[] createFilledWithAbsent(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private void deleteFromTableKToV(int i, int i2) {
        C4933n.m24791a(i != -1);
        int bucket = bucket(i2);
        int[] iArr = this.hashTableKToV;
        if (iArr[bucket] == i) {
            int[] iArr2 = this.nextInBucketKToV;
            iArr[bucket] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i3 = iArr[bucket];
        i3 = this.nextInBucketKToV[i3];
        while (i3 != -1) {
            if (i3 == i) {
                int[] iArr3 = this.nextInBucketKToV;
                iArr3[i3] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
            i3 = this.nextInBucketKToV[i3];
        }
        throw new AssertionError("Expected to find entry with key " + this.keys[i]);
    }

    private void deleteFromTableVToK(int i, int i2) {
        C4933n.m24791a(i != -1);
        int bucket = bucket(i2);
        int[] iArr = this.hashTableVToK;
        if (iArr[bucket] == i) {
            int[] iArr2 = this.nextInBucketVToK;
            iArr[bucket] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i3 = iArr[bucket];
        i3 = this.nextInBucketVToK[i3];
        while (i3 != -1) {
            if (i3 == i) {
                int[] iArr3 = this.nextInBucketVToK;
                iArr3[i3] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
            i3 = this.nextInBucketVToK[i3];
        }
        throw new AssertionError("Expected to find entry with value " + this.values[i]);
    }

    private void ensureCapacity(int i) {
        int[] iArr = this.nextInBucketKToV;
        if (iArr.length < i) {
            int a = ImmutableCollection.AbstractC7467b.m8401a(iArr.length, i);
            this.keys = (K[]) Arrays.copyOf(this.keys, a);
            this.values = (V[]) Arrays.copyOf(this.values, a);
            this.nextInBucketKToV = expandAndFillWithAbsent(this.nextInBucketKToV, a);
            this.nextInBucketVToK = expandAndFillWithAbsent(this.nextInBucketVToK, a);
            this.prevInInsertionOrder = expandAndFillWithAbsent(this.prevInInsertionOrder, a);
            this.nextInInsertionOrder = expandAndFillWithAbsent(this.nextInInsertionOrder, a);
        }
        if (this.hashTableKToV.length < i) {
            int a2 = C4980f0.m24728a(i, 1.0d);
            this.hashTableKToV = createFilledWithAbsent(a2);
            this.hashTableVToK = createFilledWithAbsent(a2);
            for (int i2 = 0; i2 < this.size; i2++) {
                int bucket = bucket(C4980f0.m24726a(this.keys[i2]));
                int[] iArr2 = this.nextInBucketKToV;
                int[] iArr3 = this.hashTableKToV;
                iArr2[i2] = iArr3[bucket];
                iArr3[bucket] = i2;
                int bucket2 = bucket(C4980f0.m24726a(this.values[i2]));
                int[] iArr4 = this.nextInBucketVToK;
                int[] iArr5 = this.hashTableVToK;
                iArr4[i2] = iArr5[bucket2];
                iArr5[bucket2] = i2;
            }
        }
    }

    public static int[] expandAndFillWithAbsent(int[] iArr, int i) {
        int length = iArr.length;
        int[] copyOf = Arrays.copyOf(iArr, i);
        Arrays.fill(copyOf, length, i, -1);
        return copyOf;
    }

    private void insertIntoTableKToV(int i, int i2) {
        C4933n.m24791a(i != -1);
        int bucket = bucket(i2);
        int[] iArr = this.nextInBucketKToV;
        int[] iArr2 = this.hashTableKToV;
        iArr[i] = iArr2[bucket];
        iArr2[bucket] = i;
    }

    private void insertIntoTableVToK(int i, int i2) {
        C4933n.m24791a(i != -1);
        int bucket = bucket(i2);
        int[] iArr = this.nextInBucketVToK;
        int[] iArr2 = this.hashTableVToK;
        iArr[i] = iArr2[bucket];
        iArr2[bucket] = i;
    }

    private void moveEntryToIndex(int i, int i2) {
        if (i != i2) {
            int i3 = this.prevInInsertionOrder[i];
            int i4 = this.nextInInsertionOrder[i];
            setSucceeds(i3, i2);
            setSucceeds(i2, i4);
            K[] kArr = this.keys;
            K k = kArr[i];
            V[] vArr = this.values;
            V v = vArr[i];
            kArr[i2] = k;
            vArr[i2] = v;
            int bucket = bucket(C4980f0.m24726a(k));
            int[] iArr = this.hashTableKToV;
            if (iArr[bucket] == i) {
                iArr[bucket] = i2;
            } else {
                int i5 = iArr[bucket];
                int i6 = this.nextInBucketKToV[i5];
                while (i6 != i) {
                    i6 = this.nextInBucketKToV[i6];
                    i5 = i6;
                }
                this.nextInBucketKToV[i5] = i2;
            }
            int[] iArr2 = this.nextInBucketKToV;
            iArr2[i2] = iArr2[i];
            iArr2[i] = -1;
            int bucket2 = bucket(C4980f0.m24726a(v));
            int[] iArr3 = this.hashTableVToK;
            if (iArr3[bucket2] == i) {
                iArr3[bucket2] = i2;
            } else {
                int i7 = iArr3[bucket2];
                int i8 = this.nextInBucketVToK[i7];
                while (i8 != i) {
                    i8 = this.nextInBucketVToK[i8];
                    i7 = i8;
                }
                this.nextInBucketVToK[i7] = i2;
            }
            int[] iArr4 = this.nextInBucketVToK;
            iArr4[i2] = iArr4[i];
            iArr4[i] = -1;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int a = C5023s0.m24621a(objectInputStream);
        init(16);
        C5023s0.m24618a(this, objectInputStream, a);
    }

    private void removeEntry(int i, int i2, int i3) {
        C4933n.m24791a(i != -1);
        deleteFromTableKToV(i, i2);
        deleteFromTableVToK(i, i3);
        setSucceeds(this.prevInInsertionOrder[i], this.nextInInsertionOrder[i]);
        moveEntryToIndex(this.size - 1, i);
        K[] kArr = this.keys;
        int i4 = this.size;
        kArr[i4 - 1] = null;
        this.values[i4 - 1] = null;
        this.size = i4 - 1;
        this.modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replaceKeyInEntry(int i, K k, boolean z) {
        int i2;
        C4933n.m24791a(i != -1);
        int a = C4980f0.m24726a(k);
        int findEntryByKey = findEntryByKey(k, a);
        int i3 = this.lastInInsertionOrder;
        int i4 = -2;
        int i5 = i;
        if (findEntryByKey != -1) {
            if (z) {
                int i6 = this.prevInInsertionOrder[findEntryByKey];
                int i7 = this.nextInInsertionOrder[findEntryByKey];
                removeEntryKeyHashKnown(findEntryByKey, a);
                i3 = i6;
                i4 = i7;
                i5 = i;
                if (i == this.size) {
                    i5 = findEntryByKey;
                    i3 = i6;
                    i4 = i7;
                }
            } else {
                throw new IllegalArgumentException("Key already present in map: " + k);
            }
        }
        if (i3 == i5) {
            i2 = this.prevInInsertionOrder[i5];
        } else {
            i2 = i3;
            if (i3 == this.size) {
                i2 = findEntryByKey;
            }
        }
        if (i4 == i5) {
            findEntryByKey = this.nextInInsertionOrder[i5];
        } else if (i4 != this.size) {
            findEntryByKey = i4;
        }
        setSucceeds(this.prevInInsertionOrder[i5], this.nextInInsertionOrder[i5]);
        deleteFromTableKToV(i5, C4980f0.m24726a(this.keys[i5]));
        this.keys[i5] = k;
        insertIntoTableKToV(i5, C4980f0.m24726a(k));
        setSucceeds(i2, i5);
        setSucceeds(i5, findEntryByKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replaceValueInEntry(int i, V v, boolean z) {
        C4933n.m24791a(i != -1);
        int a = C4980f0.m24726a(v);
        int findEntryByValue = findEntryByValue(v, a);
        int i2 = i;
        if (findEntryByValue != -1) {
            if (z) {
                removeEntryValueHashKnown(findEntryByValue, a);
                i2 = i;
                if (i == this.size) {
                    i2 = findEntryByValue;
                }
            } else {
                throw new IllegalArgumentException("Value already present in map: " + v);
            }
        }
        deleteFromTableVToK(i2, C4980f0.m24726a(this.values[i2]));
        this.values[i2] = v;
        insertIntoTableVToK(i2, a);
    }

    private void setSucceeds(int i, int i2) {
        if (i == -2) {
            this.firstInInsertionOrder = i2;
        } else {
            this.nextInInsertionOrder[i] = i2;
        }
        if (i2 == -2) {
            this.lastInInsertionOrder = i;
        } else {
            this.prevInInsertionOrder[i2] = i;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        C5023s0.m24617a(this, objectOutputStream);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.keys, 0, this.size, (Object) null);
        Arrays.fill(this.values, 0, this.size, (Object) null);
        Arrays.fill(this.hashTableKToV, -1);
        Arrays.fill(this.hashTableVToK, -1);
        Arrays.fill(this.nextInBucketKToV, 0, this.size, -1);
        Arrays.fill(this.nextInBucketVToK, 0, this.size, -1);
        Arrays.fill(this.prevInInsertionOrder, 0, this.size, -1);
        Arrays.fill(this.nextInInsertionOrder, 0, this.size, -1);
        this.size = 0;
        this.firstInInsertionOrder = -2;
        this.lastInInsertionOrder = -2;
        this.modCount++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return findEntryByKey(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        return findEntryByValue(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = new C7457c();
            this.entrySet = set2;
        }
        return set2;
    }

    public int findEntry(Object obj, int i, int[] iArr, int[] iArr2, Object[] objArr) {
        int i2 = iArr[bucket(i)];
        while (i2 != -1) {
            if (C4928k.m24808a(objArr[i2], obj)) {
                return i2;
            }
            i2 = iArr2[i2];
        }
        return -1;
    }

    public int findEntryByKey(Object obj) {
        return findEntryByKey(obj, C4980f0.m24726a(obj));
    }

    public int findEntryByKey(Object obj, int i) {
        return findEntry(obj, i, this.hashTableKToV, this.nextInBucketKToV, this.keys);
    }

    public int findEntryByValue(Object obj) {
        return findEntryByValue(obj, C4980f0.m24726a(obj));
    }

    public int findEntryByValue(Object obj, int i) {
        return findEntry(obj, i, this.hashTableVToK, this.nextInBucketVToK, this.values);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4999k
    public V forcePut(K k, V v) {
        return put(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int findEntryByKey = findEntryByKey(obj);
        return findEntryByKey == -1 ? null : this.values[findEntryByKey];
    }

    public K getInverse(Object obj) {
        int findEntryByValue = findEntryByValue(obj);
        return findEntryByValue == -1 ? null : this.keys[findEntryByValue];
    }

    public void init(int i) {
        C5006n.m24663a(i, "expectedSize");
        int a = C4980f0.m24728a(i, 1.0d);
        this.size = 0;
        this.keys = (K[]) new Object[i];
        this.values = (V[]) new Object[i];
        this.hashTableKToV = createFilledWithAbsent(a);
        this.hashTableVToK = createFilledWithAbsent(a);
        this.nextInBucketKToV = createFilledWithAbsent(i);
        this.nextInBucketVToK = createFilledWithAbsent(i);
        this.firstInInsertionOrder = -2;
        this.lastInInsertionOrder = -2;
        this.prevInInsertionOrder = createFilledWithAbsent(i);
        this.nextInInsertionOrder = createFilledWithAbsent(i);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4999k
    public AbstractC4999k<V, K> inverse() {
        AbstractC4999k<V, K> kVar = this.inverse;
        AbstractC4999k<V, K> kVar2 = kVar;
        if (kVar == null) {
            kVar2 = new Inverse<>(this);
            this.inverse = kVar2;
        }
        return kVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        Set<K> set2 = set;
        if (set == null) {
            set2 = new C7459e();
            this.keySet = set2;
        }
        return set2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        return put(k, v, false);
    }

    public V put(K k, V v, boolean z) {
        int a = C4980f0.m24726a(k);
        int findEntryByKey = findEntryByKey(k, a);
        if (findEntryByKey != -1) {
            V v2 = this.values[findEntryByKey];
            if (C4928k.m24808a(v2, v)) {
                return v;
            }
            replaceValueInEntry(findEntryByKey, v, z);
            return v2;
        }
        int a2 = C4980f0.m24726a(v);
        int findEntryByValue = findEntryByValue(v, a2);
        if (!z) {
            C4933n.m24782a(findEntryByValue == -1, "Value already present: %s", v);
        } else if (findEntryByValue != -1) {
            removeEntryValueHashKnown(findEntryByValue, a2);
        }
        ensureCapacity(this.size + 1);
        K[] kArr = this.keys;
        int i = this.size;
        kArr[i] = k;
        this.values[i] = v;
        insertIntoTableKToV(i, a);
        insertIntoTableVToK(this.size, a2);
        setSucceeds(this.lastInInsertionOrder, this.size);
        setSucceeds(this.size, -2);
        this.size++;
        this.modCount++;
        return null;
    }

    public K putInverse(V v, K k, boolean z) {
        int a = C4980f0.m24726a(v);
        int findEntryByValue = findEntryByValue(v, a);
        if (findEntryByValue != -1) {
            K k2 = this.keys[findEntryByValue];
            if (C4928k.m24808a(k2, k)) {
                return k;
            }
            replaceKeyInEntry(findEntryByValue, k, z);
            return k2;
        }
        int i = this.lastInInsertionOrder;
        int a2 = C4980f0.m24726a(k);
        int findEntryByKey = findEntryByKey(k, a2);
        if (!z) {
            C4933n.m24782a(findEntryByKey == -1, "Key already present: %s", k);
        } else if (findEntryByKey != -1) {
            i = this.prevInInsertionOrder[findEntryByKey];
            removeEntryKeyHashKnown(findEntryByKey, a2);
        }
        ensureCapacity(this.size + 1);
        K[] kArr = this.keys;
        int i2 = this.size;
        kArr[i2] = k;
        this.values[i2] = v;
        insertIntoTableKToV(i2, a2);
        insertIntoTableVToK(this.size, a);
        int i3 = i == -2 ? this.firstInInsertionOrder : this.nextInInsertionOrder[i];
        setSucceeds(i, this.size);
        setSucceeds(this.size, i3);
        this.size++;
        this.modCount++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        int a = C4980f0.m24726a(obj);
        int findEntryByKey = findEntryByKey(obj, a);
        if (findEntryByKey == -1) {
            return null;
        }
        V v = this.values[findEntryByKey];
        removeEntryKeyHashKnown(findEntryByKey, a);
        return v;
    }

    public void removeEntry(int i) {
        removeEntryKeyHashKnown(i, C4980f0.m24726a(this.keys[i]));
    }

    public void removeEntryKeyHashKnown(int i, int i2) {
        removeEntry(i, i2, C4980f0.m24726a(this.values[i]));
    }

    public void removeEntryValueHashKnown(int i, int i2) {
        removeEntry(i, C4980f0.m24726a(this.keys[i]), i2);
    }

    public K removeInverse(Object obj) {
        int a = C4980f0.m24726a(obj);
        int findEntryByValue = findEntryByValue(obj, a);
        if (findEntryByValue == -1) {
            return null;
        }
        K k = this.keys[findEntryByValue];
        removeEntryValueHashKnown(findEntryByValue, a);
        return k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractMap, java.util.Map, p131c.p161d.p266c.p269c.AbstractC4999k
    public Set<V> values() {
        Set<V> set = this.valueSet;
        Set<V> set2 = set;
        if (set == null) {
            set2 = new C7460f();
            this.valueSet = set2;
        }
        return set2;
    }
}
