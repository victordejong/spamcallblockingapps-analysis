package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.media.MediaPlayer;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.VideoPlayerActivity$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$c.class */
public class VideoPlayerActivity$c implements MediaPlayer.OnErrorListener {

    /* renamed from: a */
    public final /* synthetic */ VideoPlayerActivity f2814a;

    public VideoPlayerActivity$c(VideoPlayerActivity videoPlayerActivity) {
        this.f2814a = videoPlayerActivity;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        VideoPlayerActivity.C(this.f2814a);
        return true;
    }
}
