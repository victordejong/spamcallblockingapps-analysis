package androidx.media2.exoplayer.external.source;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SequenceableLoader.class */
public interface SequenceableLoader {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SequenceableLoader$Callback.class */
    public interface Callback<T extends SequenceableLoader> {
        void onContinueLoadingRequested(T t);
    }

    boolean continueLoading(long j);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    void reevaluateBuffer(long j);
}
