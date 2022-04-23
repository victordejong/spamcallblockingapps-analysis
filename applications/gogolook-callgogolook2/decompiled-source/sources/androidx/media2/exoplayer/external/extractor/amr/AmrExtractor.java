package androidx.media2.exoplayer.external.extractor.amr;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.audio.SilenceSkippingAudioProcessor;
import androidx.media2.exoplayer.external.extractor.ConstantBitrateSeekMap;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/amr/AmrExtractor.class */
public final class AmrExtractor implements Extractor {
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD = 20;
    public static final int SAMPLE_RATE_NB = 8000;
    public static final int SAMPLE_RATE_WB = 16000;
    public static final int SAMPLE_TIME_PER_FRAME_US = 20000;
    public int currentSampleBytesRemaining;
    public int currentSampleSize;
    public long currentSampleTimeUs;
    public ExtractorOutput extractorOutput;
    public long firstSamplePosition;
    public int firstSampleSize;
    public final int flags;
    public boolean hasOutputFormat;
    public boolean hasOutputSeekMap;
    public boolean isWideBand;
    public int numSamplesWithSameSize;
    public final byte[] scratch;
    @Nullable
    public SeekMap seekMap;
    public long timeOffsetUs;
    public TrackOutput trackOutput;
    public static final ExtractorsFactory FACTORY = AmrExtractor$$Lambda$0.$instance;
    public static final int[] frameSizeBytesByTypeNb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    public static final int[] frameSizeBytesByTypeWb = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    public static final byte[] amrSignatureNb = Util.getUtf8Bytes("#!AMR\n");
    public static final byte[] amrSignatureWb = Util.getUtf8Bytes("#!AMR-WB\n");
    public static final int MAX_FRAME_SIZE_BYTES = frameSizeBytesByTypeWb[8];

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/amr/AmrExtractor$Flags.class */
    public @interface Flags {
    }

    public AmrExtractor() {
        this(0);
    }

    public AmrExtractor(int i) {
        this.flags = i;
        this.scratch = new byte[1];
        this.firstSampleSize = -1;
    }

