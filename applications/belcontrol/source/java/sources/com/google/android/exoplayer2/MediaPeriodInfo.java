package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.MediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/MediaPeriodInfo.class */
public final class MediaPeriodInfo {
    public final long contentPositionUs;
    public final long durationUs;
    public final long endPositionUs;

    /* renamed from: id */
    public final MediaSource.MediaPeriodId f3597id;
    public final boolean isFinal;
    public final boolean isLastInTimelinePeriod;
    public final long startPositionUs;

    public MediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f3597id = mediaPeriodId;
        this.startPositionUs = j;
        this.endPositionUs = j2;
        this.contentPositionUs = j3;
        this.durationUs = j4;
        this.isLastInTimelinePeriod = z;
        this.isFinal = z2;
    }

    public MediaPeriodInfo copyWithPeriodIndex(int i) {
        return new MediaPeriodInfo(this.f3597id.copyWithPeriodIndex(i), this.startPositionUs, this.endPositionUs, this.contentPositionUs, this.durationUs, this.isLastInTimelinePeriod, this.isFinal);
    }

    public MediaPeriodInfo copyWithStartPositionUs(long j) {
        return new MediaPeriodInfo(this.f3597id, j, this.endPositionUs, this.contentPositionUs, this.durationUs, this.isLastInTimelinePeriod, this.isFinal);
    }
}
