package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsCollectionChangeSet.class */
public class OsCollectionChangeSet implements OrderedCollectionChangeSet, NativeObject {
    public static final int MAX_ARRAY_LENGTH = 2147483639;
    public static final int TYPE_DELETION = 0;
    public static final int TYPE_INSERTION = 1;
    public static final int TYPE_MODIFICATION = 2;
    private static long finalizerPtr = nativeGetFinalizerPtr();
    private final boolean firstAsyncCallback;
    private final long nativePtr;

    public OsCollectionChangeSet(long j, boolean z) {
        this.nativePtr = j;
        this.firstAsyncCallback = z;
        NativeContext.dummyContext.addReference(this);
    }

    private OrderedCollectionChangeSet.Range[] longArrayToRangeArray(int[] iArr) {
        if (iArr == null) {
            return new OrderedCollectionChangeSet.Range[0];
        }
        int length = iArr.length / 2;
        OrderedCollectionChangeSet.Range[] rangeArr = new OrderedCollectionChangeSet.Range[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            rangeArr[i] = new OrderedCollectionChangeSet.Range(iArr[i2], iArr[i2 + 1]);
        }
        return rangeArr;
    }

    private static native long nativeGetFinalizerPtr();

    private static native int[] nativeGetIndices(long j, int i);

    private static native int[] nativeGetRanges(long j, int i);

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getChangeRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 2));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getChanges() {
        return nativeGetIndices(this.nativePtr, 2);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getDeletionRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 0));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getDeletions() {
        return nativeGetIndices(this.nativePtr, 0);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public Throwable getError() {
        return null;
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getInsertionRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 1));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getInsertions() {
        return nativeGetIndices(this.nativePtr, 1);
    }

    public long getNativeFinalizerPtr() {
        return finalizerPtr;
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.State getState() {
        throw new UnsupportedOperationException("This method should be overridden in a subclass");
    }

    public boolean isEmpty() {
        return this.nativePtr == 0;
    }

    public boolean isFirstAsyncCallback() {
        return this.firstAsyncCallback;
    }

    public String toString() {
        if (this.nativePtr == 0) {
            return "Change set is empty.";
        }
        return "Deletion Ranges: " + Arrays.toString(getDeletionRanges()) + "\nInsertion Ranges: " + Arrays.toString(getInsertionRanges()) + "\nChange Ranges: " + Arrays.toString(getChangeRanges());
    }
}
