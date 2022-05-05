package androidx.media2.exoplayer.external.extractor;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/DummyExtractorOutput.class */
public final class DummyExtractorOutput implements ExtractorOutput {
    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public void endTracks() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        return new DummyTrackOutput();
    }
}
