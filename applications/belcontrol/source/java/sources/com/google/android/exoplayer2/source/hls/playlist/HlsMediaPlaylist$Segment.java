package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.C0515C;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment.class */
public final class HlsMediaPlaylist$Segment implements Comparable<Long> {
    public final long byterangeLength;
    public final long byterangeOffset;
    public final long durationUs;
    public final String encryptionIV;
    public final String fullSegmentEncryptionKeyUri;
    public final boolean hasGapTag;
    public final HlsMediaPlaylist$Segment initializationSegment;
    public final int relativeDiscontinuitySequence;
    public final long relativeStartTimeUs;
    public final String url;

    public HlsMediaPlaylist$Segment(String str, long j, long j2) {
        this(str, null, 0L, -1, C0515C.TIME_UNSET, null, null, j, j2, false);
    }

    public HlsMediaPlaylist$Segment(String str, HlsMediaPlaylist$Segment hlsMediaPlaylist$Segment, long j, int i, long j2, String str2, String str3, long j3, long j4, boolean z) {
        this.url = str;
        this.initializationSegment = hlsMediaPlaylist$Segment;
        this.durationUs = j;
        this.relativeDiscontinuitySequence = i;
        this.relativeStartTimeUs = j2;
        this.fullSegmentEncryptionKeyUri = str2;
        this.encryptionIV = str3;
        this.byterangeOffset = j3;
        this.byterangeLength = j4;
        this.hasGapTag = z;
    }

    public int compareTo(Long l) {
        return this.relativeStartTimeUs > l.longValue() ? 1 : this.relativeStartTimeUs < l.longValue() ? -1 : 0;
    }
}
