package com.google.common.collect;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.C4980f0;
import p131c.p161d.p266c.p269c.C5000k0;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashSet.class */
public class CompactHashSet<E> extends AbstractSet<E> implements Serializable {
    public static final int DEFAULT_SIZE = 3;
    public static final long HASH_MASK = -4294967296L;
    public static final float LOAD_FACTOR = 1.0f;
    public static final long NEXT_MASK = 4294967295L;
    public static final int UNSET = -1;
    public transient Object[] elements;
    public transient long[] entries;
    public transient int modCount;
    public transient int size;
    public transient int[] table;

    /* renamed from: com.google.common.collect.CompactHashSet$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactHashSet$a.class */
    public class C7440a implements Iterator<E> {

        /* renamed from: a */
        public int f30489a;

        /* renamed from: b */
        public int f30490b;

        /* renamed from: c */
        public int f30491c = -1;

        public C7440a() {
            CompactHashSet compactHashSet = CompactHashSet.this;
            this.f30489a = compactHashSet.modCount;
            this.f30490b = compactHashSet.firstEntryIndex();
        }

        /* renamed from: a */
        public final void m8420a() {
            if (CompactHashSet.this.modCount != this.f30489a) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30490b >= 0;
        }

        @Override // java.util.Iterator
        public E next() {
            m8420a();
            if (hasNext()) {
                int i = this.f30490b;
                this.f30491c = i;
                CompactHashSet compactHashSet = CompactHashSet.this;
                E e = (E) compactHashSet.elements[i];
                this.f30490b = compactHashSet.getSuccessor(i);
                return e;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            m8420a();
            C5006n.m24660a(this.f30491c >= 0);
            this.f30489a++;
            CompactHashSet compactHashSet = CompactHashSet.this;
            compactHashSet.remove(compactHashSet.elements[this.f30491c], CompactHashSet.getHash(compactHashSet.entries[this.f30491c]));
            this.f30490b = CompactHashSet.this.adjustAfterRemove(this.f30490b, this.f30491c);
            this.f30491c = -1;
        }
    }

    public CompactHashSet() {
        init(3);
    }

    public CompactHashSet(int i) {
        init(i);
    }

    public static <E> CompactHashSet<E> create() {
        return new CompactHashSet<>();
    }

    public static <E> CompactHashSet<E> create(Collection<? extends E> collection) {
        CompactHashSet<E> createWithExpectedSize = createWithExpectedSize(collection.size());
        createWithExpectedSize.addAll(collection);
        return createWithExpectedSize;
    }

    public static <E> CompactHashSet<E> create(E... eArr) {
        CompactHashSet<E> createWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(createWithExpectedSize, eArr);
        return createWithExpectedSize;
    }

    public static <E> CompactHashSet<E> createWithExpectedSize(int i) {
        return new CompactHashSet<>(i);
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
                add(objectInputStream.readObject());
            }
            return;
        }
        throw new InvalidObjectException("Invalid size: " + readInt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean remove(Object obj, int i) {
        int hashTableMask = hashTableMask() & i;
        int i2 = this.table[hashTableMask];
        if (i2 == -1) {
            return false;
        }
        int i3 = -1;
        while (true) {
            if (getHash(this.entries[i2]) != i || !C4928k.m24808a(obj, this.elements[i2])) {
                int next = getNext(this.entries[i2]);
                if (next == -1) {
                    return false;
                }
                i3 = i2;
                i2 = next;
            } else {
                if (i3 == -1) {
                    this.table[hashTableMask] = getNext(this.entries[i2]);
                } else {
                    long[] jArr = this.entries;
                    jArr[i3] = swapNext(jArr[i3], getNext(jArr[i2]));
                }
                moveLastEntry(i2);
                this.size--;
                this.modCount++;
                return true;
            }
        }
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
            objectOutputStream.writeObject(this.elements[firstEntryIndex]);
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        long[] jArr = this.entries;
        Object[] objArr = this.elements;
        int a = C4980f0.m24726a(e);
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
                if (getHash(j) == a && C4928k.m24808a(e, objArr[i3])) {
                    return false;
                }
                int next = getNext(j);
                if (next == -1) {
                    jArr[i3] = swapNext(j, i);
                    break;
                }
                i3 = next;
            }
        }
        if (i != Integer.MAX_VALUE) {
            int i4 = i + 1;
            resizeMeMaybe(i4);
            insertEntry(i, e, a);
            this.size = i4;
            int length = this.table.length;
            if (C4980f0.m24727a(i, length, 1.0d)) {
                resizeTable(length * 2);
            }
            this.modCount++;
            return true;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    public void allocArrays() {
        C4933n.m24775b(needsAllocArrays(), "Arrays already allocated");
        int i = this.modCount;
        this.table = newTable(C4980f0.m24728a(i, 1.0d));
        this.entries = newEntries(i);
        this.elements = new Object[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (!needsAllocArrays()) {
            this.modCount++;
            Arrays.fill(this.elements, 0, this.size, (Object) null);
            Arrays.fill(this.table, -1);
            Arrays.fill(this.entries, 0, this.size, -1L);
            this.size = 0;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        int a = C4980f0.m24726a(obj);
        int i = this.table[hashTableMask() & a];
        while (i != -1) {
            long j = this.entries[i];
            if (getHash(j) == a && C4928k.m24808a(obj, this.elements[i])) {
                return true;
            }
            i = getNext(j);
        }
        return false;
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 >= this.size) {
            i2 = -1;
        }
        return i2;
    }

    public void init(int i) {
        C4933n.m24790a(i >= 0, "Initial capacity must be non-negative");
        this.modCount = Math.max(1, i);
    }

    public void insertEntry(int i, E e, int i2) {
        this.entries[i] = (i2 << 32) | 4294967295L;
        this.elements[i] = e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new C7440a();
    }

    public void moveLastEntry(int i) {
        int size = size() - 1;
        if (i < size) {
            Object[] objArr = this.elements;
            objArr[i] = objArr[size];
            objArr[size] = null;
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
            this.elements[i] = null;
            this.entries[i] = -1;
        }
    }

    public boolean needsAllocArrays() {
        return this.table == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        return remove(obj, C4980f0.m24726a(obj));
    }

    public void resizeEntries(int i) {
        this.elements = Arrays.copyOf(this.elements, i);
        long[] jArr = this.entries;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(copyOf, length, i, -1L);
        }
        this.entries = copyOf;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return needsAllocArrays() ? new Object[0] : Arrays.copyOf(this.elements, this.size);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (!needsAllocArrays()) {
            return (T[]) C5000k0.m24704a(this.elements, 0, this.size, tArr);
        }
        if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
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
}
