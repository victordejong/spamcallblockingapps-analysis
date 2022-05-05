package androidx.media2.exoplayer.external.extractor.p007ts;

import android.util.SparseArray;
import androidx.annotation.RestrictTo;
import androidx.core.view.InputDeviceCompat;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.PsExtractor */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/PsExtractor.class */
public final class PsExtractor implements Extractor {
    public static final int AUDIO_STREAM = 192;
    public static final int AUDIO_STREAM_MASK = 224;
    public static final ExtractorsFactory FACTORY = PsExtractor$$Lambda$0.$instance;
    public static final long MAX_SEARCH_LENGTH = 1048576;
    public static final long MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND = 8192;
    public static final int MAX_STREAM_ID_PLUS_ONE = 256;
    public static final int MPEG_PROGRAM_END_CODE = 441;
    public static final int PACKET_START_CODE_PREFIX = 1;
    public static final int PACK_START_CODE = 442;
    public static final int PRIVATE_STREAM_1 = 189;
    public static final int SYSTEM_HEADER_START_CODE = 443;
    public static final int VIDEO_STREAM = 224;
    public static final int VIDEO_STREAM_MASK = 240;
    public final PsDurationReader durationReader;
    public boolean foundAllTracks;
    public boolean foundAudioTrack;
    public boolean foundVideoTrack;
    public boolean hasOutputSeekMap;
    public long lastTrackPosition;
    public ExtractorOutput output;
    public PsBinarySearchSeeker psBinarySearchSeeker;
    public final ParsableByteArray psPacketBuffer;
    public final SparseArray<PesReader> psPayloadReaders;
    public final TimestampAdjuster timestampAdjuster;

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.PsExtractor$PesReader */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader.class */
    public static final class PesReader {
        public static final int PES_SCRATCH_SIZE = 64;
        public boolean dtsFlag;
        public int extendedHeaderLength;
        public final ElementaryStreamReader pesPayloadReader;
        public final ParsableBitArray pesScratch = new ParsableBitArray(new byte[64]);
        public boolean ptsFlag;
        public boolean seenFirstDts;
        public long timeUs;
        public final TimestampAdjuster timestampAdjuster;

        public PesReader(ElementaryStreamReader elementaryStreamReader, TimestampAdjuster timestampAdjuster) {
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

        public void consume(ParsableByteArray parsableByteArray) throws ParserException {
            parsableByteArray.readBytes(this.pesScratch.data, 0, 3);
            this.pesScratch.setPosition(0);
            parseHeader();
            parsableByteArray.readBytes(this.pesScratch.data, 0, this.extendedHeaderLength);
            this.pesScratch.setPosition(0);
            parseHeaderExtension();
            this.pesPayloadReader.packetStarted(this.timeUs, 4);
            this.pesPayloadReader.consume(parsableByteArray);
            this.pesPayloadReader.packetFinished();
        }

        public void seek() {
            this.seenFirstDts = false;
            this.pesPayloadReader.seek();
        }
    }

    public PsExtractor() {
        this(new TimestampAdjuster(0L));
    }

