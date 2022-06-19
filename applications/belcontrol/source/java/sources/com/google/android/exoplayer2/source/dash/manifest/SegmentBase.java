package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/SegmentBase.class */
public abstract class SegmentBase {
    public final RangedUri initialization;
    public final long presentationTimeOffset;
    public final long timescale;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement.class */
    public static class SegmentTimelineElement {
        public final long duration;
        public final long startTime;

        public SegmentTimelineElement(long j, long j2) {
            this.startTime = j;
            this.duration = j2;
        }
    }

    public SegmentBase(RangedUri rangedUri, long j, long j2) {
        this.initialization = rangedUri;
        this.timescale = j;
        this.presentationTimeOffset = j2;
    }

    public RangedUri getInitialization(Representation representation) {
        return this.initialization;
    }

    public long getPresentationTimeOffsetUs() {
        return Util.scaleLargeTimestamp(this.presentationTimeOffset, C0515C.MICROS_PER_SECOND, this.timescale);
    }
}
