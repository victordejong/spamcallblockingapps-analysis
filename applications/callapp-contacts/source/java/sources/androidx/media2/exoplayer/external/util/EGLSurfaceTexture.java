package androidx.media2.exoplayer.external.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture.class */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: a */
    public static final int[] f8051a = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: b */
    public final Handler f8052b;

    /* renamed from: c */
    public final int[] f8053c;

    /* renamed from: d */
    public EGLDisplay f8054d;

    /* renamed from: e */
    public EGLContext f8055e;

    /* renamed from: f */
    public EGLSurface f8056f;

    /* renamed from: g */
    public SurfaceTexture f8057g;

    /* renamed from: h */
    private final AbstractC1992a f8058h;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException.class */
    public static final class GlException extends RuntimeException {
        /* JADX INFO: Access modifiers changed from: private */
        public GlException(String str) {
            super(str);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.util.EGLSurfaceTexture$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture$a.class */
    public interface AbstractC1992a {
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    public EGLSurfaceTexture(Handler handler, AbstractC1992a abstractC1992a) {
        this.f8052b = handler;
        this.f8058h = abstractC1992a;
        this.f8053c = new int[1];
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f8052b.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f8057g;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
