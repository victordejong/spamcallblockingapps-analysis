package com.google.android.exoplayer2.upstream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Allocator.class */
public interface Allocator {
    Allocation allocate();

    int getIndividualAllocationLength();

    int getTotalBytesAllocated();

    void release(Allocation allocation);

    void release(Allocation[] allocationArr);

    void trim();
}
