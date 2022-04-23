package com.facebook.ads;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/MediaViewListener.class */
public interface MediaViewListener {
    void onComplete(MediaView mediaView);

    void onEnterFullscreen(MediaView mediaView);

    void onExitFullscreen(MediaView mediaView);

    void onFullscreenBackground(MediaView mediaView);

    void onFullscreenForeground(MediaView mediaView);

    void onPause(MediaView mediaView);

    void onPlay(MediaView mediaView);

    void onVolumeChange(MediaView mediaView, float f);
}
