package androidx.media2.exoplayer.external.extractor.flv;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/FlvExtractor.class */
public final class FlvExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = FlvExtractor$$Lambda$0.$instance;
    public static final int FLV_HEADER_SIZE = 9;
    public static final int FLV_TAG = 4607062;
    public static final int FLV_TAG_HEADER_SIZE = 11;
    public static final int STATE_READING_FLV_HEADER = 1;
    public static final int STATE_READING_TAG_DATA = 4;
    public static final int STATE_READING_TAG_HEADER = 3;
    public static final int STATE_SKIPPING_TO_TAG_HEADER = 2;
    public static final int TAG_TYPE_AUDIO = 8;
    public static final int TAG_TYPE_SCRIPT_DATA = 18;
    public static final int TAG_TYPE_VIDEO = 9;
    public AudioTagPayloadReader audioReader;
    public int bytesToNextTagHeader;
    public ExtractorOutput extractorOutput;
    public boolean outputSeekMap;
    public int tagDataSize;
    public long tagTimestampUs;
    public int tagType;
    public VideoTagPayloadReader videoReader;
    public final ParsableByteArray scratch = new ParsableByteArray(4);
    public final ParsableByteArray headerBuffer = new ParsableByteArray(9);
    public final ParsableByteArray tagHeaderBuffer = new ParsableByteArray(11);
    public final ParsableByteArray tagData = new ParsableByteArray();
    public final ScriptTagPayloadReader metadataReader = new ScriptTagPayloadReader();
    public int state = 1;
    public long mediaTagTimestampOffsetUs = C0463C.TIME_UNSET;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/FlvExtractor$States.class */
    public @interface States {
    }

    private void ensureReadyForMediaOutput() {
        if (!this.outputSeekMap) {
            this.extractorOutput.seekMap(new SeekMap.Unseekable(C0463C.TIME_UNSET));
            this.outputSeekMap = true;
        }
        if (this.mediaTagTimestampOffsetUs == C0463C.TIME_UNSET) {
            this.mediaTagTimestampOffsetUs = this.metadataReader.getDurationUs() == C0463C.TIME_UNSET ? -this.tagTimestampUs : 0L;
        }
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$FlvExtractor() {
        return new Extractor[]{new FlvExtractor()};
    }

    private ParsableByteArray prepareTagData(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (this.tagDataSize > this.tagData.capacity()) {
            ParsableByteArray parsableByteArray = this.tagData;
            parsableByteArray.reset(new byte[Math.max(parsableByteArray.capacity() * 2, this.tagDataSize)], 0);
        } else {
            this.tagData.setPosition(0);
        }
        this.tagData.setLimit(this.tagDataSize);
        extractorInput.readFully(this.tagData.data, 0, this.tagDataSize);
        return this.tagData;
    }

    private boolean readFlvHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        boolean z = false;
        if (!extractorInput.readFully(this.headerBuffer.data, 0, 9, true)) {
            return false;
        }
        this.headerBuffer.setPosition(0);
        this.headerBuffer.skipBytes(4);
        int readUnsignedByte = this.headerBuffer.readUnsignedByte();
        boolean z2 = (readUnsignedByte & 4) != 0;
        if ((readUnsignedByte & 1) != 0) {
            z = true;
        }
        if (z2 && this.audioReader == null) {
            this.audioReader = new AudioTagPayloadReader(this.extractorOutput.track(8, 1));
        }
        if (z && this.videoReader == null) {
            this.videoReader = new VideoTagPayloadReader(this.extractorOutput.track(9, 2));
        }
        this.extractorOutput.endTracks();
        this.bytesToNextTagHeader = (this.headerBuffer.readInt() - 9) + 4;
        this.state = 2;
        return true;
    }

    private boolean readTagData(ExtractorInput extractorInput) throws IOException, InterruptedException {
        boolean z;
        if (this.tagType == 8 && this.audioReader != null) {
            ensureReadyForMediaOutput();
            this.audioReader.consume(prepareTagData(extractorInput), this.mediaTagTimestampOffsetUs + this.tagTimestampUs);
            z = true;
        } else if (this.tagType == 9 && this.videoReader != null) {
            ensureReadyForMediaOutput();
            this.videoReader.consume(prepareTagData(extractorInput), this.mediaTagTimestampOffsetUs + this.tagTimestampUs);
            z = true;
        } else if (this.tagType != 18 || this.outputSeekMap) {
            extractorInput.skipFully(this.tagDataSize);
            z = false;
        } else {
            this.metadataReader.consume(prepareTagData(extractorInput), this.tagTimestampUs);
            long durationUs = this.metadataReader.getDurationUs();
            z = true;
            if (durationUs != C0463C.TIME_UNSET) {
                this.extractorOutput.seekMap(new SeekMap.Unseekable(durationUs));
                this.outputSeekMap = true;
                z = true;
            }
        }
        this.bytesToNextTagHeader = 4;
        this.state = 2;
        return z;
    }

    private boolean readTagHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (!extractorInput.readFully(this.tagHeaderBuffer.data, 0, 11, true)) {
            return false;
        }
        this.tagHeaderBuffer.setPosition(0);
        this.tagType = this.tagHeaderBuffer.readUnsignedByte();
        this.tagDataSize = this.tagHeaderBuffer.readUnsignedInt24();
        this.tagTimestampUs = this.tagHeaderBuffer.readUnsignedInt24();
        this.tagTimestampUs = ((this.tagHeaderBuffer.readUnsignedByte() << 24) | this.tagTimestampUs) * 1000;
        this.tagHeaderBuffer.skipBytes(3);
        this.state = 4;
        return true;
    }

    private void skipToTagHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        extractorInput.skipFully(this.bytesToNextTagHeader);
        this.bytesToNextTagHeader = 0;
        this.state = 3;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        while (true) {
            int i = this.state;
            if (i != 1) {
                if (i == 2) {
                    skipToTagHeader(extractorInput);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException();
                    } else if (readTagData(extractorInput)) {
                        return 0;
                    }
                } else if (!readTagHeader(extractorInput)) {
                    return -1;
                }
            } else if (!readFlvHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        this.state = 1;
        this.mediaTagTimestampOffsetUs = C0463C.TIME_UNSET;
        this.bytesToNextTagHeader = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        boolean z = false;
        extractorInput.peekFully(this.scratch.data, 0, 3);
        this.scratch.setPosition(0);
        if (this.scratch.readUnsignedInt24() != 4607062) {
            return false;
        }
        extractorInput.peekFully(this.scratch.data, 0, 2);
        this.scratch.setPosition(0);
        if ((this.scratch.readUnsignedShort() & 250) != 0) {
            return false;
        }
        extractorInput.peekFully(this.scratch.data, 0, 4);
        this.scratch.setPosition(0);
        int readInt = this.scratch.readInt();
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(readInt);
        extractorInput.peekFully(this.scratch.data, 0, 4);
        this.scratch.setPosition(0);
        if (this.scratch.readInt() == 0) {
            z = true;
        }
        return z;
    }
}
