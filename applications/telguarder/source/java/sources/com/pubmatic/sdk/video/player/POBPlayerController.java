package com.pubmatic.sdk.video.player;

import android.content.Context;
import android.widget.FrameLayout;
import com.pubmatic.sdk.video.player.POBVideoPlayerView;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBPlayerController.class */
public abstract class POBPlayerController extends FrameLayout implements POBVideoPlayerView.POBVideoPlayerListener {
    public POBPlayerController(Context context) {
        super(context);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onBufferUpdate(int i) {
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onCompletion() {
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onFailure(int i, String str) {
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onReadyToPlay(POBVideoPlayerView pOBVideoPlayerView) {
    }

    public abstract void setVideoPlayerEvents(POBVideoPlayer pOBVideoPlayer);
}
