package cn.jzvd;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import android.view.TextureView;
/* renamed from: cn.jzvd.u */
/* loaded from: classes-dex2jar.jar:cn/jzvd/u.class */
public abstract class AbstractTextureView$SurfaceTextureListenerC2130u implements TextureView.SurfaceTextureListener {
    public static SurfaceTexture SAVED_SURFACE;
    public Handler handler;
    public Jzvd jzvd;
    public Handler mMediaHandler;
    public HandlerThread mMediaHandlerThread;

    public AbstractTextureView$SurfaceTextureListenerC2130u(Jzvd jzvd) {
        this.jzvd = jzvd;
    }

    public abstract long getCurrentPosition();

    public abstract long getDuration();

    public abstract boolean isPlaying();

    public abstract void pause();

    public abstract void prepare();

    public abstract void release();

    public abstract void seekTo(long j);

    public abstract void setSpeed(float f);

    public abstract void setSurface(Surface surface);

    public abstract void setVolume(float f, float f2);

    public abstract void start();
}
