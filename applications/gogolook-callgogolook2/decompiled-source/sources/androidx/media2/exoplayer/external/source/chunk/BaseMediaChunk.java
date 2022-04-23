package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/BaseMediaChunk.class */
public abstract class BaseMediaChunk extends MediaChunk {
    public final long clippedEndTimeUs;
    public final long clippedStartTimeUs;
    public int[] firstSampleIndices;
    public BaseMediaChunkOutput output;

    public BaseMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, long j, long j2, long j3, long j4, long j5) {
        super(dataSource, dataSpec, format, i, obj, j, j2, j5);
        this.clippedStartTimeUs = j3;
        this.clippedEndTimeUs = j4;
    }

    public final int getFirstSampleIndex(int i) {
        return this.firstSampleIndices[i];
    }

    public final BaseMediaChunkOutput getOutput() {
        return this.output;
    }

    public void init(BaseMediaChunkOutput baseMediaChunkOutput) {
        this.output = baseMediaChunkOutput;
        this.firstSampleIndices = baseMediaChunkOutput.getWriteIndices();
    }
}
