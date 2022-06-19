package com.google.android.exoplayer2;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition.class */
public final class ExoPlayerImplInternal$SeekPosition {
    public final Timeline timeline;
    public final int windowIndex;
    public final long windowPositionUs;

    public ExoPlayerImplInternal$SeekPosition(Timeline timeline, int i, long j) {
        this.timeline = timeline;
        this.windowIndex = i;
        this.windowPositionUs = j;
    }
}
