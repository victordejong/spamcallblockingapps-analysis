package com.google.android.exoplayer2.source;

import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException.class */
public final class MergingMediaSource$IllegalMergeException extends IOException {
    public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
    public final int reason;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException$Reason.class */
    public @interface Reason {
    }

    public MergingMediaSource$IllegalMergeException(int i) {
        this.reason = i;
    }
}
