package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.media.MediaPlayer;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.VideoPlayerActivity$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b.class */
public class VideoPlayerActivity$b implements MediaPlayer.OnPreparedListener {

    /* renamed from: a */
    public final /* synthetic */ VideoPlayerActivity f2813a;

    public VideoPlayerActivity$b(VideoPlayerActivity videoPlayerActivity) {
        this.f2813a = videoPlayerActivity;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        VideoPlayerActivity.A(this.f2813a, true);
        this.f2813a.findViewById(16908292).setVisibility(8);
        this.f2813a.findViewById(2131362224).setVisibility(0);
        VideoPlayerActivity.B(this.f2813a).start();
    }
}
