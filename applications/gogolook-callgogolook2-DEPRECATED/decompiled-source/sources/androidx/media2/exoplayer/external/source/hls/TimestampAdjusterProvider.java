package androidx.media2.exoplayer.external.source.hls;

import android.util.SparseArray;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider.class */
public final class TimestampAdjusterProvider {
    public final SparseArray<TimestampAdjuster> timestampAdjusters = new SparseArray<>();

    public TimestampAdjuster getAdjuster(int i) {
        TimestampAdjuster timestampAdjuster = this.timestampAdjusters.get(i);
        TimestampAdjuster timestampAdjuster2 = timestampAdjuster;
        if (timestampAdjuster == null) {
            timestampAdjuster2 = new TimestampAdjuster(Long.MAX_VALUE);
            this.timestampAdjusters.put(i, timestampAdjuster2);
        }
        return timestampAdjuster2;
    }

    public void reset() {
        this.timestampAdjusters.clear();
    }
}
