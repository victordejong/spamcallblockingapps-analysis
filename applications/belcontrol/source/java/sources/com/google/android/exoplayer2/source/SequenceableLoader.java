package com.google.android.exoplayer2.source;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/SequenceableLoader.class */
public interface SequenceableLoader {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/SequenceableLoader$Callback.class */
    public interface Callback<T extends SequenceableLoader> {
        void onContinueLoadingRequested(T t);
    }

    boolean continueLoading(long j);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    void reevaluateBuffer(long j);
}
