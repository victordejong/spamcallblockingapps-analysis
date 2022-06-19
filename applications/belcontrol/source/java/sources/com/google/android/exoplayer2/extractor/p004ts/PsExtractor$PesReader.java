package com.google.android.exoplayer2.extractor.p004ts;

import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
/* renamed from: com.google.android.exoplayer2.extractor.ts.PsExtractor$PesReader */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader.class */
public final class PsExtractor$PesReader {
    private static final int PES_SCRATCH_SIZE = 64;
    private boolean dtsFlag;
    private int extendedHeaderLength;
    private final ElementaryStreamReader pesPayloadReader;
    private final ParsableBitArray pesScratch = new ParsableBitArray(new byte[64]);
    private boolean ptsFlag;
    private boolean seenFirstDts;
    private long timeUs;
    private final TimestampAdjuster timestampAdjuster;

    public PsExtractor$PesReader(ElementaryStreamReader elementaryStreamReader, TimestampAdjuster timestampAdjuster) {
        this.pesPayloadReader = elementaryStreamReader;
        this.timestampAdjuster = timestampAdjuster;
    }

    private void parseHeader() {
        this.pesScratch.skipBits(8);
        this.ptsFlag = this.pesScratch.readBit();
        this.dtsFlag = this.pesScratch.readBit();
        this.pesScratch.skipBits(6);
        this.extendedHeaderLength = this.pesScratch.readBits(8);
    }

    private void parseHeaderExtension() {
        this.timeUs = 0L;
        if (this.ptsFlag) {
            this.pesScratch.skipBits(4);
            long readBits = this.pesScratch.readBits(3);
            this.pesScratch.skipBits(1);
            long readBits2 = this.pesScratch.readBits(15) << 15;
            this.pesScratch.skipBits(1);
            long readBits3 = this.pesScratch.readBits(15);
            this.pesScratch.skipBits(1);
            if (!this.seenFirstDts && this.dtsFlag) {
                this.pesScratch.skipBits(4);
                long readBits4 = this.pesScratch.readBits(3);
                this.pesScratch.skipBits(1);
                long readBits5 = this.pesScratch.readBits(15) << 15;
                this.pesScratch.skipBits(1);
                long readBits6 = this.pesScratch.readBits(15);
                this.pesScratch.skipBits(1);
                this.timestampAdjuster.adjustTsTimestamp((readBits4 << 30) | readBits5 | readBits6);
                this.seenFirstDts = true;
            }
            this.timeUs = this.timestampAdjuster.adjustTsTimestamp((readBits << 30) | readBits2 | readBits3);
        }
    }

    public void consume(ParsableByteArray parsableByteArray) {
        parsableByteArray.readBytes(this.pesScratch.data, 0, 3);
        this.pesScratch.setPosition(0);
        parseHeader();
        parsableByteArray.readBytes(this.pesScratch.data, 0, this.extendedHeaderLength);
        this.pesScratch.setPosition(0);
        parseHeaderExtension();
        this.pesPayloadReader.packetStarted(this.timeUs, true);
        this.pesPayloadReader.consume(parsableByteArray);
        this.pesPayloadReader.packetFinished();
    }

    public void seek() {
        this.seenFirstDts = false;
        this.pesPayloadReader.seek();
    }
}
