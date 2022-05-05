package androidx.media2.exoplayer.external.extractor.ogg;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ogg/OggExtractor.class */
public class OggExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = OggExtractor$$Lambda$0.$instance;
    public static final int MAX_VERIFICATION_BYTES = 8;
    public ExtractorOutput output;
    public StreamReader streamReader;
    public boolean streamReaderInitialized;

    public static final /* synthetic */ Extractor[] lambda$static$0$OggExtractor() {
        return new Extractor[]{new OggExtractor()};
    }

    public static ParsableByteArray resetPosition(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(0);
        return parsableByteArray;
    }

    private boolean sniffInternal(ExtractorInput extractorInput) throws IOException, InterruptedException {
        OggPageHeader oggPageHeader = new OggPageHeader();
        if (!oggPageHeader.populate(extractorInput, true) || (oggPageHeader.type & 2) != 2) {
            return false;
        }
        int min = Math.min(oggPageHeader.bodySize, 8);
        ParsableByteArray parsableByteArray = new ParsableByteArray(min);
        extractorInput.peekFully(parsableByteArray.data, 0, min);
        if (FlacReader.verifyBitstreamType(resetPosition(parsableByteArray))) {
            this.streamReader = new FlacReader();
            return true;
        } else if (VorbisReader.verifyBitstreamType(resetPosition(parsableByteArray))) {
            this.streamReader = new VorbisReader();
            return true;
        } else if (!OpusReader.verifyBitstreamType(resetPosition(parsableByteArray))) {
            return false;
        } else {
            this.streamReader = new OpusReader();
            return true;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        if (this.streamReader == null) {
            if (sniffInternal(extractorInput)) {
                extractorInput.resetPeekPosition();
            } else {
                throw new ParserException("Failed to determine bitstream type");
            }
        }
        if (!this.streamReaderInitialized) {
            TrackOutput track = this.output.track(0, 1);
            this.output.endTracks();
            this.streamReader.init(this.output, track);
            this.streamReaderInitialized = true;
        }
        return this.streamReader.read(extractorInput, positionHolder);
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        StreamReader streamReader = this.streamReader;
        if (streamReader != null) {
            streamReader.seek(j, j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        try {
            return sniffInternal(extractorInput);
        } catch (ParserException e) {
            return false;
        }
    }
}
