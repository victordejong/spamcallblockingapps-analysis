package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Handler;
import android.util.Log;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.g9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g9.class */
public final class RunnableC6507g9 implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: d */
    private static final int[] f23266d = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: e */
    private final Handler f23267e;

    /* renamed from: f */
    private final int[] f23268f = new int[1];

    /* renamed from: g */
    private EGLDisplay f23269g;

    /* renamed from: h */
    private EGLContext f23270h;

    /* renamed from: i */
    private EGLSurface f23271i;

    /* renamed from: j */
    private SurfaceTexture f23272j;

    public RunnableC6507g9(Handler handler, AbstractC6470f9 abstractC6470f9) {
        this.f23267e = handler;
    }

    /* renamed from: a */
    public final void m14973a(int i) {
        EGLConfig eGLConfig;
        EGLSurface eGLSurface;
        int i2;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                throw new zzaky("eglInitialize failed", null);
            }
            this.f23269g = eglGetDisplay;
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr2 = new int[1];
            boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, f23266d, 0, eGLConfigArr, 0, 1, iArr2, 0);
            if (!eglChooseConfig || iArr2[0] <= 0 || (eGLConfig = eGLConfigArr[0]) == null) {
                throw new zzaky(C7101wa.m9700a0("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr2[0]), eGLConfigArr[0]), null);
            }
            EGLContext eglCreateContext = EGL14.eglCreateContext(this.f23269g, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
            if (eglCreateContext == null) {
                throw new zzaky("eglCreateContext failed", null);
            }
            this.f23270h = eglCreateContext;
            EGLDisplay eGLDisplay = this.f23269g;
            if (i == 1) {
                eGLSurface = EGL14.EGL_NO_SURFACE;
            } else {
                eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                if (eGLSurface == null) {
                    throw new zzaky("eglCreatePbufferSurface failed", null);
                }
            }
            if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eglCreateContext)) {
                throw new zzaky("eglMakeCurrent failed", null);
            }
            this.f23271i = eGLSurface;
            GLES20.glGenTextures(1, this.f23268f, 0);
            int i3 = 0;
            while (true) {
                i2 = i3;
                int glGetError = GLES20.glGetError();
                if (glGetError == 0) {
                    break;
                }
                String valueOf = String.valueOf(GLU.gluErrorString(glGetError));
                Log.e("GlUtil", valueOf.length() != 0 ? "glError ".concat(valueOf) : new String("glError "));
                i3 = glGetError;
            }
            if (i2 != 0) {
                String valueOf2 = String.valueOf(GLU.gluErrorString(i2));
                Log.e("GlUtil", valueOf2.length() != 0 ? "glError ".concat(valueOf2) : new String("glError "));
            }
            SurfaceTexture surfaceTexture = new SurfaceTexture(this.f23268f[0]);
            this.f23272j = surfaceTexture;
            surfaceTexture.setOnFrameAvailableListener(this);
            return;
        }
        throw new zzaky("eglGetDisplay failed", null);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public final void m14972b() {
        this.f23267e.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f23272j;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f23268f, 0);
            }
            EGLDisplay eGLDisplay = this.f23269g;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f23269g;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f23271i;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f23269g, this.f23271i);
            }
            EGLContext eGLContext = this.f23270h;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f23269g, eGLContext);
            }
            if (C7101wa.f31475a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f23269g;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f23269g);
            }
            this.f23269g = null;
            this.f23270h = null;
            this.f23271i = null;
            this.f23272j = null;
        } catch (Throwable th) {
            EGLDisplay eGLDisplay4 = this.f23269g;
            if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay5 = this.f23269g;
                EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface4 = this.f23271i;
            if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f23269g, this.f23271i);
            }
            EGLContext eGLContext2 = this.f23270h;
            if (eGLContext2 != null) {
                EGL14.eglDestroyContext(this.f23269g, eGLContext2);
            }
            if (C7101wa.f31475a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay6 = this.f23269g;
            if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f23269g);
            }
            this.f23269g = null;
            this.f23270h = null;
            this.f23271i = null;
            this.f23272j = null;
            throw th;
        }
    }

    /* renamed from: c */
    public final SurfaceTexture m14971c() {
        SurfaceTexture surfaceTexture = this.f23272j;
        Objects.requireNonNull(surfaceTexture);
        return surfaceTexture;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f23267e.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f23272j;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
