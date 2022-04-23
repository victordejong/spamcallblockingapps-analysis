package androidx.media2.exoplayer.external.source;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.source.SampleMetadataQueue;
import androidx.media2.exoplayer.external.upstream.Allocation;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SampleQueue.class */
public class SampleQueue implements TrackOutput {
    public static final int ADVANCE_FAILED = -1;
    public static final int INITIAL_SCRATCH_SIZE = 32;
    public final int allocationLength;
    public final Allocator allocator;
    public Format downstreamFormat;
    public AllocationNode firstAllocationNode;
    public Format lastUnadjustedFormat;
    public boolean pendingFormatAdjustment;
    public boolean pendingSplice;
    public AllocationNode readAllocationNode;
    public long sampleOffsetUs;
    public long totalBytesWritten;
    public UpstreamFormatChangedListener upstreamFormatChangeListener;
    public AllocationNode writeAllocationNode;
    public final SampleMetadataQueue metadataQueue = new SampleMetadataQueue();
    public final SampleMetadataQueue.SampleExtrasHolder extrasHolder = new SampleMetadataQueue.SampleExtrasHolder();
    public final ParsableByteArray scratch = new ParsableByteArray(32);

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SampleQueue$AllocationNode.class */
    public static final class AllocationNode {
        @Nullable
        public Allocation allocation;
        public final long endPosition;
        @Nullable
        public AllocationNode next;
        public final long startPosition;
        public boolean wasInitialized;

        public AllocationNode(long j, int i) {
            this.startPosition = j;
            this.endPosition = j + i;
        }

        public AllocationNode clear() {
            this.allocation = null;
            AllocationNode allocationNode = this.next;
            this.next = null;
            return allocationNode;
        }

        public void initialize(Allocation allocation, AllocationNode allocationNode) {
            this.allocation = allocation;
            this.next = allocationNode;
            this.wasInitialized = true;
        }

