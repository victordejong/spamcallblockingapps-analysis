package com.aotter.net.trek.ads.view;

import android.media.MediaPlayer;
/* renamed from: com.aotter.net.trek.ads.view.m */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/m.class */
public class C1702m implements MediaPlayer.OnPreparedListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoView f1392a;

    public C1702m(NativeVideoView nativeVideoView) {
        this.f1392a = nativeVideoView;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        mediaPlayer.setVolume(0.0f, 0.0f);
    }
}