    public static byte[] amrSignatureNb() {
        byte[] bArr = amrSignatureNb;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public static byte[] amrSignatureWb() {
        byte[] bArr = amrSignatureWb;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public static int frameSizeBytesByTypeNb(int i) {
        return frameSizeBytesByTypeNb[i];
    }

    public static int frameSizeBytesByTypeWb(int i) {
        return frameSizeBytesByTypeWb[i];
    }

    public static int getBitrateFromFrameSize(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    private SeekMap getConstantBitrateSeekMap(long j) {
        return new ConstantBitrateSeekMap(j, this.firstSamplePosition, getBitrateFromFrameSize(this.firstSampleSize, SilenceSkippingAudioProcessor.PADDING_SILENCE_US), this.firstSampleSize);
    }

    private int getFrameSizeInBytes(int i) throws ParserException {
        if (!isValidFrameType(i)) {
            String str = this.isWideBand ? "WB" : "NB";
            StringBuilder sb = new StringBuilder(str.length() + 35);
            sb.append("Illegal AMR ");
            sb.append(str);
            sb.append(" frame type ");
            sb.append(i);
            throw new ParserException(sb.toString());
        }
        return this.isWideBand ? frameSizeBytesByTypeWb[i] : frameSizeBytesByTypeNb[i];
    }

    private boolean isNarrowBandValidFrameType(int i) {
        return !this.isWideBand && (i < 12 || i > 14);
    }

    private boolean isValidFrameType(int i) {
        return i >= 0 && i <= 15 && (isWideBandValidFrameType(i) || isNarrowBandValidFrameType(i));
    }

    private boolean isWideBandValidFrameType(int i) {
        return this.isWideBand && (i < 10 || i > 13);
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$AmrExtractor() {
        return new Extractor[]{new AmrExtractor()};
    }

    private void maybeOutputFormat() {
        if (!this.hasOutputFormat) {
            this.hasOutputFormat = true;
            this.trackOutput.format(Format.createAudioSampleFormat(null, this.isWideBand ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR_NB, null, -1, MAX_FRAME_SIZE_BYTES, 1, this.isWideBand ? SAMPLE_RATE_WB : 8000, -1, null, null, 0, null));
        }
    }

    private void maybeOutputSeekMap(long j, int i) {
        int i2;
        if (!this.hasOutputSeekMap) {
            if ((this.flags & 1) == 0 || j == -1 || !((i2 = this.firstSampleSize) == -1 || i2 == this.currentSampleSize)) {
                this.seekMap = new SeekMap.Unseekable(C0463C.TIME_UNSET);
                this.extractorOutput.seekMap(this.seekMap);
                this.hasOutputSeekMap = true;
            } else if (this.numSamplesWithSameSize >= 20 || i == -1) {
                this.seekMap = getConstantBitrateSeekMap(j);
                this.extractorOutput.seekMap(this.seekMap);
                this.hasOutputSeekMap = true;
            }
        }
    }

    private boolean peekAmrSignature(ExtractorInput extractorInput, byte[] bArr) throws IOException, InterruptedException {
        extractorInput.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        extractorInput.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int peekNextSampleSize(ExtractorInput extractorInput) throws IOException, InterruptedException {
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.scratch, 0, 1);
        byte b = this.scratch[0];
        if ((b & 131) <= 0) {
            return getFrameSizeInBytes((b >> 3) & 15);
        }
        StringBuilder sb = new StringBuilder(42);
        sb.append("Invalid padding bits for frame header ");
        sb.append((int) b);
        throw new ParserException(sb.toString());
    }

    private boolean readAmrHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (peekAmrSignature(extractorInput, amrSignatureNb)) {
            this.isWideBand = false;
            extractorInput.skipFully(amrSignatureNb.length);
            return true;
        } else if (!peekAmrSignature(extractorInput, amrSignatureWb)) {
            return false;
        } else {
            this.isWideBand = true;
            extractorInput.skipFully(amrSignatureWb.length);
            return true;
        }
    }

    private int readSample(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (this.currentSampleBytesRemaining == 0) {
            try {
                this.currentSampleSize = peekNextSampleSize(extractorInput);
                this.currentSampleBytesRemaining = this.currentSampleSize;
                if (this.firstSampleSize == -1) {
                    this.firstSamplePosition = extractorInput.getPosition();
                    this.firstSampleSize = this.currentSampleSize;
                }
                if (this.firstSampleSize == this.currentSampleSize) {
                    this.numSamplesWithSameSize++;
                }
            } catch (EOFException e) {
                return -1;
            }
        }
        int sampleData = this.trackOutput.sampleData(extractorInput, this.currentSampleBytesRemaining, true);
        if (sampleData == -1) {
            return -1;
        }
        this.currentSampleBytesRemaining -= sampleData;
        if (this.currentSampleBytesRemaining > 0) {
            return 0;
        }
        this.trackOutput.sampleMetadata(this.timeOffsetUs + this.currentSampleTimeUs, 1, this.currentSampleSize, 0, null);
        this.currentSampleTimeUs += SilenceSkippingAudioProcessor.PADDING_SILENCE_US;
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        if (extractorInput.getPosition() != 0 || readAmrHeader(extractorInput)) {
            maybeOutputFormat();
            int readSample = readSample(extractorInput);
            maybeOutputSeekMap(extractorInput.getLength(), readSample);
            return readSample;
        }
        throw new ParserException("Could not find AMR header.");
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        this.currentSampleTimeUs = 0L;
        this.currentSampleSize = 0;
        this.currentSampleBytesRemaining = 0;
        if (j != 0) {
            SeekMap seekMap = this.seekMap;
            if (seekMap instanceof ConstantBitrateSeekMap) {
                this.timeOffsetUs = ((ConstantBitrateSeekMap) seekMap).getTimeUsAtPosition(j);
                return;
            }
        }
        this.timeOffsetUs = 0L;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return readAmrHeader(extractorInput);
    }
}
