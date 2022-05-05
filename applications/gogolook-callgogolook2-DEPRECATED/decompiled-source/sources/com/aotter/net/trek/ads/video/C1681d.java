package com.aotter.net.trek.ads.video;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.widget.VideoView;
/* renamed from: com.aotter.net.trek.ads.video.d */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/d.class */
public class C1681d implements MediaPlayer.OnPreparedListener {

    /* renamed from: a */
    public final /* synthetic */ AudioManager f1256a;

    /* renamed from: b */
    public final /* synthetic */ NativeVideoViewController f1257b;

    public C1681d(NativeVideoViewController nativeVideoViewController, AudioManager audioManager) {
        this.f1257b = nativeVideoViewController;
        this.f1256a = audioManager;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        VideoView videoView;
        this.f1257b.f1249t = true;
        videoView = this.f1257b.f1235f;
        new Thread(new RunnableC1682e(this, videoView.getDuration())).start();
    }
}
