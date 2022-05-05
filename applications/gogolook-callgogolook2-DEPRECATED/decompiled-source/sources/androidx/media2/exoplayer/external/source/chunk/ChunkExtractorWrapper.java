package androidx.media2.exoplayer.external.source.chunk;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.DummyTrackOutput;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper.class */
public final class ChunkExtractorWrapper implements ExtractorOutput {
    public final SparseArray<BindingTrackOutput> bindingTrackOutputs = new SparseArray<>();
    public long endTimeUs;
    public final Extractor extractor;
    public boolean extractorInitialized;
    public final Format primaryTrackManifestFormat;
    public final int primaryTrackType;
    public Format[] sampleFormats;
    public SeekMap seekMap;
    public TrackOutputProvider trackOutputProvider;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$BindingTrackOutput.class */
    public static final class BindingTrackOutput implements TrackOutput {
        public final DummyTrackOutput dummyTrackOutput = new DummyTrackOutput();
        public long endTimeUs;

        /* renamed from: id */
        public final int f99id;
        public final Format manifestFormat;
        public Format sampleFormat;
        public TrackOutput trackOutput;
        public final int type;

        public BindingTrackOutput(int i, int i2, Format format) {
            this.f99id = i;
            this.type = i2;
            this.manifestFormat = format;
        }

        public void bind(TrackOutputProvider trackOutputProvider, long j) {
            if (trackOutputProvider == null) {
                this.trackOutput = this.dummyTrackOutput;
                return;
            }
            this.endTimeUs = j;
            this.trackOutput = trackOutputProvider.track(this.f99id, this.type);
            Format format = this.sampleFormat;
            if (format != null) {
                this.trackOutput.format(format);
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
        public void format(Format format) {
            Format format2 = this.manifestFormat;
            Format format3 = format;
            if (format2 != null) {
                format3 = format.copyWithManifestFormatInfo(format2);
            }
            this.sampleFormat = format3;
            this.trackOutput.format(this.sampleFormat);
        }

        @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
        public int sampleData(ExtractorInput extractorInput, int i, boolean z) throws IOException, InterruptedException {
            return this.trackOutput.sampleData(extractorInput, i, z);
        }

        @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
        public void sampleData(ParsableByteArray parsableByteArray, int i) {
            this.trackOutput.sampleData(parsableByteArray, i);
        }

        @Override // androidx.media2.exoplayer.external.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
            long j2 = this.endTimeUs;
            if (j2 != C0463C.TIME_UNSET && j >= j2) {
                this.trackOutput = this.dummyTrackOutput;
            }
            this.trackOutput.sampleMetadata(j, i, i2, i3, cryptoData);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider.class */
    public interface TrackOutputProvider {
        TrackOutput track(int i, int i2);
    }

    public ChunkExtractorWrapper(Extractor extractor, int i, Format format) {
        this.extractor = extractor;
        this.primaryTrackType = i;
        this.primaryTrackManifestFormat = format;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public void endTracks() {
        Format[] formatArr = new Format[this.bindingTrackOutputs.size()];
        for (int i = 0; i < this.bindingTrackOutputs.size(); i++) {
            formatArr[i] = this.bindingTrackOutputs.valueAt(i).sampleFormat;
        }
        this.sampleFormats = formatArr;
    }

    public Format[] getSampleFormats() {
        return this.sampleFormats;
    }

    public SeekMap getSeekMap() {
        return this.seekMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    public void init(@Nullable TrackOutputProvider trackOutputProvider, long j, long j2) {
        this.trackOutputProvider = trackOutputProvider;
        this.endTimeUs = j2;
        if (!this.extractorInitialized) {
            this.extractor.init(this);
            if (j != C0463C.TIME_UNSET) {
                this.extractor.seek(0L, j);
            }
            this.extractorInitialized = true;
            return;
        }
        Extractor extractor = this.extractor;
        long j3 = j;
        if (j == C0463C.TIME_UNSET) {
            j3 = 0;
        }
        extractor.seek(0L, j3);
        for (int i = 0; i < this.bindingTrackOutputs.size(); i++) {
            this.bindingTrackOutputs.valueAt(i).bind(trackOutputProvider, j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        BindingTrackOutput bindingTrackOutput = this.bindingTrackOutputs.get(i);
        BindingTrackOutput bindingTrackOutput2 = bindingTrackOutput;
        if (bindingTrackOutput == null) {
            Assertions.checkState(this.sampleFormats == null);
            bindingTrackOutput2 = new BindingTrackOutput(i, i2, i2 == this.primaryTrackType ? this.primaryTrackManifestFormat : null);
            bindingTrackOutput2.bind(this.trackOutputProvider, this.endTimeUs);
            this.bindingTrackOutputs.put(i, bindingTrackOutput2);
        }
        return bindingTrackOutput2;
    }
}
