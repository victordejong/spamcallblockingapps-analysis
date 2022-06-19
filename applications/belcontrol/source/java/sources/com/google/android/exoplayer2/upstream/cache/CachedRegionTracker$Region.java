package com.google.android.exoplayer2.upstream.cache;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region.class */
public class CachedRegionTracker$Region implements Comparable<CachedRegionTracker$Region> {
    public long endOffset;
    public int endOffsetIndex;
    public long startOffset;

    public CachedRegionTracker$Region(long j, long j2) {
        this.startOffset = j;
        this.endOffset = j2;
    }

    public int compareTo(CachedRegionTracker$Region cachedRegionTracker$Region) {
        long j = this.startOffset;
        long j2 = cachedRegionTracker$Region.startOffset;
        return j < j2 ? -1 : j == j2 ? 0 : 1;
    }
}