        public int translateOffset(long j) {
            return ((int) (j - this.startPosition)) + this.allocation.offset;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener.class */
    public interface UpstreamFormatChangedListener {
        void onUpstreamFormatChanged(Format format);
    }

    public SampleQueue(Allocator allocator) {
        this.allocator = allocator;
        this.allocationLength = allocator.getIndividualAllocationLength();
        this.firstAllocationNode = new AllocationNode(0L, this.allocationLength);
        AllocationNode allocationNode = this.firstAllocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
    }

    private void advanceReadTo(long j) {
        while (true) {
            AllocationNode allocationNode = this.readAllocationNode;
            if (j >= allocationNode.endPosition) {
                this.readAllocationNode = allocationNode.next;
            } else {
                return;
            }
        }
    }

    private void clearAllocationNodes(AllocationNode allocationNode) {
        if (allocationNode.wasInitialized) {
            AllocationNode allocationNode2 = this.writeAllocationNode;
            Allocation[] allocationArr = new Allocation[(allocationNode2.wasInitialized ? 1 : 0) + (((int) (allocationNode2.startPosition - allocationNode.startPosition)) / this.allocationLength)];
            for (int i = 0; i < allocationArr.length; i++) {
                allocationArr[i] = allocationNode.allocation;
                allocationNode = allocationNode.clear();
            }
            this.allocator.release(allocationArr);
        }
    }

    private void discardDownstreamTo(long j) {
        AllocationNode allocationNode;
        if (j != -1) {
            while (true) {
                allocationNode = this.firstAllocationNode;
                if (j < allocationNode.endPosition) {
                    break;
                }
                this.allocator.release(allocationNode.allocation);
                this.firstAllocationNode = this.firstAllocationNode.clear();
            }
            if (this.readAllocationNode.startPosition < allocationNode.startPosition) {
                this.readAllocationNode = allocationNode;
            }
        }
    }

    public static Format getAdjustedSampleFormat(Format format, long j) {
        if (format == null) {
            return null;
        }
        Format format2 = format;
        if (j != 0) {
            long j2 = format.subsampleOffsetUs;
            format2 = format;
            if (j2 != Long.MAX_VALUE) {
                format2 = format.copyWithSubsampleOffsetUs(j2 + j);
            }
        }
        return format2;
    }

    private void postAppend(int i) {
        this.totalBytesWritten += i;
        long j = this.totalBytesWritten;
        AllocationNode allocationNode = this.writeAllocationNode;
        if (j == allocationNode.endPosition) {
            this.writeAllocationNode = allocationNode.next;
        }
    }

    private int preAppend(int i) {
        AllocationNode allocationNode = this.writeAllocationNode;
        if (!allocationNode.wasInitialized) {
            allocationNode.initialize(this.allocator.allocate(), new AllocationNode(this.writeAllocationNode.endPosition, this.allocationLength));
        }
        return Math.min(i, (int) (this.writeAllocationNode.endPosition - this.totalBytesWritten));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readData(long r7, java.nio.ByteBuffer r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.advanceReadTo(r1)
        L_0x0005:
            r0 = r10
            if (r0 <= 0) goto L_0x006f
            r0 = r10
            r1 = r6
            androidx.media2.exoplayer.external.source.SampleQueue$AllocationNode r1 = r1.readAllocationNode
            long r1 = r1.endPosition
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r11 = r0
            r0 = r6
            androidx.media2.exoplayer.external.source.SampleQueue$AllocationNode r0 = r0.readAllocationNode
            r12 = r0
            r0 = r9
            r1 = r12
            androidx.media2.exoplayer.external.upstream.Allocation r1 = r1.allocation
            byte[] r1 = r1.data
            r2 = r12
            r3 = r7
            int r2 = r2.translateOffset(r3)
            r3 = r11
            java.nio.ByteBuffer r0 = r0.put(r1, r2, r3)
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r13 = r0
            r0 = r7
            r1 = r11
            long r1 = (long) r1
            long r0 = r0 + r1
            r14 = r0
            r0 = r6
            androidx.media2.exoplayer.external.source.SampleQueue$AllocationNode r0 = r0.readAllocationNode
            r12 = r0
            r0 = r14
            r7 = r0
            r0 = r13
            r10 = r0
            r0 = r14
            r1 = r12
            long r1 = r1.endPosition
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0005
            r0 = r6
            r1 = r12
            androidx.media2.exoplayer.external.source.SampleQueue$AllocationNode r1 = r1.next
            r0.readAllocationNode = r1
            r0 = r14
            r7 = r0
            r0 = r13
            r10 = r0
            goto L_0x0005
        L_0x006f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.SampleQueue.readData(long, java.nio.ByteBuffer, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readData(long r7, byte[] r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.advanceReadTo(r1)
            r0 = r10
            r11 = r0
        L_0x0009:
            r0 = r11
            if (r0 <= 0) goto L_0x0077
            r0 = r11
            r1 = r6
            androidx.media2.exoplayer.external.source.SampleQueue$AllocationNode r1 = r1.readAllocationNode
            long r1 = r1.endPosition
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r12 = r0
            r0 = r6
            androidx.media2.exoplayer.external.source.SampleQueue$AllocationNode r0 = r0.readAllocationNode
            r13 = r0
            r0 = r13
            androidx.media2.exoplayer.external.upstream.Allocation r0 = r0.allocation
            byte[] r0 = r0.data
            r1 = r13
            r2 = r7
            int r1 = r1.translateOffset(r2)
            r2 = r9
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r4 = r12
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r11
            r1 = r12
            int r0 = r0 - r1
            r14 = r0
            r0 = r7
            r1 = r12
            long r1 = (long) r1
            long r0 = r0 + r1
            r15 = r0
            r0 = r6
            androidx.media2.exoplayer.external.source.SampleQueue$AllocationNode r0 = r0.readAllocationNode
            r13 = r0
            r0 = r15
            r7 = r0
            r0 = r14
            r11 = r0
            r0 = r15
            r1 = r13
            long r1 = r1.endPosition
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0009
            r0 = r6
            r1 = r13
            androidx.media2.exoplayer.external.source.SampleQueue$AllocationNode r1 = r1.next
            r0.readAllocationNode = r1
            r0 = r15
            r7 = r0
            r0 = r14
            r11 = r0
            goto L_0x0009
        L_0x0077:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.SampleQueue.readData(long, byte[], int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ba, code lost:
        if (r0.length < r17) goto L_0x00bd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00da, code lost:
        if (r0.length < r17) goto L_0x00dd;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readEncryptionData(androidx.media2.exoplayer.external.decoder.DecoderInputBuffer r11, androidx.media2.exoplayer.external.source.SampleMetadataQueue.SampleExtrasHolder r12) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.SampleQueue.readEncryptionData(androidx.media2.exoplayer.external.decoder.DecoderInputBuffer, androidx.media2.exoplayer.external.source.SampleMetadataQueue$SampleExtrasHolder):void");
    }

    public int advanceTo(long j, boolean z, boolean z2) {
        return this.metadataQueue.advanceTo(j, z, z2);
    }

    public int advanceToEnd() {
        return this.metadataQueue.advanceToEnd();
    }

    public void discardTo(long j, boolean z, boolean z2) {
        discardDownstreamTo(this.metadataQueue.discardTo(j, z, z2));
    }

    public void discardToEnd() {
        discardDownstreamTo(this.metadataQueue.discardToEnd());
    }

    public void discardToRead() {
        discardDownstreamTo(this.metadataQueue.discardToRead());
    }

    public void discardUpstreamSamples(int i) {
        this.totalBytesWritten = this.metadataQueue.discardUpstreamSamples(i);
        long j = this.totalBytesWritten;
        if (j != 0) {
            AllocationNode allocationNode = this.firstAllocationNode;
            AllocationNode allocationNode2 = allocationNode;
            if (j != allocationNode.startPosition) {
                while (this.totalBytesWritten > allocationNode2.endPosition) {
                    allocationNode2 = allocationNode2.next;
                }
                AllocationNode allocationNode3 = allocationNode2.next;
                clearAllocationNodes(allocationNode3);
                allocationNode2.next = new AllocationNode(allocationNode2.endPosition, this.allocationLength);
                this.writeAllocationNode = this.totalBytesWritten == allocationNode2.endPosition ? allocationNode2.next : allocationNode2;
                if (this.readAllocationNode == allocationNode3) {
                    this.readAllocationNode = allocationNode2.next;
                    return;
                }
                return;
            }
        }
        clearAllocationNodes(this.firstAllocationNode);
        this.firstAllocationNode = new AllocationNode(this.totalBytesWritten, this.allocationLength);
        AllocationNode allocationNode4 = this.firstAllocationNode;
        this.readAllocationNode = allocationNode4;
        this.writeAllocationNode = allocationNode4;
    }

    @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
    public void format(Format format) {
        Format adjustedSampleFormat = getAdjustedSampleFormat(format, this.sampleOffsetUs);
        boolean format2 = this.metadataQueue.format(adjustedSampleFormat);
        this.lastUnadjustedFormat = format;
        this.pendingFormatAdjustment = false;
        UpstreamFormatChangedListener upstreamFormatChangedListener = this.upstreamFormatChangeListener;
        if (upstreamFormatChangedListener != null && format2) {
            upstreamFormatChangedListener.onUpstreamFormatChanged(adjustedSampleFormat);
        }
    }

    public int getFirstIndex() {
        return this.metadataQueue.getFirstIndex();
    }

    public long getFirstTimestampUs() {
        return this.metadataQueue.getFirstTimestampUs();
    }

    public long getLargestQueuedTimestampUs() {
        return this.metadataQueue.getLargestQueuedTimestampUs();
    }

    public int getReadIndex() {
        return this.metadataQueue.getReadIndex();
    }

    public Format getUpstreamFormat() {
        return this.metadataQueue.getUpstreamFormat();
    }

    public int getWriteIndex() {
        return this.metadataQueue.getWriteIndex();
    }

    public boolean hasNextSample() {
        return this.metadataQueue.hasNextSample();
    }

    public boolean isLastSampleQueued() {
        return this.metadataQueue.isLastSampleQueued();
    }

    public int peekSourceId() {
        return this.metadataQueue.peekSourceId();
    }

    public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, long j) {
        int read = this.metadataQueue.read(formatHolder, decoderInputBuffer, z, z2, this.downstreamFormat, this.extrasHolder);
        if (read == -5) {
            this.downstreamFormat = formatHolder.format;
            return -5;
        } else if (read != -4) {
            if (read == -3) {
                return -3;
            }
            throw new IllegalStateException();
        } else if (decoderInputBuffer.isEndOfStream()) {
            return -4;
        } else {
            if (decoderInputBuffer.timeUs < j) {
                decoderInputBuffer.addFlag(Integer.MIN_VALUE);
            }
            if (decoderInputBuffer.isFlagsOnly()) {
                return -4;
            }
            if (decoderInputBuffer.isEncrypted()) {
                readEncryptionData(decoderInputBuffer, this.extrasHolder);
            }
            decoderInputBuffer.ensureSpaceForWrite(this.extrasHolder.size);
            SampleMetadataQueue.SampleExtrasHolder sampleExtrasHolder = this.extrasHolder;
            readData(sampleExtrasHolder.offset, decoderInputBuffer.data, sampleExtrasHolder.size);
            return -4;
        }
    }

    public void reset() {
        reset(false);
    }

    public void reset(boolean z) {
        this.metadataQueue.reset(z);
        clearAllocationNodes(this.firstAllocationNode);
        this.firstAllocationNode = new AllocationNode(0L, this.allocationLength);
        AllocationNode allocationNode = this.firstAllocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
        this.totalBytesWritten = 0L;
        this.allocator.trim();
    }

    public void rewind() {
        this.metadataQueue.rewind();
        this.readAllocationNode = this.firstAllocationNode;
    }

    @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
    public int sampleData(ExtractorInput extractorInput, int i, boolean z) throws IOException, InterruptedException {
        int preAppend = preAppend(i);
        AllocationNode allocationNode = this.writeAllocationNode;
        int read = extractorInput.read(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), preAppend);
        if (read != -1) {
            postAppend(read);
            return read;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        while (i > 0) {
            int preAppend = preAppend(i);
            AllocationNode allocationNode = this.writeAllocationNode;
            parsableByteArray.readBytes(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), preAppend);
            i -= preAppend;
            postAppend(preAppend);
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
    public void sampleMetadata(long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
        if (this.pendingFormatAdjustment) {
            format(this.lastUnadjustedFormat);
        }
        long j2 = j + this.sampleOffsetUs;
        if (this.pendingSplice) {
            if ((i & 1) != 0 && this.metadataQueue.attemptSplice(j2)) {
                this.pendingSplice = false;
            } else {
                return;
            }
        }
        this.metadataQueue.commitSample(j2, i, (this.totalBytesWritten - i2) - i3, i2, cryptoData);
    }

    public boolean setReadPosition(int i) {
        return this.metadataQueue.setReadPosition(i);
    }

    public void setSampleOffsetUs(long j) {
        if (this.sampleOffsetUs != j) {
            this.sampleOffsetUs = j;
            this.pendingFormatAdjustment = true;
        }
    }

    public void setUpstreamFormatChangeListener(UpstreamFormatChangedListener upstreamFormatChangedListener) {
        this.upstreamFormatChangeListener = upstreamFormatChangedListener;
    }

    public void sourceId(int i) {
        this.metadataQueue.sourceId(i);
    }

    public void splice() {
        this.pendingSplice = true;
    }
}
