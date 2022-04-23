package androidx.media2.exoplayer.external.source.chunk;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.upstream.StatsDataSource;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/Chunk.class */
public abstract class Chunk implements Loader.Loadable {
    public final StatsDataSource dataSource;
    public final DataSpec dataSpec;
    public final long endTimeUs;
    public final long startTimeUs;
    public final Format trackFormat;
    @Nullable
    public final Object trackSelectionData;
    public final int trackSelectionReason;
    public final int type;

    public Chunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, int i2, @Nullable Object obj, long j, long j2) {
        this.dataSource = new StatsDataSource(dataSource);
        this.dataSpec = (DataSpec) Assertions.checkNotNull(dataSpec);
        this.type = i;
        this.trackFormat = format;
        this.trackSelectionReason = i2;
        this.trackSelectionData = obj;
        this.startTimeUs = j;
        this.endTimeUs = j2;
    }

    public final long bytesLoaded() {
        return this.dataSource.getBytesRead();
    }

    public final long getDurationUs() {
        return this.endTimeUs - this.startTimeUs;
    }

    public final Map<String, List<String>> getResponseHeaders() {
        return this.dataSource.getLastResponseHeaders();
    }

    public final Uri getUri() {
        return this.dataSource.getLastOpenedUri();
    }
}
