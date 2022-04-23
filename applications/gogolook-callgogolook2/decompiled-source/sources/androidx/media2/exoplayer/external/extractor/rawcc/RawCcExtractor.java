package androidx.media2.exoplayer.external.extractor.rawcc;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/rawcc/RawCcExtractor.class */
public final class RawCcExtractor implements Extractor {
    public static final int HEADER_ID = 1380139777;
    public static final int HEADER_SIZE = 8;
    public static final int SCRATCH_SIZE = 9;
    public static final int STATE_READING_HEADER = 0;
    public static final int STATE_READING_SAMPLES = 2;
    public static final int STATE_READING_TIMESTAMP_AND_COUNT = 1;
    public static final int TIMESTAMP_SIZE_V0 = 4;
    public static final int TIMESTAMP_SIZE_V1 = 8;
    public final Format format;
    public int remainingSampleCount;
    public int sampleBytesWritten;
    public long timestampUs;
    public TrackOutput trackOutput;
    public int version;
    public final ParsableByteArray dataScratch = new ParsableByteArray(9);
    public int parserState = 0;

    public RawCcExtractor(Format format) {
        this.format = format;
    }

    private boolean parseHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        this.dataScratch.reset();
        if (!extractorInput.readFully(this.dataScratch.data, 0, 8, true)) {
            return false;
        }
        if (this.dataScratch.readInt() == 1380139777) {
            this.version = this.dataScratch.readUnsignedByte();
            return true;
        }
        throw new IOException("Input not RawCC");
    }

    private void parseSamples(ExtractorInput extractorInput) throws IOException, InterruptedException {
        while (this.remainingSampleCount > 0) {
            this.dataScratch.reset();
            extractorInput.readFully(this.dataScratch.data, 0, 3);
            this.trackOutput.sampleData(this.dataScratch, 3);
            this.sampleBytesWritten += 3;
            this.remainingSampleCount--;
        }
        int i = this.sampleBytesWritten;
        if (i > 0) {
            this.trackOutput.sampleMetadata(this.timestampUs, 1, i, 0, null);
        }
    }

    private boolean parseTimestampAndSampleCount(ExtractorInput extractorInput) throws IOException, InterruptedException {
        this.dataScratch.reset();
        int i = this.version;
        if (i == 0) {
            if (!extractorInput.readFully(this.dataScratch.data, 0, 5, true)) {
                return false;
            }
            this.timestampUs = (this.dataScratch.readUnsignedInt() * 1000) / 45;
        } else if (i != 1) {
            StringBuilder sb = new StringBuilder(39);
            sb.append("Unsupported version number: ");
            sb.append(i);
            throw new ParserException(sb.toString());
        } else if (!extractorInput.readFully(this.dataScratch.data, 0, 9, true)) {
            return false;
        } else {
            this.timestampUs = this.dataScratch.readLong();
        }
        this.remainingSampleCount = this.dataScratch.readUnsignedByte();
        this.sampleBytesWritten = 0;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        extractorOutput.seekMap(new SeekMap.Unseekable(C0463C.TIME_UNSET));
        this.trackOutput = extractorOutput.track(0, 3);
        extractorOutput.endTracks();
        this.trackOutput.format(this.format);
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        while (true) {
            int i = this.parserState;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        parseSamples(extractorInput);
                        this.parserState = 1;
                        return 0;
                    }
                    throw new IllegalStateException();
                } else if (parseTimestampAndSampleCount(extractorInput)) {
                    this.parserState = 2;
                } else {
                    this.parserState = 0;
                    return -1;
                }
            } else if (!parseHeader(extractorInput)) {
                return -1;
            } else {
                this.parserState = 1;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        this.parserState = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        this.dataScratch.reset();
        boolean z = false;
        extractorInput.peekFully(this.dataScratch.data, 0, 8);
        if (this.dataScratch.readInt() == 1380139777) {
            z = true;
        }
        return z;
    }
}
