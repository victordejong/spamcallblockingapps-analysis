package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.source.ConcatenatingMediaSource;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ConcatenatingMediaSource$MediaSourceHolder.class */
public final class ConcatenatingMediaSource$MediaSourceHolder implements Comparable<ConcatenatingMediaSource$MediaSourceHolder> {
    public int childIndex;
    public int firstPeriodIndexInChild;
    public int firstWindowIndexInChild;
    public boolean isPrepared;
    public boolean isRemoved;
    public final MediaSource mediaSource;
    public ConcatenatingMediaSource.DeferredTimeline timeline = new ConcatenatingMediaSource.DeferredTimeline();
    public List<DeferredMediaPeriod> activeMediaPeriods = new ArrayList();
    public final Object uid = new Object();

    public ConcatenatingMediaSource$MediaSourceHolder(MediaSource mediaSource) {
        this.mediaSource = mediaSource;
    }

    public int compareTo(ConcatenatingMediaSource$MediaSourceHolder concatenatingMediaSource$MediaSourceHolder) {
        return this.firstPeriodIndexInChild - concatenatingMediaSource$MediaSourceHolder.firstPeriodIndexInChild;
    }

    public void reset(int i, int i2, int i3) {
        this.childIndex = i;
        this.firstWindowIndexInChild = i2;
        this.firstPeriodIndexInChild = i3;
        this.isPrepared = false;
        this.isRemoved = false;
        this.activeMediaPeriods.clear();
    }
}
