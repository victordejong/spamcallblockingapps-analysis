package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.BasePlayer;
import androidx.media2.exoplayer.external.Player;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$3.class */
public final /* synthetic */ class ExoPlayerImpl$$Lambda$3 implements BasePlayer.ListenerInvocation {
    public static final BasePlayer.ListenerInvocation $instance = new ExoPlayerImpl$$Lambda$3();

    @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
    public void invokeListener(Player.EventListener eventListener) {
        eventListener.onPositionDiscontinuity(1);
    }
}
