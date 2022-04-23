package androidx.media2.exoplayer.external.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture.class */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f4112a = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: b  reason: collision with root package name */
    public final Handler f4113b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f4114c;

    /* renamed from: d  reason: collision with root package name */
    public EGLDisplay f4115d;
    public EGLContext e;
    public EGLSurface f;
    public SurfaceTexture g;
    private final a h;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException.class */
    public static final class GlException extends RuntimeException {
        private GlException(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture$a.class */
    public interface a {
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    public EGLSurfaceTexture(Handler handler, a aVar) {
        this.f4113b = handler;
        this.h = aVar;
        this.f4114c = new int[1];
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f4113b.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.g;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
