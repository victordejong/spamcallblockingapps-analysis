package com.google.android.exoplayer2;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/IllegalSeekPositionException.class */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final AbstractC5585y0 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(AbstractC5585y0 abstractC5585y0, int i, long j) {
        this.timeline = abstractC5585y0;
        this.windowIndex = i;
        this.positionMs = j;
    }
}
