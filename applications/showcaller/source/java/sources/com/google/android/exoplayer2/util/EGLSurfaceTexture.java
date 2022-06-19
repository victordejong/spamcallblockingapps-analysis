package com.google.android.exoplayer2.util;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture.class */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: d */
    private static final int[] f17839d = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: e */
    private final Handler f17840e;

    /* renamed from: f */
    private final int[] f17841f;

    /* renamed from: g */
    private final AbstractC5499b f17842g;

    /* renamed from: h */
    private EGLDisplay f17843h;

    /* renamed from: i */
    private EGLContext f17844i;

    /* renamed from: j */
    private EGLSurface f17845j;

    /* renamed from: k */
    private SurfaceTexture f17846k;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture$GlException.class */
    public static final class GlException extends RuntimeException {
        private GlException(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.EGLSurfaceTexture$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture$b.class */
    public interface AbstractC5499b {
        /* renamed from: a */
        void m18930a();
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    public EGLSurfaceTexture(Handler handler, AbstractC5499b abstractC5499b) {
        this.f17840e = handler;
        this.f17842g = abstractC5499b;
        this.f17841f = new int[1];
    }

    /* renamed from: a */
    private static EGLConfig m18939a(EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f17839d, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!eglChooseConfig || iArr[0] <= 0 || eGLConfigArr[0] == null) {
            throw new GlException(C5515h0.m18805u("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        }
        return eGLConfigArr[0];
    }

    /* renamed from: b */
    private static EGLContext m18938b(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        if (eglCreateContext != null) {
            return eglCreateContext;
        }
        throw new GlException("eglCreateContext failed");
    }

    /* renamed from: c */
    private static EGLSurface m18937c(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i) {
        EGLSurface eGLSurface;
        if (i == 1) {
            eGLSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eGLSurface == null) {
                throw new GlException("eglCreatePbufferSurface failed");
            }
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext)) {
            return eGLSurface;
        }
        throw new GlException("eglMakeCurrent failed");
    }

    /* renamed from: d */
    private void m18936d() {
        AbstractC5499b abstractC5499b = this.f17842g;
        if (abstractC5499b != null) {
            abstractC5499b.m18930a();
        }
    }

    /* renamed from: e */
    private static void m18935e(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        C5524m.m18763b();
    }

    /* renamed from: f */
    private static EGLDisplay m18934f() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                throw new GlException("eglInitialize failed");
            }
            return eglGetDisplay;
        }
        throw new GlException("eglGetDisplay failed");
    }

    /* renamed from: g */
    public SurfaceTexture m18933g() {
        return (SurfaceTexture) C5508e.m18911e(this.f17846k);
    }

    /* renamed from: h */
    public void m18932h(int i) {
        EGLDisplay m18934f = m18934f();
        this.f17843h = m18934f;
        EGLConfig m18939a = m18939a(m18934f);
        EGLContext m18938b = m18938b(this.f17843h, m18939a, i);
        this.f17844i = m18938b;
        this.f17845j = m18937c(this.f17843h, m18939a, m18938b, i);
        m18935e(this.f17841f);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f17841f[0]);
        this.f17846k = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    public void m18931i() {
        this.f17840e.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f17846k;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f17841f, 0);
            }
            EGLDisplay eGLDisplay = this.f17843h;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f17843h;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f17845j;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f17843h, this.f17845j);
            }
            EGLContext eGLContext = this.f17844i;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f17843h, eGLContext);
            }
            if (C5515h0.f17876a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f17843h;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f17843h);
            }
            this.f17843h = null;
            this.f17844i = null;
            this.f17845j = null;
            this.f17846k = null;
        } catch (Throwable th) {
            EGLDisplay eGLDisplay4 = this.f17843h;
            if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay5 = this.f17843h;
                EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface4 = this.f17845j;
            if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f17843h, this.f17845j);
            }
            EGLContext eGLContext2 = this.f17844i;
            if (eGLContext2 != null) {
                EGL14.eglDestroyContext(this.f17843h, eGLContext2);
            }
            if (C5515h0.f17876a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay6 = this.f17843h;
            if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f17843h);
            }
            this.f17843h = null;
            this.f17844i = null;
            this.f17845j = null;
            this.f17846k = null;
            throw th;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f17840e.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        m18936d();
        SurfaceTexture surfaceTexture = this.f17846k;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
