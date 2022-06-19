package com.google.common.collect;

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
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/CompactHashMap.class */
public class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Object NOT_FOUND = new Object();
    public transient int[] entries;
    public transient Set<Map.Entry<K, V>> entrySetView;
    public transient Set<K> keySetView;
    public transient Object[] keys;
    public transient int metadata;
    public transient int size;
    public transient Object table;
    public transient Object[] values;
    public transient Collection<V> valuesView;

    /* loaded from: classes3-dex2jar.jar:com/google/common/collect/CompactHashMap$EntrySetView.class */
    public class EntrySetView extends AbstractSet<Map.Entry<K, V>> {
        public EntrySetView() {
            CompactHashMap.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return delegateOrNull.entrySet().contains(obj);
            }
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int indexOf = CompactHashMap.this.indexOf(entry.getKey());
                z = false;
                if (indexOf != -1) {
                    z = false;
                    if (C26232y.equal1(CompactHashMap.this.values[indexOf], entry.getValue())) {
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
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return delegateOrNull.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (CompactHashMap.this.needsAllocArrays()) {
                return false;
            }
            int hashTableMask = CompactHashMap.this.hashTableMask();
            Object key = entry.getKey();
            Object value = entry.getValue();
            CompactHashMap compactHashMap = CompactHashMap.this;
            int remove = C26232y.remove(key, value, hashTableMask, compactHashMap.table, compactHashMap.entries, compactHashMap.keys, compactHashMap.values);
            if (remove == -1) {
                return false;
            }
            CompactHashMap.this.moveLastEntry(remove, hashTableMask);
            CompactHashMap compactHashMap2 = CompactHashMap.this;
            compactHashMap2.size--;
            compactHashMap2.incrementModCount();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/collect/CompactHashMap$Itr.class */
    public abstract class Itr<T> implements Iterator<T> {
        public int currentIndex;
        public int expectedMetadata;
        public int indexToRemove = -1;

        public Itr(1 r5) {
            CompactHashMap.this = r4;
            this.expectedMetadata = r4.metadata;
            this.currentIndex = r4.firstEntryIndex();
        }

        public abstract T getOutput(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.currentIndex >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            if (CompactHashMap.this.metadata == this.expectedMetadata) {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i = this.currentIndex;
                this.indexToRemove = i;
                T output = getOutput(i);
                this.currentIndex = CompactHashMap.this.getSuccessor(this.currentIndex);
                return output;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (CompactHashMap.this.metadata == this.expectedMetadata) {
                C26232y.checkState1(this.indexToRemove >= 0, "no calls to next() since the last call to remove()");
                this.expectedMetadata += 32;
                CompactHashMap compactHashMap = CompactHashMap.this;
                compactHashMap.remove(compactHashMap.keys[this.indexToRemove]);
                this.currentIndex = CompactHashMap.this.adjustAfterRemove(this.currentIndex, this.indexToRemove);
                this.indexToRemove = -1;
                return;
            }
            throw new ConcurrentModificationException();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/collect/CompactHashMap$KeySetView.class */
    public class KeySetView extends AbstractSet<K> {
        public KeySetView() {
            CompactHashMap.this = r4;
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
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map<K, V> delegateOrNull = compactHashMap.delegateOrNull();
            return delegateOrNull != null ? delegateOrNull.keySet().iterator() : new 1<>(compactHashMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z;
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                z = delegateOrNull.keySet().remove(obj);
            } else {
                Object removeHelper = CompactHashMap.this.removeHelper(obj);
                Object obj2 = CompactHashMap.NOT_FOUND;
                z = removeHelper != CompactHashMap.NOT_FOUND;
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/collect/CompactHashMap$ValuesView.class */
    public class ValuesView extends AbstractCollection<V> {
        public ValuesView() {
            CompactHashMap.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map<K, V> delegateOrNull = compactHashMap.delegateOrNull();
            return delegateOrNull != null ? delegateOrNull.values().iterator() : new 3<>(compactHashMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    public CompactHashMap() {
        init(3);
    }

    public CompactHashMap(int i) {
        init(i);
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
        throw new InvalidObjectException(C22128a.m8690L1(25, "Invalid size: ", readInt));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> entrySetIterator = entrySetIterator();
        while (entrySetIterator.hasNext()) {
            Map.Entry<K, V> next = entrySetIterator.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    public void accessEntry(int i) {
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    public int allocArrays() {
        C26232y.checkState1(needsAllocArrays(), "Arrays already allocated");
        int i = this.metadata;
        int max = Math.max(i + 1, 2);
        int highestOneBit = Integer.highestOneBit(max);
        int i2 = highestOneBit;
        if (max > ((int) (highestOneBit * 1.0d))) {
            i2 = highestOneBit << 1;
            if (i2 <= 0) {
                i2 = 1073741824;
            }
        }
        int max2 = Math.max(4, i2);
        this.table = C26232y.createTable(max2);
        this.metadata = C26232y.maskCombine(this.metadata, 32 - Integer.numberOfLeadingZeros(max2 - 1), 31);
        this.entries = new int[i];
        this.keys = new Object[i];
        this.values = new Object[i];
        return i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            this.metadata = C26232y.constrainToRange(size(), 3, 1073741823);
            delegateOrNull.clear();
            this.table = null;
            this.size = 0;
            return;
        }
        Arrays.fill(this.keys, 0, this.size, (Object) null);
        Arrays.fill(this.values, 0, this.size, (Object) null);
        Object obj = this.table;
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(this.entries, 0, this.size, 0);
        this.size = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map<K, V> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.containsKey(obj) : indexOf(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.containsValue(obj);
        }
        for (int i = 0; i < this.size; i++) {
            if (C26232y.equal1(obj, this.values[i])) {
                return true;
            }
        }
        return false;
    }

    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> createHashFloodingResistantDelegate = createHashFloodingResistantDelegate(hashTableMask() + 1);
        int firstEntryIndex = firstEntryIndex();
        while (true) {
            int i = firstEntryIndex;
            if (i < 0) {
                this.table = createHashFloodingResistantDelegate;
                this.entries = null;
                this.keys = null;
                this.values = null;
                incrementModCount();
                return createHashFloodingResistantDelegate;
            }
            createHashFloodingResistantDelegate.put((K) this.keys[i], (V) this.values[i]);
            firstEntryIndex = getSuccessor(i);
        }
    }

    public Map<K, V> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    public Map<K, V> delegateOrNull() {
        Object obj = this.table;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySetView;
        EntrySetView entrySetView = set;
        if (set == null) {
            entrySetView = new EntrySetView();
            this.entrySetView = entrySetView;
        }
        return entrySetView;
    }

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        Map<K, V> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.entrySet().iterator() : new 2(this);
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.get(obj);
        }
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return null;
        }
        accessEntry(indexOf);
        return (V) this.values[indexOf];
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 >= this.size) {
            i2 = -1;
        }
        return i2;
    }

    public final int hashTableMask() {
        return (1 << (this.metadata & 31)) - 1;
    }

    public void incrementModCount() {
        this.metadata += 32;
    }

    public final int indexOf(Object obj) {
        int i;
        if (needsAllocArrays()) {
            return -1;
        }
        int smearedHash = C26232y.smearedHash(obj);
        int hashTableMask = hashTableMask();
        int tableGet = C26232y.tableGet(this.table, smearedHash & hashTableMask);
        if (tableGet == 0) {
            return -1;
        }
        int i2 = hashTableMask ^ (-1);
        do {
            int i3 = tableGet - 1;
            int i4 = this.entries[i3];
            if ((i4 & i2) == (smearedHash & i2) && C26232y.equal1(obj, this.keys[i3])) {
                return i3;
            }
            i = i4 & hashTableMask;
            tableGet = i;
        } while (i != 0);
        return -1;
    }

    public void init(int i) {
        C26232y.checkArgument2(i >= 0, "Expected size must be >= 0");
        this.metadata = C26232y.constrainToRange(i, 1, 1073741823);
    }

    public void insertEntry(int i, K k, V v, int i2, int i3) {
        this.entries[i] = C26232y.maskCombine(i2, 0, i3);
        this.keys[i] = k;
        this.values[i] = v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySetView;
        KeySetView keySetView = set;
        if (set == null) {
            keySetView = new KeySetView();
            this.keySetView = keySetView;
        }
        return keySetView;
    }

    public void moveLastEntry(int i, int i2) {
        int i3;
        int[] iArr;
        int i4;
        int size = size() - 1;
        if (i >= size) {
            this.keys[i] = null;
            this.values[i] = null;
            this.entries[i] = 0;
            return;
        }
        Object[] objArr = this.keys;
        Object obj = objArr[size];
        objArr[i] = obj;
        Object[] objArr2 = this.values;
        objArr2[i] = objArr2[size];
        objArr[size] = null;
        objArr2[size] = null;
        int[] iArr2 = this.entries;
        iArr2[i] = iArr2[size];
        iArr2[size] = 0;
        int smearedHash = C26232y.smearedHash(obj) & i2;
        int tableGet = C26232y.tableGet(this.table, smearedHash);
        int i5 = size + 1;
        int i6 = tableGet;
        if (tableGet == i5) {
            C26232y.tableSet(this.table, smearedHash, i + 1);
            return;
        }
        do {
            i3 = i6 - 1;
            iArr = this.entries;
            i4 = iArr[i3];
            i6 = i4 & i2;
        } while (i6 != i5);
        iArr[i3] = C26232y.maskCombine(i4, i + 1, i2);
    }

    public boolean needsAllocArrays() {
        return this.table == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        int i;
        int min;
        int i2;
        int i3;
        if (needsAllocArrays()) {
            allocArrays();
        }
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.put(k, v);
        }
        int[] iArr = this.entries;
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        int i4 = this.size;
        int i5 = i4 + 1;
        int smearedHash = C26232y.smearedHash(k);
        int hashTableMask = hashTableMask();
        int i6 = smearedHash & hashTableMask;
        int tableGet = C26232y.tableGet(this.table, i6);
        if (tableGet != 0) {
            int i7 = hashTableMask ^ (-1);
            int i8 = 0;
            do {
                i2 = tableGet - 1;
                i3 = iArr[i2];
                if ((i3 & i7) == (smearedHash & i7) && C26232y.equal1(k, objArr[i2])) {
                    V v2 = (V) objArr2[i2];
                    objArr2[i2] = v;
                    accessEntry(i2);
                    return v2;
                }
                tableGet = i3 & hashTableMask;
                i8++;
            } while (tableGet != 0);
            if (i8 >= 9) {
                return convertToHashFloodingResistantImplementation().put(k, v);
            }
            if (i5 > hashTableMask) {
                i = resizeTable(hashTableMask, (hashTableMask + 1) * (hashTableMask < 32 ? 4 : 2), smearedHash, i4);
            } else {
                iArr[i2] = C26232y.maskCombine(i3, i5, hashTableMask);
                i = hashTableMask;
            }
        } else if (i5 > hashTableMask) {
            i = resizeTable(hashTableMask, (hashTableMask + 1) * (hashTableMask < 32 ? 4 : 2), smearedHash, i4);
        } else {
            C26232y.tableSet(this.table, i6, i5);
            i = hashTableMask;
        }
        int length = this.entries.length;
        if (i5 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            resizeEntries(min);
        }
        insertEntry(i4, k, v, smearedHash, i);
        this.size = i5;
        incrementModCount();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.remove(obj);
        }
        Object removeHelper = removeHelper(obj);
        Object obj2 = removeHelper;
        if (removeHelper == NOT_FOUND) {
            obj2 = null;
        }
        return (V) obj2;
    }

    public final Object removeHelper(Object obj) {
        int hashTableMask;
        int remove;
        Object obj2 = NOT_FOUND;
        if (!needsAllocArrays() && (remove = C26232y.remove(obj, null, (hashTableMask = hashTableMask()), this.table, this.entries, this.keys, null)) != -1) {
            Object obj3 = this.values[remove];
            moveLastEntry(remove, hashTableMask);
            this.size--;
            incrementModCount();
            return obj3;
        }
        return obj2;
    }

    public void resizeEntries(int i) {
        this.entries = Arrays.copyOf(this.entries, i);
        this.keys = Arrays.copyOf(this.keys, i);
        this.values = Arrays.copyOf(this.values, i);
    }

    public final int resizeTable(int i, int i2, int i3, int i4) {
        Object createTable = C26232y.createTable(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            C26232y.tableSet(createTable, i3 & i5, i4 + 1);
        }
        Object obj = this.table;
        int[] iArr = this.entries;
        for (int i6 = 0; i6 <= i; i6++) {
            int tableGet = C26232y.tableGet(obj, i6);
            while (true) {
                int i7 = tableGet;
                if (i7 != 0) {
                    int i8 = i7 - 1;
                    int i9 = iArr[i8];
                    int i10 = ((i ^ (-1)) & i9) | i6;
                    int i11 = i10 & i5;
                    int tableGet2 = C26232y.tableGet(createTable, i11);
                    C26232y.tableSet(createTable, i11, i7);
                    iArr[i8] = C26232y.maskCombine(i10, tableGet2, i5);
                    tableGet = i9 & i;
                }
            }
        }
        this.table = createTable;
        this.metadata = C26232y.maskCombine(this.metadata, 32 - Integer.numberOfLeadingZeros(i5), 31);
        return i5;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map<K, V> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.size() : this.size;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.valuesView;
        ValuesView valuesView = collection;
        if (collection == null) {
            valuesView = new ValuesView();
            this.valuesView = valuesView;
        }
        return valuesView;
    }
}
