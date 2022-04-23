package androidx.media2.exoplayer.external;

import p012b.p076s.p078b.p079a.AbstractC1252n0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/IllegalSeekPositionException.class */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final AbstractC1252n0 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(AbstractC1252n0 n0Var, int i, long j) {
        this.timeline = n0Var;
        this.windowIndex = i;
        this.positionMs = j;
    }
}
