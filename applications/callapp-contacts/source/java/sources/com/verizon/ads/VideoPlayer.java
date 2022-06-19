package com.verizon.ads;

import android.net.Uri;
import android.os.Parcelable;
import android.view.AbsSavedState;
import android.view.SurfaceView;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/VideoPlayer.class */
public interface VideoPlayer extends Component {
    public static final int COMPLETED = 6;
    public static final int ERROR = 7;
    public static final int IDLE = 0;
    public static final int LOADED = 2;
    public static final int LOADING = 1;
    public static final int PAUSED = 5;
    public static final int PLAYING = 4;
    public static final int READY = 3;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VideoPlayer$VideoPlayerListener.class */
    public interface VideoPlayerListener {
        void onClick(VideoPlayer videoPlayer);

        void onComplete(VideoPlayer videoPlayer);

        void onError(VideoPlayer videoPlayer);

        void onLoaded(VideoPlayer videoPlayer);

        void onPaused(VideoPlayer videoPlayer);

        void onPlay(VideoPlayer videoPlayer);

        void onProgress(VideoPlayer videoPlayer, int i);

        void onReady(VideoPlayer videoPlayer);

        void onSeekCompleted(VideoPlayer videoPlayer);

        void onUnloaded(VideoPlayer videoPlayer);

        void onVideoSizeChanged(int i, int i2);

        void onVolumeChanged(VideoPlayer videoPlayer, float f);
    }

    int getCurrentPosition();

    int getDuration();

    int getState();

    int getVideoHeight();

    int getVideoWidth();

    float getVolume();

    void load(Uri uri);

    void load(String str);

    void pause();

    void play();

    void registerListener(VideoPlayerListener videoPlayerListener);

    void releaseAudioFocus();

    void replay();

    void restoreInstanceState(AbsSavedState absSavedState);

    AbsSavedState saveInstanceState(Parcelable parcelable);

    void seekTo(int i);

    void setAudioFocus();

    void setProgressInterval(int i);

    void setSurfaceView(SurfaceView surfaceView);

    void setVolume(float f);

    void unload();

    void unregisterListener(VideoPlayerListener videoPlayerListener);
}
