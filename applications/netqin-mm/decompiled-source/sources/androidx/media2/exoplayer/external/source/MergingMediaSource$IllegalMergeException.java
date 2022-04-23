package androidx.media2.exoplayer.external.source;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException.class */
public final class MergingMediaSource$IllegalMergeException extends IOException {
    public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
    public final int reason;

    public MergingMediaSource$IllegalMergeException(int i) {
        this.reason = i;
    }
}
