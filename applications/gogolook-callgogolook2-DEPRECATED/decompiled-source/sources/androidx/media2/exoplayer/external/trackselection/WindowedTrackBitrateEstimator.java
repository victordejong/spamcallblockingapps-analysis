package androidx.media2.exoplayer.external.trackselection;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator.class */
public final class WindowedTrackBitrateEstimator implements TrackBitrateEstimator {
    public final long maxFutureDurationUs;
    public final long maxPastDurationUs;
    public final boolean useFormatBitrateAsLowerBound;

    public WindowedTrackBitrateEstimator(long j, long j2, boolean z) {
        this.maxPastDurationUs = C0463C.msToUs(j);
        this.maxFutureDurationUs = C0463C.msToUs(j2);
        this.useFormatBitrateAsLowerBound = z;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackBitrateEstimator
    public int[] getBitrates(Format[] formatArr, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr, @Nullable int[] iArr) {
        return (this.maxFutureDurationUs > 0 || this.maxPastDurationUs > 0) ? TrackSelectionUtil.getBitratesUsingPastAndFutureInfo(formatArr, list, this.maxPastDurationUs, mediaChunkIteratorArr, this.maxFutureDurationUs, this.useFormatBitrateAsLowerBound, iArr) : TrackSelectionUtil.getFormatBitrates(formatArr, iArr);
    }
}
