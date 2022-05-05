package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import java.util.NoSuchElementException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/MediaChunkIterator.class */
public interface MediaChunkIterator {
    public static final MediaChunkIterator EMPTY = new MediaChunkIterator() { // from class: androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator.1
        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            throw new NoSuchElementException();
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            throw new NoSuchElementException();
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            throw new NoSuchElementException();
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public boolean isEnded() {
            return true;
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public boolean next() {
            return false;
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public void reset() {
        }
    };

    long getChunkEndTimeUs();

    long getChunkStartTimeUs();

    DataSpec getDataSpec();

    boolean isEnded();

    boolean next();

    void reset();
}
