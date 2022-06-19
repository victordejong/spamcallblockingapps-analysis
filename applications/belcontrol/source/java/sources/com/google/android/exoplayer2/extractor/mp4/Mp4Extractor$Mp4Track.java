package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.extractor.TrackOutput;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track.class */
public final class Mp4Extractor$Mp4Track {
    public int sampleIndex;
    public final TrackSampleTable sampleTable;
    public final Track track;
    public final TrackOutput trackOutput;

    public Mp4Extractor$Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
        this.track = track;
        this.sampleTable = trackSampleTable;
        this.trackOutput = trackOutput;
    }
}
