package com.google.android.exoplayer2;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayerImplInternal$1.class */
public class ExoPlayerImplInternal$1 implements Runnable {
    public final /* synthetic */ ExoPlayerImplInternal this$0;
    public final /* synthetic */ PlayerMessage val$message;

    public ExoPlayerImplInternal$1(ExoPlayerImplInternal exoPlayerImplInternal, PlayerMessage playerMessage) {
        this.this$0 = exoPlayerImplInternal;
        this.val$message = playerMessage;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ExoPlayerImplInternal.access$400(this.this$0, this.val$message);
        } catch (ExoPlaybackException e) {
            Log.e("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }
}
