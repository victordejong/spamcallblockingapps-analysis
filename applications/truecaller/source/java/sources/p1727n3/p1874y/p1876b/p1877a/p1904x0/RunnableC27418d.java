package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;
/* renamed from: n3.y.b.a.x0.d */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/d.class */
public final class RunnableC27418d implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: g */
    public static final int[] f77156g = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a */
    public final Handler f77157a;

    /* renamed from: b */
    public final int[] f77158b = new int[1];

    /* renamed from: c */
    public EGLDisplay f77159c;

    /* renamed from: d */
    public EGLContext f77160d;

    /* renamed from: e */
    public EGLSurface f77161e;

    /* renamed from: f */
    public SurfaceTexture f77162f;

    /* renamed from: n3.y.b.a.x0.d$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/d$b.class */
    public static final class C27420b extends RuntimeException {
        public C27420b(String str, C27419a c27419a) {
            super(str);
        }
    }

    public RunnableC27418d(Handler handler) {
        this.f77157a = handler;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f77157a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        SurfaceTexture surfaceTexture = this.f77162f;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
