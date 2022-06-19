package com.google.android.exoplayer2;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/IllegalSeekPositionException.class */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final Timeline timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(Timeline timeline, int i, long j) {
        this.timeline = timeline;
        this.windowIndex = i;
        this.positionMs = j;
    }
}
