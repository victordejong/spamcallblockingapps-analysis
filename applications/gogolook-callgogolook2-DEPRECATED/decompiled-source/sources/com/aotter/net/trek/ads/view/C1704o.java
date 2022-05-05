package com.aotter.net.trek.ads.view;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
/* renamed from: com.aotter.net.trek.ads.view.o */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/o.class */
public class C1704o implements MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: a */
    public final /* synthetic */ TextureVideoView f1394a;

    public C1704o(TextureVideoView textureVideoView) {
        this.f1394a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        this.f1394a.f1323s = mediaPlayer.getVideoWidth();
        this.f1394a.f1324t = mediaPlayer.getVideoHeight();
        i3 = this.f1394a.f1323s;
        if (i3 != 0) {
            i4 = this.f1394a.f1324t;
            if (i4 != 0) {
                SurfaceTexture surfaceTexture = this.f1394a.getSurfaceTexture();
                i5 = this.f1394a.f1323s;
                i6 = this.f1394a.f1324t;
                surfaceTexture.setDefaultBufferSize(i5, i6);
                this.f1394a.requestLayout();
            }
        }
    }
}
