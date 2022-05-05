package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.BasePlayer;
import androidx.media2.exoplayer.external.Player;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$5.class */
public final /* synthetic */ class ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$5 implements BasePlayer.ListenerInvocation {
    public static final BasePlayer.ListenerInvocation $instance = new ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$5();

    @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
    public void invokeListener(Player.EventListener eventListener) {
        eventListener.onSeekProcessed();
    }
}
