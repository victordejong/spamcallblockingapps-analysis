package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData.class */
public final class ConcatenatingMediaSource$MessageData<T> {
    public final ConcatenatingMediaSource$EventDispatcher actionOnCompletion;
    public final T customData;
    public final int index;

    /* JADX WARN: Multi-variable type inference failed */
    public ConcatenatingMediaSource$MessageData(int i, T t, Runnable runnable) {
        this.index = i;
        this.actionOnCompletion = runnable != null ? new Object(runnable) { // from class: com.google.android.exoplayer2.source.ConcatenatingMediaSource$EventDispatcher
            public final Handler eventHandler;
            public final Runnable runnable;

            {
                this.runnable = runnable;
                this.eventHandler = new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
            }

            public void dispatchEvent() {
                this.eventHandler.post(this.runnable);
            }
        } : null;
        this.customData = t;
    }
}
