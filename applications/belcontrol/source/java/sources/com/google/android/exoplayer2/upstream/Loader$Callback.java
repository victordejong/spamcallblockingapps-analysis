package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.Loader$Loadable;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$Callback.class */
public interface Loader$Callback<T extends Loader$Loadable> {
    void onLoadCanceled(T t, long j, long j2, boolean z);

    void onLoadCompleted(T t, long j, long j2);

    int onLoadError(T t, long j, long j2, IOException iOException);
}
