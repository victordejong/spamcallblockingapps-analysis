package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.source.MediaSource;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener.class */
public interface DeferredMediaPeriod$PrepareErrorListener {
    void onPrepareError(MediaSource.MediaPeriodId mediaPeriodId, IOException iOException);
}
