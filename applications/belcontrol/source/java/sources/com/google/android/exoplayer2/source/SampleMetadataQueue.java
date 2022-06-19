package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/SampleMetadataQueue.class */
public final class SampleMetadataQueue {
    private static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    private int absoluteFirstIndex;
    private int length;
    private int readPosition;
    private int relativeFirstIndex;
    private Format upstreamFormat;
    private int upstreamSourceId;
    private int capacity = 1000;
    private int[] sourceIds = new int[1000];
    private long[] offsets = new long[1000];
    private long[] timesUs = new long[1000];
    private int[] flags = new int[1000];
    private int[] sizes = new int[1000];
    private TrackOutput.CryptoData[] cryptoDatas = new TrackOutput.CryptoData[1000];
    private Format[] formats = new Format[1000];
    private long largestDiscardedTimestampUs = Long.MIN_VALUE;
    private long largestQueuedTimestampUs = Long.MIN_VALUE;
    private boolean upstreamFormatRequired = true;
    private boolean upstreamKeyframeRequired = true;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder.class */
    public static final class SampleExtrasHolder {
        public TrackOutput.CryptoData cryptoData;
        public long offset;
        public int size;
    }

    private long discardSamples(int i) {
        int i2;
        this.largestDiscardedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i));
        int i3 = this.length - i;
        this.length = i3;
        this.absoluteFirstIndex += i;
        int i4 = this.relativeFirstIndex + i;
        this.relativeFirstIndex = i4;
        int i5 = this.capacity;
        if (i4 >= i5) {
            this.relativeFirstIndex = i4 - i5;
        }
        int i6 = this.readPosition - i;
        this.readPosition = i6;
        if (i6 < 0) {
            this.readPosition = 0;
        }
        if (i3 == 0) {
            int i7 = this.relativeFirstIndex;
            if (i7 == 0) {
                i7 = i5;
            }
            return this.offsets[i7 - 1] + this.sizes[i2];
        }
        return this.offsets[this.relativeFirstIndex];
    }

    private int findSampleBefore(int i, int i2, long j, boolean z) {
        int i3 = -1;
        int i4 = i;
        for (int i5 = 0; i5 < i2 && this.timesUs[i4] <= j; i5++) {
            if (!z || (this.flags[i4] & 1) != 0) {
                i3 = i5;
            }
            int i6 = i4 + 1;
            i4 = i6;
            if (i6 == this.capacity) {
                i4 = 0;
            }
        }
        return i3;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    private long getLargestTimestamp(int i) {
        char c;
        char c2 = 0;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int relativeIndex = getRelativeIndex(i - 1);
        int i2 = 0;
        while (true) {
            c = c2;
            if (i2 >= i) {
                break;
            }
            c2 = Math.max((long) c2, this.timesUs[relativeIndex]);
            if ((this.flags[relativeIndex] & 1) != 0) {
                c = c2;
                break;
            }
            int i3 = relativeIndex - 1;
            relativeIndex = i3;
            if (i3 == -1) {
                relativeIndex = this.capacity - 1;
            }
            i2++;
        }
        return c;
    }

    private int getRelativeIndex(int i) {
        int i2 = this.relativeFirstIndex + i;
        int i3 = this.capacity;
        if (i2 >= i3) {
            i2 -= i3;
        }
        return i2;
    }

    public int advanceTo(long j, boolean z, boolean z2) {
        synchronized (this) {
            int relativeIndex = getRelativeIndex(this.readPosition);
            if (!hasNextSample() || j < this.timesUs[relativeIndex] || (j > this.largestQueuedTimestampUs && !z2)) {
                return -1;
            }
            int findSampleBefore = findSampleBefore(relativeIndex, this.length - this.readPosition, j, z);
            if (findSampleBefore == -1) {
                return -1;
            }
            this.readPosition += findSampleBefore;
            return findSampleBefore;
        }
    }

    public int advanceToEnd() {
        int i;
        int i2;
        synchronized (this) {
            i = this.length;
            i2 = this.readPosition;
            this.readPosition = i;
        }
        return i - i2;
    }

    public boolean attemptSplice(long j) {
        synchronized (this) {
            boolean z = false;
            if (this.length == 0) {
                if (j > this.largestDiscardedTimestampUs) {
                    z = true;
                }
                return z;
            } else if (Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.readPosition)) >= j) {
                return false;
            } else {
                int i = this.length;
                int relativeIndex = getRelativeIndex(i - 1);
                while (i > this.readPosition && this.timesUs[relativeIndex] >= j) {
                    int i2 = i - 1;
                    int i3 = relativeIndex - 1;
                    i = i2;
                    relativeIndex = i3;
                    if (i3 == -1) {
                        relativeIndex = this.capacity - 1;
                        i = i2;
                    }
                }
                discardUpstreamSamples(this.absoluteFirstIndex + i);
                return true;
            }
        }
    }

    public void commitSample(long j, int i, long j2, int i2, TrackOutput.CryptoData cryptoData) {
        synchronized (this) {
            if (this.upstreamKeyframeRequired) {
                if ((i & 1) == 0) {
                    return;
                }
                this.upstreamKeyframeRequired = false;
            }
            Assertions.checkState(!this.upstreamFormatRequired);
            commitSampleTimestamp(j);
            int relativeIndex = getRelativeIndex(this.length);
            this.timesUs[relativeIndex] = j;
            long[] jArr = this.offsets;
            jArr[relativeIndex] = j2;
            this.sizes[relativeIndex] = i2;
            this.flags[relativeIndex] = i;
            this.cryptoDatas[relativeIndex] = cryptoData;
            this.formats[relativeIndex] = this.upstreamFormat;
            this.sourceIds[relativeIndex] = this.upstreamSourceId;
            int i3 = this.length + 1;
            this.length = i3;
            int i4 = this.capacity;
            if (i3 == i4) {
                int i5 = i4 + 1000;
                int[] iArr = new int[i5];
                long[] jArr2 = new long[i5];
                long[] jArr3 = new long[i5];
                int[] iArr2 = new int[i5];
                int[] iArr3 = new int[i5];
                TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i5];
                Format[] formatArr = new Format[i5];
                int i6 = this.relativeFirstIndex;
                int i7 = i4 - i6;
                System.arraycopy(jArr, i6, jArr2, 0, i7);
                System.arraycopy(this.timesUs, this.relativeFirstIndex, jArr3, 0, i7);
                System.arraycopy(this.flags, this.relativeFirstIndex, iArr2, 0, i7);
                System.arraycopy(this.sizes, this.relativeFirstIndex, iArr3, 0, i7);
                System.arraycopy(this.cryptoDatas, this.relativeFirstIndex, cryptoDataArr, 0, i7);
                System.arraycopy(this.formats, this.relativeFirstIndex, formatArr, 0, i7);
                System.arraycopy(this.sourceIds, this.relativeFirstIndex, iArr, 0, i7);
                int i8 = this.relativeFirstIndex;
                System.arraycopy(this.offsets, 0, jArr2, i7, i8);
                System.arraycopy(this.timesUs, 0, jArr3, i7, i8);
                System.arraycopy(this.flags, 0, iArr2, i7, i8);
                System.arraycopy(this.sizes, 0, iArr3, i7, i8);
                System.arraycopy(this.cryptoDatas, 0, cryptoDataArr, i7, i8);
                System.arraycopy(this.formats, 0, formatArr, i7, i8);
                System.arraycopy(this.sourceIds, 0, iArr, i7, i8);
                this.offsets = jArr2;
                this.timesUs = jArr3;
                this.flags = iArr2;
                this.sizes = iArr3;
                this.cryptoDatas = cryptoDataArr;
                this.formats = formatArr;
                this.sourceIds = iArr;
                this.relativeFirstIndex = 0;
                this.length = this.capacity;
                this.capacity = i5;
            }
        }
    }

    public void commitSampleTimestamp(long j) {
        synchronized (this) {
            this.largestQueuedTimestampUs = Math.max(this.largestQueuedTimestampUs, j);
        }
    }

    public long discardTo(long j, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.length;
            if (i != 0) {
                long[] jArr = this.timesUs;
                int i2 = this.relativeFirstIndex;
                if (j >= jArr[i2]) {
                    int i3 = i;
                    if (z2) {
                        int i4 = this.readPosition;
                        i3 = i;
                        if (i4 != i) {
                            i3 = i4 + 1;
                        }
                    }
                    int findSampleBefore = findSampleBefore(i2, i3, j, z);
                    if (findSampleBefore == -1) {
                        return -1L;
                    }
                    return discardSamples(findSampleBefore);
                }
            }
            return -1L;
        }
    }

    public long discardToEnd() {
        synchronized (this) {
            int i = this.length;
            if (i == 0) {
                return -1L;
            }
            return discardSamples(i);
        }
    }

    public long discardToRead() {
        synchronized (this) {
            int i = this.readPosition;
            if (i == 0) {
                return -1L;
            }
            return discardSamples(i);
        }
    }

    public long discardUpstreamSamples(int i) {
        int writeIndex = getWriteIndex() - i;
        Assertions.checkArgument(writeIndex >= 0 && writeIndex <= this.length - this.readPosition);
        int i2 = this.length - writeIndex;
        this.length = i2;
        this.largestQueuedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i2));
        int i3 = this.length;
        if (i3 == 0) {
            return 0L;
        }
        int relativeIndex = getRelativeIndex(i3 - 1);
        return this.offsets[relativeIndex] + this.sizes[relativeIndex];
    }

    public boolean format(Format format) {
        synchronized (this) {
            if (format == null) {
                this.upstreamFormatRequired = true;
                return false;
            }
            this.upstreamFormatRequired = false;
            if (Util.areEqual(format, this.upstreamFormat)) {
                return false;
            }
            this.upstreamFormat = format;
            return true;
        }
    }

    public int getFirstIndex() {
        return this.absoluteFirstIndex;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9 */
    public long getFirstTimestampUs() {
        char c;
        synchronized (this) {
            c = this.length == 0 ? (char) 0 : this.timesUs[this.relativeFirstIndex];
        }
        return c;
    }

    public long getLargestQueuedTimestampUs() {
        long j;
        synchronized (this) {
            j = this.largestQueuedTimestampUs;
        }
        return j;
    }

    public int getReadIndex() {
        return this.absoluteFirstIndex + this.readPosition;
    }

    public Format getUpstreamFormat() {
        Format format;
        synchronized (this) {
            format = this.upstreamFormatRequired ? null : this.upstreamFormat;
        }
        return format;
    }

    public int getWriteIndex() {
        return this.absoluteFirstIndex + this.length;
    }

    public boolean hasNextSample() {
        boolean z;
        synchronized (this) {
            z = this.readPosition != this.length;
        }
        return z;
    }

    public int peekSourceId() {
        return hasNextSample() ? this.sourceIds[getRelativeIndex(this.readPosition)] : this.upstreamSourceId;
    }

    public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, Format format, SampleExtrasHolder sampleExtrasHolder) {
        synchronized (this) {
            if (!hasNextSample()) {
                if (z2) {
                    decoderInputBuffer.setFlags(4);
                    return -4;
                }
                Format format2 = this.upstreamFormat;
                if (format2 == null || (!z && format2 == format)) {
                    return -3;
                }
                formatHolder.format = format2;
                return -5;
            }
            int relativeIndex = getRelativeIndex(this.readPosition);
            if (!z && this.formats[relativeIndex] == format) {
                if (decoderInputBuffer.isFlagsOnly()) {
                    return -3;
                }
                decoderInputBuffer.timeUs = this.timesUs[relativeIndex];
                decoderInputBuffer.setFlags(this.flags[relativeIndex]);
                sampleExtrasHolder.size = this.sizes[relativeIndex];
                sampleExtrasHolder.offset = this.offsets[relativeIndex];
                sampleExtrasHolder.cryptoData = this.cryptoDatas[relativeIndex];
                this.readPosition++;
                return -4;
            }
            formatHolder.format = this.formats[relativeIndex];
            return -5;
        }
    }

    public void reset(boolean z) {
        this.length = 0;
        this.absoluteFirstIndex = 0;
        this.relativeFirstIndex = 0;
        this.readPosition = 0;
        this.upstreamKeyframeRequired = true;
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        if (z) {
            this.upstreamFormat = null;
            this.upstreamFormatRequired = true;
        }
    }

    public void rewind() {
        synchronized (this) {
            this.readPosition = 0;
        }
    }

    public boolean setReadPosition(int i) {
        boolean z;
        synchronized (this) {
            int i2 = this.absoluteFirstIndex;
            if (i2 > i || i > this.length + i2) {
                z = false;
            } else {
                this.readPosition = i - i2;
                z = true;
            }
        }
        return z;
    }

    public void sourceId(int i) {
        this.upstreamSourceId = i;
    }
}
