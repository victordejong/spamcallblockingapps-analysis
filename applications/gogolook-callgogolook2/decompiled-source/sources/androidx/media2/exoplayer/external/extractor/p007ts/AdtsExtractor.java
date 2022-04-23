package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.extractor.ConstantBitrateSeekMap;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.AdtsExtractor */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/AdtsExtractor.class */
public final class AdtsExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = AdtsExtractor$$Lambda$0.$instance;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int ID3_TAG = 4801587;
    public static final int MAX_PACKET_SIZE = 2048;
    public static final int MAX_SNIFF_BYTES = 8192;
    public static final int NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE = 1000;
    public int averageFrameSize;
    @Nullable
    public ExtractorOutput extractorOutput;
    public long firstFramePosition;
    public long firstSampleTimestampUs;
    public final long firstStreamSampleTimestampUs;
    public final int flags;
    public boolean hasCalculatedAverageFrameSize;
    public boolean hasOutputSeekMap;
    public final ParsableByteArray packetBuffer;
    public final AdtsReader reader;
    public final ParsableByteArray scratch;
    public final ParsableBitArray scratchBits;
    public boolean startedPacket;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.AdtsExtractor$Flags */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/AdtsExtractor$Flags.class */
    public @interface Flags {
    }

    public AdtsExtractor() {
        this(0L);
    }

    public AdtsExtractor(long j) {
        this(j, 0);
    }

    public AdtsExtractor(long j, int i) {
        this.firstStreamSampleTimestampUs = j;
        this.firstSampleTimestampUs = j;
        this.flags = i;
        this.reader = new AdtsReader(true);
        this.packetBuffer = new ParsableByteArray(2048);
        this.averageFrameSize = -1;
        this.firstFramePosition = -1L;
        this.scratch = new ParsableByteArray(10);
        this.scratchBits = new ParsableBitArray(this.scratch.data);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void calculateAverageFrameSize(androidx.media2.exoplayer.external.extractor.ExtractorInput r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p007ts.AdtsExtractor.calculateAverageFrameSize(androidx.media2.exoplayer.external.extractor.ExtractorInput):void");
    }

    public static int getBitrateFromFrameSize(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    private SeekMap getConstantBitrateSeekMap(long j) {
        return new ConstantBitrateSeekMap(j, this.firstFramePosition, getBitrateFromFrameSize(this.averageFrameSize, this.reader.getSampleDurationUs()), this.averageFrameSize);
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$AdtsExtractor() {
        return new Extractor[]{new AdtsExtractor()};
    }

    private void maybeOutputSeekMap(long j, boolean z, boolean z2) {
        if (!this.hasOutputSeekMap) {
            boolean z3 = z && this.averageFrameSize > 0;
            if (!z3 || this.reader.getSampleDurationUs() != C0463C.TIME_UNSET || z2) {
                ExtractorOutput extractorOutput = (ExtractorOutput) Assertions.checkNotNull(this.extractorOutput);
                if (!z3 || this.reader.getSampleDurationUs() == C0463C.TIME_UNSET) {
                    extractorOutput.seekMap(new SeekMap.Unseekable(C0463C.TIME_UNSET));
                } else {
                    extractorOutput.seekMap(getConstantBitrateSeekMap(j));
                }
                this.hasOutputSeekMap = true;
            }
        }
    }

    private int peekId3Header(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i = 0;
        while (true) {
            extractorInput.peekFully(this.scratch.data, 0, 10);
            this.scratch.setPosition(0);
            if (this.scratch.readUnsignedInt24() != 4801587) {
                break;
            }
            this.scratch.skipBytes(3);
            int readSynchSafeInt = this.scratch.readSynchSafeInt();
            i += readSynchSafeInt + 10;
            extractorInput.advancePeekPosition(readSynchSafeInt);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        if (this.firstFramePosition == -1) {
            this.firstFramePosition = i;
        }
        return i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.reader.createTracks(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        long length = extractorInput.getLength();
        boolean z = ((this.flags & 1) == 0 || length == -1) ? false : true;
        if (z) {
            calculateAverageFrameSize(extractorInput);
        }
        int read = extractorInput.read(this.packetBuffer.data, 0, 2048);
        boolean z2 = read == -1;
        maybeOutputSeekMap(length, z, z2);
        if (z2) {
            return -1;
        }
        this.packetBuffer.setPosition(0);
        this.packetBuffer.setLimit(read);
        if (!this.startedPacket) {
            this.reader.packetStarted(this.firstSampleTimestampUs, 4);
            this.startedPacket = true;
        }
        this.reader.consume(this.packetBuffer);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        this.startedPacket = false;
        this.reader.seek();
        this.firstSampleTimestampUs = this.firstStreamSampleTimestampUs + j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
        r6.resetPeekPosition();
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r8 - r0) < 8192) goto L_0x0046;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        return false;
     */
    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean sniff(androidx.media2.exoplayer.external.extractor.ExtractorInput r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            int r0 = r0.peekId3Header(r1)
            r7 = r0
            r0 = r7
            r8 = r0
        L_0x0008:
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000e:
            r0 = r6
            r1 = r5
            androidx.media2.exoplayer.external.util.ParsableByteArray r1 = r1.scratch
            byte[] r1 = r1.data
            r2 = 0
            r3 = 2
            r0.peekFully(r1, r2, r3)
            r0 = r5
            androidx.media2.exoplayer.external.util.ParsableByteArray r0 = r0.scratch
            r1 = 0
            r0.setPosition(r1)
            r0 = r5
            androidx.media2.exoplayer.external.util.ParsableByteArray r0 = r0.scratch
            int r0 = r0.readUnsignedShort()
            boolean r0 = androidx.media2.exoplayer.external.extractor.p007ts.AdtsReader.isAdtsSyncWord(r0)
            if (r0 != 0) goto L_0x0050
            r0 = r6
            r0.resetPeekPosition()
            int r8 = r8 + 1
            r0 = r8
            r1 = r7
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x0046
            r0 = 0
            return r0
        L_0x0046:
            r0 = r6
            r1 = r8
            r0.advancePeekPosition(r1)
            goto L_0x0008
        L_0x0050:
            int r9 = r9 + 1
            r0 = r9
            r1 = 4
            if (r0 < r1) goto L_0x0063
            r0 = r10
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 <= r1) goto L_0x0063
            r0 = 1
            return r0
        L_0x0063:
            r0 = r6
            r1 = r5
            androidx.media2.exoplayer.external.util.ParsableByteArray r1 = r1.scratch
            byte[] r1 = r1.data
            r2 = 0
            r3 = 4
            r0.peekFully(r1, r2, r3)
            r0 = r5
            androidx.media2.exoplayer.external.util.ParsableBitArray r0 = r0.scratchBits
            r1 = 14
            r0.setPosition(r1)
            r0 = r5
            androidx.media2.exoplayer.external.util.ParsableBitArray r0 = r0.scratchBits
            r1 = 13
            int r0 = r0.readBits(r1)
            r11 = r0
            r0 = r11
            r1 = 6
            if (r0 > r1) goto L_0x008f
            r0 = 0
            return r0
        L_0x008f:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.advancePeekPosition(r1)
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto L_0x000e
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p007ts.AdtsExtractor.sniff(androidx.media2.exoplayer.external.extractor.ExtractorInput):boolean");
    }
}
