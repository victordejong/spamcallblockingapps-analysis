package androidx.media2.exoplayer.external.extractor;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/DummyTrackOutput.class */
public final class DummyTrackOutput implements TrackOutput {
    @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
    public void format(Format format) {
    }

    @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
    public int sampleData(ExtractorInput extractorInput, int i, boolean z) throws IOException, InterruptedException {
        int skip = extractorInput.skip(i);
        if (skip != -1) {
            return skip;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(i);
    }

    @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
    public void sampleMetadata(long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
    }
}
