package com.google.common.collect;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4960b;
import p131c.p161d.p266c.p269c.C4980f0;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap.class */
public class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final int DEFAULT_SIZE = 3;
    public static final long HASH_MASK = -4294967296L;
    public static final float LOAD_FACTOR = 1.0f;
    public static final long NEXT_MASK = 4294967295L;
    public static final int UNSET = -1;
    public transient long[] entries;
    public transient Set<Map.Entry<K, V>> entrySetView;
    public transient Set<K> keySetView;
    public transient Object[] keys;
    public transient int modCount;
    public transient int size;
    public transient int[] table;
    public transient Object[] values;
    public transient Collection<V> valuesView;

    /* renamed from: com.google.common.collect.CompactHashMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap$a.class */
    public class C7432a extends CompactHashMap<K, V>.AbstractC7436e<K> {
        public C7432a() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.AbstractC7436e
        /* renamed from: a */
        public K mo8422a(int i) {
            return (K) CompactHashMap.this.keys[i];
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap$b.class */
    public class C7433b extends CompactHashMap<K, V>.AbstractC7436e<Map.Entry<K, V>> {
        public C7433b() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.AbstractC7436e
        /* renamed from: a */
        public Map.Entry<K, V> mo8422a(int i) {
            return new C7438g(i);
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap$c.class */
    public class C7434c extends CompactHashMap<K, V>.AbstractC7436e<V> {
        public C7434c() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.AbstractC7436e
        /* renamed from: a */
        public V mo8422a(int i) {
            return (V) CompactHashMap.this.values[i];
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap$d.class */
    public class C7435d extends AbstractSet<Map.Entry<K, V>> {
        public C7435d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int indexOf = CompactHashMap.this.indexOf(entry.getKey());
                z = false;
                if (indexOf != -1) {
                    z = false;
                    if (C4928k.m24808a(CompactHashMap.this.values[indexOf], entry.getValue())) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return CompactHashMap.this.entrySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int indexOf = CompactHashMap.this.indexOf(entry.getKey());
            if (indexOf == -1 || !C4928k.m24808a(CompactHashMap.this.values[indexOf], entry.getValue())) {
                return false;
            }
            CompactHashMap.this.removeEntry(indexOf);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size;
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap$e.class */
    public abstract class AbstractC7436e<T> implements Iterator<T> {

        /* renamed from: a */
        public int f30480a;

        /* renamed from: b */
        public int f30481b;

        /* renamed from: c */
        public int f30482c;

        public AbstractC7436e() {
            CompactHashMap compactHashMap = CompactHashMap.this;
            this.f30480a = compactHashMap.modCount;
            this.f30481b = compactHashMap.firstEntryIndex();
            this.f30482c = -1;
        }

        public /* synthetic */ AbstractC7436e(CompactHashMap compactHashMap, C7432a aVar) {
            this();
        }

        /* renamed from: a */
        public abstract T mo8422a(int i);

        /* renamed from: a */
        public final void m8423a() {
            if (CompactHashMap.this.modCount != this.f30480a) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30481b >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            m8423a();
            if (hasNext()) {
                int i = this.f30481b;
                this.f30482c = i;
                T a = mo8422a(i);
                this.f30481b = CompactHashMap.this.getSuccessor(this.f30481b);
                return a;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            m8423a();
            C5006n.m24660a(this.f30482c >= 0);
            this.f30480a++;
            CompactHashMap.this.removeEntry(this.f30482c);
            this.f30481b = CompactHashMap.this.adjustAfterRemove(this.f30481b, this.f30482c);
            this.f30482c = -1;
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap$f.class */
    public class C7437f extends AbstractSet<K> {
        public C7437f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return CompactHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return CompactHashMap.this.keySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int indexOf = CompactHashMap.this.indexOf(obj);
            if (indexOf == -1) {
                return false;
            }
            CompactHashMap.this.removeEntry(indexOf);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size;
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap$g.class */
    public final class C7438g extends AbstractC4960b<K, V> {

        /* renamed from: a */
        public final K f30485a;

        /* renamed from: b */
        public int f30486b;

        public C7438g(int i) {
            this.f30485a = (K) CompactHashMap.this.keys[i];
            this.f30486b = i;
        }

        /* renamed from: a */
        public final void m8421a() {
            int i = this.f30486b;
            if (i == -1 || i >= CompactHashMap.this.size() || !C4928k.m24808a(this.f30485a, CompactHashMap.this.keys[this.f30486b])) {
                this.f30486b = CompactHashMap.this.indexOf(this.f30485a);
            }
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public K getKey() {
            return this.f30485a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V getValue() {
            m8421a();
            int i = this.f30486b;
            return i == -1 ? null : (V) CompactHashMap.this.values[i];
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V setValue(V v) {
            m8421a();
            int i = this.f30486b;
            if (i == -1) {
                CompactHashMap.this.put(this.f30485a, v);
                return null;
            }
            Object[] objArr = CompactHashMap.this.values;
            V v2 = (V) objArr[i];
            objArr[i] = v;
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashMap$h.class */
    public class C7439h extends AbstractCollection<V> {
        public C7439h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return CompactHashMap.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return CompactHashMap.this.size;
        }
    }

    public CompactHashMap() {
        init(3);
    }

    public CompactHashMap(int i) {
        init(i);
    }

    public static <K, V> CompactHashMap<K, V> create() {
        return new CompactHashMap<>();
    }

    public static <K, V> CompactHashMap<K, V> createWithExpectedSize(int i) {
        return new CompactHashMap<>(i);
    }

    public static int getHash(long j) {
        return (int) (j >>> 32);
    }

    public static int getNext(long j) {
        return (int) j;
    }

    private int hashTableMask() {
        return this.table.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int indexOf(Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int a = C4980f0.m24726a(obj);
        int i = this.table[hashTableMask() & a];
        while (i != -1) {
            long j = this.entries[i];
            if (getHash(j) == a && C4928k.m24808a(obj, this.keys[i])) {
                return i;
            }
            i = getNext(j);
        }
        return -1;
    }

    public static long[] newEntries(int i) {
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    public static int[] newTable(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            init(readInt);
            for (int i = 0; i < readInt; i++) {
                put(objectInputStream.readObject(), objectInputStream.readObject());
            }
            return;
        }
        throw new InvalidObjectException("Invalid size: " + readInt);
    }

    private V remove(Object obj, int i) {
        int hashTableMask = hashTableMask() & i;
        int i2 = this.table[hashTableMask];
        if (i2 == -1) {
            return null;
        }
        int i3 = -1;
        while (true) {
            if (getHash(this.entries[i2]) != i || !C4928k.m24808a(obj, this.keys[i2])) {
                int next = getNext(this.entries[i2]);
                if (next == -1) {
                    return null;
                }
                i3 = i2;
                i2 = next;
            } else {
                V v = (V) this.values[i2];
                if (i3 == -1) {
                    this.table[hashTableMask] = getNext(this.entries[i2]);
                } else {
                    long[] jArr = this.entries;
                    jArr[i3] = swapNext(jArr[i3], getNext(jArr[i2]));
                }
                moveLastEntry(i2);
                this.size--;
                this.modCount++;
                return v;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V removeEntry(int i) {
        return remove(this.keys[i], getHash(this.entries[i]));
    }

    private void resizeMeMaybe(int i) {
        int length = this.entries.length;
        if (i > length) {
            int max = Math.max(1, length >>> 1) + length;
            int i2 = max;
            if (max < 0) {
                i2 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            }
            if (i2 != length) {
                resizeEntries(i2);
            }
        }
    }

    private void resizeTable(int i) {
        int[] newTable = newTable(i);
        long[] jArr = this.entries;
        int length = newTable.length;
        for (int i2 = 0; i2 < this.size; i2++) {
            int hash = getHash(jArr[i2]);
            int i3 = hash & (length - 1);
            int i4 = newTable[i3];
            newTable[i3] = i2;
            jArr[i2] = (hash << 32) | (4294967295L & i4);
        }
        this.table = newTable;
    }

    public static long swapNext(long j, int i) {
        return (j & (-4294967296L)) | (i & 4294967295L);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.size);
        int firstEntryIndex = firstEntryIndex();
        while (firstEntryIndex >= 0) {
            objectOutputStream.writeObject(this.keys[firstEntryIndex]);
            objectOutputStream.writeObject(this.values[firstEntryIndex]);
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
    }

    public void accessEntry(int i) {
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    public void allocArrays() {
        C4933n.m24775b(needsAllocArrays(), "Arrays already allocated");
        int i = this.modCount;
        this.table = newTable(C4980f0.m24728a(i, 1.0d));
        this.entries = newEntries(i);
        this.keys = new Object[i];
        this.values = new Object[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (!needsAllocArrays()) {
            this.modCount++;
            Arrays.fill(this.keys, 0, this.size, (Object) null);
            Arrays.fill(this.values, 0, this.size, (Object) null);
            Arrays.fill(this.table, -1);
            Arrays.fill(this.entries, 0, this.size, -1L);
            this.size = 0;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        for (int i = 0; i < this.size; i++) {
            if (C4928k.m24808a(obj, this.values[i])) {
                return true;
            }
        }
        return false;
    }

    public Set<Map.Entry<K, V>> createEntrySet() {
        return new C7435d();
    }

    public Set<K> createKeySet() {
        return new C7437f();
    }

    public Collection<V> createValues() {
        return new C7439h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySetView;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = createEntrySet();
            this.entrySetView = set2;
        }
        return set2;
    }

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        return new C7433b();
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int indexOf = indexOf(obj);
        accessEntry(indexOf);
        return indexOf == -1 ? null : (V) this.values[indexOf];
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 >= this.size) {
            i2 = -1;
        }
        return i2;
    }

    public void init(int i) {
        C4933n.m24790a(i >= 0, "Expected size must be non-negative");
        this.modCount = Math.max(1, i);
    }

    public void insertEntry(int i, K k, V v, int i2) {
        this.entries[i] = (i2 << 32) | 4294967295L;
        this.keys[i] = k;
        this.values[i] = v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySetView;
        Set<K> set2 = set;
        if (set == null) {
            set2 = createKeySet();
            this.keySetView = set2;
        }
        return set2;
    }

    public Iterator<K> keySetIterator() {
        return new C7432a();
    }

    public void moveLastEntry(int i) {
        int size = size() - 1;
        if (i < size) {
            Object[] objArr = this.keys;
            objArr[i] = objArr[size];
            Object[] objArr2 = this.values;
            objArr2[i] = objArr2[size];
            objArr[size] = null;
            objArr2[size] = null;
            long[] jArr = this.entries;
            long j = jArr[size];
            jArr[i] = j;
            jArr[size] = -1;
            int hash = getHash(j) & hashTableMask();
            int[] iArr = this.table;
            int i2 = iArr[hash];
            int i3 = i2;
            if (i2 == size) {
                iArr[hash] = i;
                return;
            }
            while (true) {
                long j2 = this.entries[i3];
                int next = getNext(j2);
                if (next == size) {
                    this.entries[i3] = swapNext(j2, i);
                    return;
                }
                i3 = next;
            }
        } else {
            this.keys[i] = null;
            this.values[i] = null;
            this.entries[i] = -1;
        }
    }

    public boolean needsAllocArrays() {
        return this.table == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        long[] jArr = this.entries;
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        int a = C4980f0.m24726a(k);
        int hashTableMask = hashTableMask() & a;
        int i = this.size;
        int[] iArr = this.table;
        int i2 = iArr[hashTableMask];
        int i3 = i2;
        if (i2 == -1) {
            iArr[hashTableMask] = i;
        } else {
            while (true) {
                long j = jArr[i3];
                if (getHash(j) != a || !C4928k.m24808a(k, objArr[i3])) {
                    int next = getNext(j);
                    if (next == -1) {
                        jArr[i3] = swapNext(j, i);
                        break;
                    }
                    i3 = next;
                } else {
                    V v2 = (V) objArr2[i3];
                    objArr2[i3] = v;
                    accessEntry(i3);
                    return v2;
                }
            }
        }
        if (i != Integer.MAX_VALUE) {
            int i4 = i + 1;
            resizeMeMaybe(i4);
            insertEntry(i, k, v, a);
            this.size = i4;
            int length = this.table.length;
            if (C4980f0.m24727a(i, length, 1.0d)) {
                resizeTable(length * 2);
            }
            this.modCount++;
            return null;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (needsAllocArrays()) {
            return null;
        }
        return remove(obj, C4980f0.m24726a(obj));
    }

    public void resizeEntries(int i) {
        this.keys = Arrays.copyOf(this.keys, i);
        this.values = Arrays.copyOf(this.values, i);
        long[] jArr = this.entries;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(copyOf, length, i, -1L);
        }
        this.entries = copyOf;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public void trimToSize() {
        if (!needsAllocArrays()) {
            int i = this.size;
            if (i < this.entries.length) {
                resizeEntries(i);
            }
            int a = C4980f0.m24728a(i, 1.0d);
            if (a < this.table.length) {
                resizeTable(a);
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.valuesView;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = createValues();
            this.valuesView = collection2;
        }
        return collection2;
    }

    public Iterator<V> valuesIterator() {
        return new C7434c();
    }
}
