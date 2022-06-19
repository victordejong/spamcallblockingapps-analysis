package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator.class */
public final class BaseTrackSelection$DecreasingBandwidthComparator implements Comparator<Format> {
    private BaseTrackSelection$DecreasingBandwidthComparator() {
    }

    public int compare(Format format, Format format2) {
        return format2.bitrate - format.bitrate;
    }
}
