package com.aotter.net.trek.ads.view;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.Surface;
import android.view.TextureView;
import android.widget.MediaController;
/* renamed from: com.aotter.net.trek.ads.view.v */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/v.class */
public class TextureView$SurfaceTextureListenerC1711v implements TextureView.SurfaceTextureListener {

    /* renamed from: a */
    public final /* synthetic */ TextureVideoView f1401a;

    public TextureView$SurfaceTextureListenerC1711v(TextureVideoView textureVideoView) {
        this.f1401a = textureVideoView;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f1401a.f1320p = new Surface(surfaceTexture);
        this.f1401a.m36458b();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Surface surface;
        MediaController mediaController;
        MediaController mediaController2;
        Surface surface2;
        surface = this.f1401a.f1320p;
        if (surface != null) {
            surface2 = this.f1401a.f1320p;
            surface2.release();
            this.f1401a.f1320p = null;
        }
        mediaController = this.f1401a.f1325u;
        if (mediaController != null) {
            mediaController2 = this.f1401a.f1325u;
            mediaController2.hide();
        }
        this.f1401a.m36459a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        int i3;
        MediaPlayer mediaPlayer;
        int i4;
        int i5;
        i3 = this.f1401a.f1319o;
        boolean z = true;
        boolean z2 = i3 == 3;
        if (i <= 0 || i2 <= 0) {
            z = false;
        }
        mediaPlayer = this.f1401a.f1321q;
        if (mediaPlayer != null && z2 && z) {
            i4 = this.f1401a.f1303A;
            if (i4 != 0) {
                TextureVideoView textureVideoView = this.f1401a;
                i5 = textureVideoView.f1303A;
                textureVideoView.seekTo(i5);
            }
            this.f1401a.start();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
