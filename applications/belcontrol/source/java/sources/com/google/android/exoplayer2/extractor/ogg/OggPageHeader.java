package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ogg/OggPageHeader.class */
public final class OggPageHeader {
    public static final int EMPTY_PAGE_HEADER_SIZE = 27;
    public static final int MAX_PAGE_PAYLOAD = 65025;
    public static final int MAX_PAGE_SIZE = 65307;
    public static final int MAX_SEGMENT_COUNT = 255;
    private static final int TYPE_OGGS = Util.getIntegerCodeForString("OggS");
    public int bodySize;
    public long granulePosition;
    public int headerSize;
    public long pageChecksum;
    public int pageSegmentCount;
    public long pageSequenceNumber;
    public int revision;
    public long streamSerialNumber;
    public int type;
    public final int[] laces = new int[255];
    private final ParsableByteArray scratch = new ParsableByteArray(255);

    public boolean populate(ExtractorInput extractorInput, boolean z) {
        this.scratch.reset();
        reset();
        if (!(extractorInput.getLength() == -1 || extractorInput.getLength() - extractorInput.getPeekPosition() >= 27) || !extractorInput.peekFully(this.scratch.data, 0, 27, true)) {
            if (!z) {
                throw new EOFException();
            }
            return false;
        } else if (this.scratch.readUnsignedInt() != TYPE_OGGS) {
            if (!z) {
                throw new ParserException("expected OggS capture pattern at begin of page");
            }
            return false;
        } else {
            int readUnsignedByte = this.scratch.readUnsignedByte();
            this.revision = readUnsignedByte;
            if (readUnsignedByte != 0) {
                if (!z) {
                    throw new ParserException("unsupported bit stream revision");
                }
                return false;
            }
            this.type = this.scratch.readUnsignedByte();
            this.granulePosition = this.scratch.readLittleEndianLong();
            this.streamSerialNumber = this.scratch.readLittleEndianUnsignedInt();
            this.pageSequenceNumber = this.scratch.readLittleEndianUnsignedInt();
            this.pageChecksum = this.scratch.readLittleEndianUnsignedInt();
            int readUnsignedByte2 = this.scratch.readUnsignedByte();
            this.pageSegmentCount = readUnsignedByte2;
            this.headerSize = readUnsignedByte2 + 27;
            this.scratch.reset();
            extractorInput.peekFully(this.scratch.data, 0, this.pageSegmentCount);
            for (int i = 0; i < this.pageSegmentCount; i++) {
                this.laces[i] = this.scratch.readUnsignedByte();
                this.bodySize += this.laces[i];
            }
            return true;
        }
    }

    public void reset() {
        this.revision = 0;
        this.type = 0;
        this.granulePosition = 0L;
        this.streamSerialNumber = 0L;
        this.pageSequenceNumber = 0L;
        this.pageChecksum = 0L;
        this.pageSegmentCount = 0;
        this.headerSize = 0;
        this.bodySize = 0;
    }
}