    public PsExtractor(TimestampAdjuster timestampAdjuster) {
        this.timestampAdjuster = timestampAdjuster;
        this.psPacketBuffer = new ParsableByteArray(4096);
        this.psPayloadReaders = new SparseArray<>();
        this.durationReader = new PsDurationReader();
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$PsExtractor() {
        return new Extractor[]{new PsExtractor()};
    }

    private void maybeOutputSeekMap(long j) {
        if (!this.hasOutputSeekMap) {
            this.hasOutputSeekMap = true;
            if (this.durationReader.getDurationUs() != C0463C.TIME_UNSET) {
                this.psBinarySearchSeeker = new PsBinarySearchSeeker(this.durationReader.getScrTimestampAdjuster(), this.durationReader.getDurationUs(), j);
                this.output.seekMap(this.psBinarySearchSeeker.getSeekMap());
                return;
            }
            this.output.seekMap(new SeekMap.Unseekable(this.durationReader.getDurationUs()));
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        long length = extractorInput.getLength();
        int i = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if ((i != 0) && !this.durationReader.isDurationReadFinished()) {
            return this.durationReader.readDuration(extractorInput, positionHolder);
        }
        maybeOutputSeekMap(length);
        PsBinarySearchSeeker psBinarySearchSeeker = this.psBinarySearchSeeker;
        ElementaryStreamReader elementaryStreamReader = null;
        if (psBinarySearchSeeker != null && psBinarySearchSeeker.isSeeking()) {
            return this.psBinarySearchSeeker.handlePendingSeek(extractorInput, positionHolder, null);
        }
        extractorInput.resetPeekPosition();
        long peekPosition = i != 0 ? length - extractorInput.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !extractorInput.peekFully(this.psPacketBuffer.data, 0, 4, true)) {
            return -1;
        }
        this.psPacketBuffer.setPosition(0);
        int readInt = this.psPacketBuffer.readInt();
        if (readInt == 441) {
            return -1;
        }
        if (readInt == 442) {
            extractorInput.peekFully(this.psPacketBuffer.data, 0, 10);
            this.psPacketBuffer.setPosition(9);
            extractorInput.skipFully((this.psPacketBuffer.readUnsignedByte() & 7) + 14);
            return 0;
        } else if (readInt == 443) {
            extractorInput.peekFully(this.psPacketBuffer.data, 0, 2);
            this.psPacketBuffer.setPosition(0);
            extractorInput.skipFully(this.psPacketBuffer.readUnsignedShort() + 6);
            return 0;
        } else if (((readInt & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            extractorInput.skipFully(1);
            return 0;
        } else {
            int i2 = readInt & 255;
            PesReader pesReader = this.psPayloadReaders.get(i2);
            PesReader pesReader2 = pesReader;
            if (!this.foundAllTracks) {
                PesReader pesReader3 = pesReader;
                if (pesReader == null) {
                    if (i2 == 189) {
                        elementaryStreamReader = new Ac3Reader();
                        this.foundAudioTrack = true;
                        this.lastTrackPosition = extractorInput.getPosition();
                    } else if ((i2 & 224) == 192) {
                        elementaryStreamReader = new MpegAudioReader();
                        this.foundAudioTrack = true;
                        this.lastTrackPosition = extractorInput.getPosition();
                    } else if ((i2 & 240) == 224) {
                        elementaryStreamReader = new H262Reader();
                        this.foundVideoTrack = true;
                        this.lastTrackPosition = extractorInput.getPosition();
                    }
                    pesReader3 = pesReader;
                    if (elementaryStreamReader != null) {
                        elementaryStreamReader.createTracks(this.output, new TsPayloadReader.TrackIdGenerator(i2, 256));
                        pesReader3 = new PesReader(elementaryStreamReader, this.timestampAdjuster);
                        this.psPayloadReaders.put(i2, pesReader3);
                    }
                }
                pesReader2 = pesReader3;
                if (extractorInput.getPosition() > ((!this.foundAudioTrack || !this.foundVideoTrack) ? MAX_SEARCH_LENGTH : this.lastTrackPosition + MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND)) {
                    this.foundAllTracks = true;
                    this.output.endTracks();
                    pesReader2 = pesReader3;
                }
            }
            extractorInput.peekFully(this.psPacketBuffer.data, 0, 2);
            this.psPacketBuffer.setPosition(0);
            int readUnsignedShort = this.psPacketBuffer.readUnsignedShort() + 6;
            if (pesReader2 == null) {
                extractorInput.skipFully(readUnsignedShort);
                return 0;
            }
            this.psPacketBuffer.reset(readUnsignedShort);
            extractorInput.readFully(this.psPacketBuffer.data, 0, readUnsignedShort);
            this.psPacketBuffer.setPosition(6);
            pesReader2.consume(this.psPacketBuffer);
            ParsableByteArray parsableByteArray = this.psPacketBuffer;
            parsableByteArray.setLimit(parsableByteArray.capacity());
            return 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        if ((this.timestampAdjuster.getTimestampOffsetUs() == C0463C.TIME_UNSET) || !(this.timestampAdjuster.getFirstSampleTimestampUs() == 0 || this.timestampAdjuster.getFirstSampleTimestampUs() == j2)) {
            this.timestampAdjuster.reset();
            this.timestampAdjuster.setFirstSampleTimestampUs(j2);
        }
        PsBinarySearchSeeker psBinarySearchSeeker = this.psBinarySearchSeeker;
        int i = 0;
        if (psBinarySearchSeeker != null) {
            psBinarySearchSeeker.setSeekTargetUs(j2);
            i = 0;
        }
        while (i < this.psPayloadReaders.size()) {
            this.psPayloadReaders.valueAt(i).seek();
            i++;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        boolean z = false;
        extractorInput.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        extractorInput.advancePeekPosition(bArr[13] & 7);
        extractorInput.peekFully(bArr, 0, 3);
        if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
            z = true;
        }
        return z;
    }
}
