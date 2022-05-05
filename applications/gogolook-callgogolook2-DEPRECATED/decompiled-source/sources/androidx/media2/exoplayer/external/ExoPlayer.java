package androidx.media2.exoplayer.external;

import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.PlayerMessage;
import androidx.media2.exoplayer.external.source.MediaSource;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayer.class */
public interface ExoPlayer extends Player {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayer$ExoPlayerComponent.class */
    public interface ExoPlayerComponent extends PlayerMessage.Target {
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage.class */
    public static final class ExoPlayerMessage {
        public final Object message;
        public final int messageType;
        public final PlayerMessage.Target target;

        @Deprecated
        public ExoPlayerMessage(PlayerMessage.Target target, int i, Object obj) {
            this.target = target;
            this.messageType = i;
            this.message = obj;
        }
    }

    @Deprecated
    void blockingSendMessages(ExoPlayerMessage... exoPlayerMessageArr);

    PlayerMessage createMessage(PlayerMessage.Target target);

    Looper getPlaybackLooper();

    SeekParameters getSeekParameters();

    void prepare(MediaSource mediaSource);

    void prepare(MediaSource mediaSource, boolean z, boolean z2);

    void retry();

    @Deprecated
    void sendMessages(ExoPlayerMessage... exoPlayerMessageArr);

    void setForegroundMode(boolean z);

    void setSeekParameters(@Nullable SeekParameters seekParameters);
}
