package com.aotter.net.trek.ads.view;

import android.media.MediaPlayer;
/* renamed from: com.aotter.net.trek.ads.view.r */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/r.class */
public class C1707r implements MediaPlayer.OnInfoListener {

    /* renamed from: a */
    public final /* synthetic */ TextureVideoView f1397a;

    public C1707r(TextureVideoView textureVideoView) {
        this.f1397a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        MediaPlayer.OnInfoListener onInfoListener;
        MediaPlayer.OnInfoListener onInfoListener2;
        onInfoListener = this.f1397a.f1330z;
        if (onInfoListener == null) {
            return true;
        }
        onInfoListener2 = this.f1397a.f1330z;
        onInfoListener2.onInfo(mediaPlayer, i, i2);
        return true;
    }
}
