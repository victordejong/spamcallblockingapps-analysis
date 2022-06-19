package com.pubmatic.sdk.video.player;

import android.widget.FrameLayout;
import com.pubmatic.sdk.video.player.POBVideoPlayerView;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayer.class */
public interface POBVideoPlayer {
    void destroy();

    POBPlayerController getControllerView();

    int getMediaDuration();

    POBVideoPlayerView.EnumC1992f getPlayerState();

    boolean isMute();

    void load(String str);

    void mute();

    void pause();

    void play();

    void playOnMute(boolean z);

    void setAutoPlayOnForeground(boolean z);

    void setControllerView(POBPlayerController pOBPlayerController, FrameLayout.LayoutParams layoutParams);

    void setListener(POBVideoPlayerView.POBVideoPlayerListener pOBVideoPlayerListener);

    void setPrepareTimeout(int i);

    void stop();

    void unMute();
}
