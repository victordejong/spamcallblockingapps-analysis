package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.upstream.Allocation;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/SampleQueue$AllocationNode.class */
public final class SampleQueue$AllocationNode {
    public Allocation allocation;
    public final long endPosition;
    public SampleQueue$AllocationNode next;
    public final long startPosition;
    public boolean wasInitialized;

    public SampleQueue$AllocationNode(long j, int i) {
        this.startPosition = j;
        this.endPosition = j + i;
    }

    public SampleQueue$AllocationNode clear() {
        this.allocation = null;
        SampleQueue$AllocationNode sampleQueue$AllocationNode = this.next;
        this.next = null;
        return sampleQueue$AllocationNode;
    }

    public void initialize(Allocation allocation, SampleQueue$AllocationNode sampleQueue$AllocationNode) {
        this.allocation = allocation;
        this.next = sampleQueue$AllocationNode;
        this.wasInitialized = true;
    }

    public int translateOffset(long j) {
        return ((int) (j - this.startPosition)) + this.allocation.offset;
    }
}
