package p193e.p1577m.p1578a.p1596c.p1636q1;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;
/* renamed from: e.m.a.c.q1.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/j.class */
public final class RunnableC24780j implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: g */
    public static final int[] f69452g = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a */
    public final Handler f69453a;

    /* renamed from: b */
    public final int[] f69454b = new int[1];

    /* renamed from: c */
    public EGLDisplay f69455c;

    /* renamed from: d */
    public EGLContext f69456d;

    /* renamed from: e */
    public EGLSurface f69457e;

    /* renamed from: f */
    public SurfaceTexture f69458f;

    /* renamed from: e.m.a.c.q1.j$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/j$b.class */
    public static final class C24782b extends RuntimeException {
        public C24782b(String str, C24781a c24781a) {
            super(str);
        }
    }

    public RunnableC24780j(Handler handler) {
        this.f69453a = handler;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f69453a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        SurfaceTexture surfaceTexture = this.f69458f;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
