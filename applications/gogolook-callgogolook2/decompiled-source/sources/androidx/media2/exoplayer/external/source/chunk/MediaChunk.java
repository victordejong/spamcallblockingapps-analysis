package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/MediaChunk.class */
public abstract class MediaChunk extends Chunk {
    public final long chunkIndex;

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, long j, long j2, long j3) {
        super(dataSource, dataSpec, 1, format, i, obj, j, j2);
        Assertions.checkNotNull(format);
        this.chunkIndex = j3;
    }

    public long getNextChunkIndex() {
        long j = this.chunkIndex;
        long j2 = -1;
        if (j != -1) {
            j2 = 1 + j;
        }
        return j2;
    }

    public abstract boolean isLoadCompleted();
}
