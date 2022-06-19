package com.google.android.exoplayer2;

import com.google.android.exoplayer2.PlayerMessage;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage.class */
public final class ExoPlayer$ExoPlayerMessage {
    public final Object message;
    public final int messageType;
    public final PlayerMessage.Target target;

    @Deprecated
    public ExoPlayer$ExoPlayerMessage(PlayerMessage.Target target, int i, Object obj) {
        this.target = target;
        this.messageType = i;
        this.message = obj;
    }
}
