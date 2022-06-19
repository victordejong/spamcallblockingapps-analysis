package pl.droidsonroids.gif;

import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import pl.droidsonroids.gif.GifTextureView;
/* renamed from: pl.droidsonroids.gif.i */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/i.class */
public class TextureView$SurfaceTextureListenerC9707i implements TextureView.SurfaceTextureListener {

    /* renamed from: d */
    private final GifTextureView.AbstractC9686b f40978d;

    public TextureView$SurfaceTextureListenerC9707i(GifTextureView.AbstractC9686b abstractC9686b) {
        this.f40978d = abstractC9686b;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = new Surface(surfaceTexture);
        Canvas lockCanvas = surface.lockCanvas(null);
        this.f40978d.m75a(lockCanvas);
        surface.unlockCanvasAndPost(lockCanvas);
        surface.release();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
