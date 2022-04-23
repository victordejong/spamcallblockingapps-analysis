package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.DefaultExtractorInput;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.source.chunk.ChunkExtractorWrapper;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk.class */
public class ContainerMediaChunk extends BaseMediaChunk {
    public static final PositionHolder DUMMY_POSITION_HOLDER = new PositionHolder();
    public final int chunkCount;
    public final ChunkExtractorWrapper extractorWrapper;
    public volatile boolean loadCanceled;
    public boolean loadCompleted;
    public long nextLoadPosition;
    public final long sampleOffsetUs;

    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, long j, long j2, long j3, long j4, long j5, int i2, long j6, ChunkExtractorWrapper chunkExtractorWrapper) {
        super(dataSource, dataSpec, format, i, obj, j, j2, j3, j4, j5);
        this.chunkCount = i2;
        this.sampleOffsetUs = j6;
        this.extractorWrapper = chunkExtractorWrapper;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunk
    public long getNextChunkIndex() {
        return this.chunkIndex + this.chunkCount;
    }

    public ChunkExtractorWrapper.TrackOutputProvider getTrackOutputProvider(BaseMediaChunkOutput baseMediaChunkOutput) {
        return baseMediaChunkOutput;
    }

    @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
    public final void load() throws IOException, InterruptedException {
        DataSpec subrange = this.dataSpec.subrange(this.nextLoadPosition);
        try {
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, subrange.absoluteStreamPosition, this.dataSource.open(subrange));
            if (this.nextLoadPosition == 0) {
                BaseMediaChunkOutput output = getOutput();
                output.setSampleOffsetUs(this.sampleOffsetUs);
                this.extractorWrapper.init(getTrackOutputProvider(output), this.clippedStartTimeUs == C0463C.TIME_UNSET ? C0463C.TIME_UNSET : this.clippedStartTimeUs - this.sampleOffsetUs, this.clippedEndTimeUs == C0463C.TIME_UNSET ? C0463C.TIME_UNSET : this.clippedEndTimeUs - this.sampleOffsetUs);
            }
            Extractor extractor = this.extractorWrapper.extractor;
            boolean z = false;
            int i = 0;
            while (i == 0 && !this.loadCanceled) {
                i = extractor.read(defaultExtractorInput, DUMMY_POSITION_HOLDER);
            }
            if (i != 1) {
                z = true;
            }
            Assertions.checkState(z);
            this.nextLoadPosition = defaultExtractorInput.getPosition() - this.dataSpec.absoluteStreamPosition;
            Util.closeQuietly(this.dataSource);
            this.loadCompleted = true;
        } catch (Throwable th) {
            Util.closeQuietly(this.dataSource);
            throw th;
        }
    }
}
