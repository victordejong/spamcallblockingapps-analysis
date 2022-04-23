package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator$$Lambda$0.class */
public final /* synthetic */ class TrackBitrateEstimator$$Lambda$0 implements TrackBitrateEstimator {
    public static final TrackBitrateEstimator $instance = new TrackBitrateEstimator$$Lambda$0();

    @Override // androidx.media2.exoplayer.external.trackselection.TrackBitrateEstimator
    public int[] getBitrates(Format[] formatArr, List list, MediaChunkIterator[] mediaChunkIteratorArr, int[] iArr) {
        int[] formatBitrates;
        formatBitrates = TrackSelectionUtil.getFormatBitrates(formatArr, iArr);
        return formatBitrates;
    }
}
