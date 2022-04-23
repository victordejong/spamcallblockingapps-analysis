package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.DefaultExtractorInput;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/InitializationChunk.class */
public final class InitializationChunk extends Chunk {
    public static final PositionHolder DUMMY_POSITION_HOLDER = new PositionHolder();
    public final ChunkExtractorWrapper extractorWrapper;
    public volatile boolean loadCanceled;
    public long nextLoadPosition;

    public InitializationChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, @Nullable Object obj, ChunkExtractorWrapper chunkExtractorWrapper) {
        super(dataSource, dataSpec, 2, format, i, obj, C0463C.TIME_UNSET, C0463C.TIME_UNSET);
        this.extractorWrapper = chunkExtractorWrapper;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
    public void load() throws IOException, InterruptedException {
        DataSpec subrange = this.dataSpec.subrange(this.nextLoadPosition);
        try {
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, subrange.absoluteStreamPosition, this.dataSource.open(subrange));
            if (this.nextLoadPosition == 0) {
                this.extractorWrapper.init(null, C0463C.TIME_UNSET, C0463C.TIME_UNSET);
            }
            Extractor extractor = this.extractorWrapper.extractor;
            int i = 0;
            while (i == 0 && !this.loadCanceled) {
                i = extractor.read(defaultExtractorInput, DUMMY_POSITION_HOLDER);
            }
            boolean z = true;
            if (i == 1) {
                z = false;
            }
            Assertions.checkState(z);
            this.nextLoadPosition = defaultExtractorInput.getPosition() - this.dataSpec.absoluteStreamPosition;
        } finally {
            Util.closeQuietly(this.dataSource);
        }
    }
}
