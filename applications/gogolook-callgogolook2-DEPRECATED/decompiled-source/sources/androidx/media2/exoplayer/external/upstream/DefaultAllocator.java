package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DefaultAllocator.class */
public final class DefaultAllocator implements Allocator {
    public static final int AVAILABLE_EXTRA_CAPACITY = 100;
    public int allocatedCount;
    public Allocation[] availableAllocations;
    public int availableCount;
    public final int individualAllocationSize;
    public final byte[] initialAllocationBlock;
    public final Allocation[] singleAllocationReleaseHolder;
    public int targetBufferSize;
    public final boolean trimOnReset;

    public DefaultAllocator(boolean z, int i) {
        this(z, i, 0);
    }

    public DefaultAllocator(boolean z, int i, int i2) {
        Assertions.checkArgument(i > 0);
        Assertions.checkArgument(i2 >= 0);
        this.trimOnReset = z;
        this.individualAllocationSize = i;
        this.availableCount = i2;
        this.availableAllocations = new Allocation[i2 + 100];
        if (i2 > 0) {
            this.initialAllocationBlock = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.availableAllocations[i3] = new Allocation(this.initialAllocationBlock, i3 * i);
            }
        } else {
            this.initialAllocationBlock = null;
        }
        this.singleAllocationReleaseHolder = new Allocation[1];
    }

    @Override // androidx.media2.exoplayer.external.upstream.Allocator
    public Allocation allocate() {
        Allocation allocation;
        synchronized (this) {
            this.allocatedCount++;
            if (this.availableCount > 0) {
                Allocation[] allocationArr = this.availableAllocations;
                int i = this.availableCount - 1;
                this.availableCount = i;
                allocation = allocationArr[i];
                this.availableAllocations[this.availableCount] = null;
            } else {
                allocation = new Allocation(new byte[this.individualAllocationSize], 0);
            }
        }
        return allocation;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Allocator
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Allocator
    public int getTotalBytesAllocated() {
        int i;
        int i2;
        synchronized (this) {
            i = this.allocatedCount;
            i2 = this.individualAllocationSize;
        }
        return i * i2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Allocator
    public void release(Allocation allocation) {
        synchronized (this) {
            this.singleAllocationReleaseHolder[0] = allocation;
            release(this.singleAllocationReleaseHolder);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.Allocator
    public void release(Allocation[] allocationArr) {
        synchronized (this) {
            if (this.availableCount + allocationArr.length >= this.availableAllocations.length) {
                this.availableAllocations = (Allocation[]) Arrays.copyOf(this.availableAllocations, Math.max(this.availableAllocations.length * 2, this.availableCount + allocationArr.length));
            }
            for (Allocation allocation : allocationArr) {
                Allocation[] allocationArr2 = this.availableAllocations;
                int i = this.availableCount;
                this.availableCount = i + 1;
                allocationArr2[i] = allocation;
            }
            this.allocatedCount -= allocationArr.length;
            notifyAll();
        }
    }

    public void reset() {
        synchronized (this) {
            if (this.trimOnReset) {
                setTargetBufferSize(0);
            }
        }
    }

    public void setTargetBufferSize(int i) {
        synchronized (this) {
            boolean z = i < this.targetBufferSize;
            this.targetBufferSize = i;
            if (z) {
                trim();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.Allocator
    public void trim() {
        synchronized (this) {
            int i = 0;
            int max = Math.max(0, Util.ceilDivide(this.targetBufferSize, this.individualAllocationSize) - this.allocatedCount);
            if (max < this.availableCount) {
                int i2 = max;
                if (this.initialAllocationBlock != null) {
                    int i3 = this.availableCount - 1;
                    while (i <= i3) {
                        Allocation allocation = this.availableAllocations[i];
                        if (allocation.data == this.initialAllocationBlock) {
                            i++;
                        } else {
                            Allocation allocation2 = this.availableAllocations[i3];
                            if (allocation2.data != this.initialAllocationBlock) {
                                i3--;
                            } else {
                                this.availableAllocations[i] = allocation2;
                                this.availableAllocations[i3] = allocation;
                                i3--;
                                i++;
                            }
                        }
                    }
                    int max2 = Math.max(max, i);
                    i2 = max2;
                    if (max2 >= this.availableCount) {
                        return;
                    }
                }
                Arrays.fill(this.availableAllocations, i2, this.availableCount, (Object) null);
                this.availableCount = i2;
            }
        }
    }
}
