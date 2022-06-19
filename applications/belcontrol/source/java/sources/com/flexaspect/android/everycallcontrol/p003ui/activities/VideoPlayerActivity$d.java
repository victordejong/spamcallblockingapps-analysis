package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.media.MediaPlayer;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.VideoPlayerActivity$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$d.class */
public class VideoPlayerActivity$d implements MediaPlayer.OnCompletionListener {

    /* renamed from: a */
    public final /* synthetic */ VideoPlayerActivity f2815a;

    public VideoPlayerActivity$d(VideoPlayerActivity videoPlayerActivity) {
        this.f2815a = videoPlayerActivity;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f2815a.finish();
    }
}
