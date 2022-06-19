package com.google.android.exoplayer2.upstream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$ReleaseTask.class */
public final class Loader$ReleaseTask implements Runnable {
    private final Loader$ReleaseCallback callback;

    public Loader$ReleaseTask(Loader$ReleaseCallback loader$ReleaseCallback) {
        this.callback = loader$ReleaseCallback;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.callback.onLoaderReleased();
    }
}
