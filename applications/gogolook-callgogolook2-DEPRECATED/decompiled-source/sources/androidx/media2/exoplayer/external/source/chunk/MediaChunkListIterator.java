package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/MediaChunkListIterator.class */
public final class MediaChunkListIterator extends BaseMediaChunkIterator {
    public final List<? extends MediaChunk> chunks;
    public final boolean reverseOrder;

    public MediaChunkListIterator(List<? extends MediaChunk> list, boolean z) {
        super(0L, list.size() - 1);
        this.chunks = list;
        this.reverseOrder = z;
    }

    private MediaChunk getCurrentChunk() {
        int currentIndex = (int) super.getCurrentIndex();
        int i = currentIndex;
        if (this.reverseOrder) {
            i = (this.chunks.size() - 1) - currentIndex;
        }
        return (MediaChunk) this.chunks.get(i);
    }

    @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
    public long getChunkEndTimeUs() {
        return getCurrentChunk().endTimeUs;
    }

    @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
    public long getChunkStartTimeUs() {
        return getCurrentChunk().startTimeUs;
    }

    @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
    public DataSpec getDataSpec() {
        return getCurrentChunk().dataSpec;
    }
}
