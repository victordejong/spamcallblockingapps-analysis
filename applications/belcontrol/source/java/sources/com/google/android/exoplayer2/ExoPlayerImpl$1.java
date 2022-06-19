package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayerImpl$1.class */
public class ExoPlayerImpl$1 extends Handler {
    public final /* synthetic */ ExoPlayerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExoPlayerImpl$1(ExoPlayerImpl exoPlayerImpl, Looper looper) {
        super(looper);
        this.this$0 = exoPlayerImpl;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.this$0.handleEvent(message);
    }
}
