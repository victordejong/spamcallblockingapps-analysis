package com.google.common.collect;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import p131c.p161d.p266c.p269c.C5000k0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/CompactLinkedHashSet.class */
public class CompactLinkedHashSet<E> extends CompactHashSet<E> {
    public static final int ENDPOINT = -2;
    public transient int firstEntry;
    public transient int lastEntry;
    public transient int[] predecessor;
    public transient int[] successor;

    public CompactLinkedHashSet() {
    }

    public CompactLinkedHashSet(int i) {
        super(i);
    }

    public static <E> CompactLinkedHashSet<E> create() {
        return new CompactLinkedHashSet<>();
    }

    public static <E> CompactLinkedHashSet<E> create(Collection<? extends E> collection) {
        CompactLinkedHashSet<E> createWithExpectedSize = createWithExpectedSize(collection.size());
        createWithExpectedSize.addAll(collection);
        return createWithExpectedSize;
    }

    public static <E> CompactLinkedHashSet<E> create(E... eArr) {
        CompactLinkedHashSet<E> createWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(createWithExpectedSize, eArr);
        return createWithExpectedSize;
    }

    public static <E> CompactLinkedHashSet<E> createWithExpectedSize(int i) {
        return new CompactLinkedHashSet<>(i);
    }

    private int getPredecessor(int i) {
        return this.predecessor[i];
    }

    private void setPredecessor(int i, int i2) {
        this.predecessor[i] = i2;
    }

    private void setSucceeds(int i, int i2) {
        if (i == -2) {
            this.firstEntry = i2;
        } else {
            setSuccessor(i, i2);
        }
        if (i2 == -2) {
            this.lastEntry = i;
        } else {
            setPredecessor(i2, i);
        }
    }

    private void setSuccessor(int i, int i2) {
        this.successor[i] = i2;
    }

    @Override // com.google.common.collect.CompactHashSet
    public int adjustAfterRemove(int i, int i2) {
        int i3 = i;
        if (i >= size()) {
            i3 = i2;
        }
        return i3;
    }

    @Override // com.google.common.collect.CompactHashSet
    public void allocArrays() {
        super.allocArrays();
        int length = this.elements.length;
        int[] iArr = new int[length];
        this.predecessor = iArr;
        this.successor = new int[length];
        Arrays.fill(iArr, -1);
        Arrays.fill(this.successor, -1);
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (!needsAllocArrays()) {
            this.firstEntry = -2;
            this.lastEntry = -2;
            Arrays.fill(this.predecessor, 0, size(), -1);
            Arrays.fill(this.successor, 0, size(), -1);
            super.clear();
        }
    }

    @Override // com.google.common.collect.CompactHashSet
    public int firstEntryIndex() {
        return this.firstEntry;
    }

    @Override // com.google.common.collect.CompactHashSet
    public int getSuccessor(int i) {
        return this.successor[i];
    }

    @Override // com.google.common.collect.CompactHashSet
    public void init(int i) {
        super.init(i);
        this.firstEntry = -2;
        this.lastEntry = -2;
    }

    @Override // com.google.common.collect.CompactHashSet
    public void insertEntry(int i, E e, int i2) {
        super.insertEntry(i, e, i2);
        setSucceeds(this.lastEntry, i);
        setSucceeds(i, -2);
    }

    @Override // com.google.common.collect.CompactHashSet
    public void moveLastEntry(int i) {
        int size = size() - 1;
        super.moveLastEntry(i);
        setSucceeds(getPredecessor(i), getSuccessor(i));
        if (i < size) {
            setSucceeds(getPredecessor(size), i);
            setSucceeds(i, getSuccessor(size));
        }
        this.predecessor[size] = -1;
        this.successor[size] = -1;
    }

    @Override // com.google.common.collect.CompactHashSet
    public void resizeEntries(int i) {
        super.resizeEntries(i);
        int[] iArr = this.predecessor;
        int length = iArr.length;
        this.predecessor = Arrays.copyOf(iArr, i);
        this.successor = Arrays.copyOf(this.successor, i);
        if (length < i) {
            Arrays.fill(this.predecessor, length, i, -1);
            Arrays.fill(this.successor, length, i, -1);
        }
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return C5000k0.m24708a(this);
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) C5000k0.m24707a((Collection<?>) this, (Object[]) tArr);
    }
}
