package com.google.android.exoplayer2.offline;

import com.google.android.exoplayer2.upstream.DataSpec;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/SegmentDownloader$Segment.class */
public class SegmentDownloader$Segment implements Comparable<SegmentDownloader$Segment> {
    public final DataSpec dataSpec;
    public final long startTimeUs;

    public SegmentDownloader$Segment(long j, DataSpec dataSpec) {
        this.startTimeUs = j;
        this.dataSpec = dataSpec;
    }

    public int compareTo(SegmentDownloader$Segment segmentDownloader$Segment) {
        int i = ((this.startTimeUs - segmentDownloader$Segment.startTimeUs) > 0L ? 1 : ((this.startTimeUs - segmentDownloader$Segment.startTimeUs) == 0L ? 0 : -1));
        return i == 0 ? 0 : i < 0 ? -1 : 1;
    }
}
