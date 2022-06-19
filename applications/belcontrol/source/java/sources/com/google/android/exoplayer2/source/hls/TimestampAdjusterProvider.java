package com.google.android.exoplayer2.source.hls;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/TimestampAdjusterProvider.class */
public final class TimestampAdjusterProvider {
    private final SparseArray<TimestampAdjuster> timestampAdjusters = new SparseArray<>();

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
