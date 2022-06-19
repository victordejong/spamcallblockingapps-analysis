package io.agora.rtc.gdp;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gdp/EglCore.class */
public final class EglCore {
    private static final int EGL_RECORDABLE_ANDROID = 12610;
    public static final int FLAG_RECORDABLE = 1;
    public static final int FLAG_TRY_GLES3 = 2;
    private static final String TAG = "GDPGlUtil";
    private EGLConfig mEGLConfig;
    private EGLContext mEGLContext;
    private EGLDisplay mEGLDisplay;
    private int mGlVersion;

    public EglCore() {
        this(null, 0);
    }

    public EglCore(EGLContext eGLContext, int i) {
        EGLConfig config;
        EGLDisplay eGLDisplay = EGL14.EGL_NO_DISPLAY;
        this.mEGLDisplay = eGLDisplay;
        this.mEGLContext = EGL14.EGL_NO_CONTEXT;
        this.mEGLConfig = null;
        this.mGlVersion = -1;
        if (eGLDisplay == EGL14.EGL_NO_DISPLAY) {
            EGLContext eGLContext2 = eGLContext == null ? EGL14.EGL_NO_CONTEXT : eGLContext;
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            this.mEGLDisplay = eglGetDisplay;
            if (eglGetDisplay == EGL14.EGL_NO_DISPLAY) {
                throw new RuntimeException("unable to get EGL14 display");
            }
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                this.mEGLDisplay = null;
                throw new RuntimeException("unable to initialize EGL14");
            }
            if ((i & 2) != 0 && (config = getConfig(i, 3)) != null) {
                EGLContext eglCreateContext = EGL14.eglCreateContext(this.mEGLDisplay, config, eGLContext2, new int[]{12440, 3, 12344}, 0);
                if (EGL14.eglGetError() == 12288) {
                    this.mEGLConfig = config;
                    this.mEGLContext = eglCreateContext;
                    this.mGlVersion = 3;
                }
            }
            if (this.mEGLContext == EGL14.EGL_NO_CONTEXT) {
                EGLConfig config2 = getConfig(i, 2);
                if (config2 == null) {
                    throw new RuntimeException("Unable to find a suitable EGLConfig");
                }
                EGLContext eglCreateContext2 = EGL14.eglCreateContext(this.mEGLDisplay, config2, eGLContext2, new int[]{12440, 2, 12344}, 0);
                checkEglError("eglCreateContext");
                this.mEGLConfig = config2;
                this.mEGLContext = eglCreateContext2;
                this.mGlVersion = 2;
            }
            int[] iArr2 = new int[1];
            EGL14.eglQueryContext(this.mEGLDisplay, this.mEGLContext, 12440, iArr2, 0);
            int i2 = iArr2[0];
            return;
        }
        throw new RuntimeException("EGL already set up");
    }

    private void checkEglError(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        throw new RuntimeException(C22128a.m8668S1(eglGetError, C22128a.m8696K(str, ": EGL error: 0x")));
    }

    private EGLConfig getConfig(int i, int i2) {
        int[] iArr = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, i2 >= 3 ? 68 : 4, 12344, 0, 12344};
        if ((i & 1) != 0) {
            iArr[10] = 12610;
            iArr[11] = 1;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(this.mEGLDisplay, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            return null;
        }
        return eGLConfigArr[0];
    }

    public static void logCurrent(String str) {
        String str2 = "Current EGL (" + str + "): display=" + EGL14.eglGetCurrentDisplay() + ", context=" + EGL14.eglGetCurrentContext() + ", surface=" + EGL14.eglGetCurrentSurface(12377);
    }

    public EGLSurface createOffscreenSurface(int i, int i2) {
        EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(this.mEGLDisplay, this.mEGLConfig, new int[]{12375, i, 12374, i2, 12344}, 0);
        checkEglError("eglCreatePbufferSurface");
        if (eglCreatePbufferSurface != null) {
            return eglCreatePbufferSurface;
        }
        throw new RuntimeException("surface was null");
    }

    public EGLSurface createWindowSurface(Object obj) {
        if ((obj instanceof Surface) || (obj instanceof SurfaceTexture)) {
            EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.mEGLDisplay, this.mEGLConfig, obj, new int[]{12344}, 0);
            checkEglError("eglCreateWindowSurface");
            if (eglCreateWindowSurface == null) {
                throw new RuntimeException("surface was null");
            }
            return eglCreateWindowSurface;
        }
        throw new RuntimeException(C22128a.m8551x2("invalid surface: ", obj));
    }

    public void finalize() throws Throwable {
        try {
            if (this.mEGLDisplay != EGL14.EGL_NO_DISPLAY) {
                release();
            }
        } finally {
            super.finalize();
        }
    }

    public int getGlVersion() {
        return this.mGlVersion;
    }

    public boolean isCurrent(EGLSurface eGLSurface) {
        return this.mEGLContext.equals(EGL14.eglGetCurrentContext()) && eGLSurface.equals(EGL14.eglGetCurrentSurface(12377));
    }

    public void makeCurrent(EGLSurface eGLSurface) {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        EGLDisplay eGLDisplay2 = EGL14.EGL_NO_DISPLAY;
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEGLContext)) {
            return;
        }
        throw new RuntimeException("eglMakeCurrent failed");
    }

    public void makeCurrent(EGLSurface eGLSurface, EGLSurface eGLSurface2) {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        EGLDisplay eGLDisplay2 = EGL14.EGL_NO_DISPLAY;
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface2, this.mEGLContext)) {
            return;
        }
        throw new RuntimeException("eglMakeCurrent(draw,read) failed");
    }

    public void makeNothingCurrent() {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT)) {
            return;
        }
        throw new RuntimeException("eglMakeCurrent failed");
    }

    public String queryString(int i) {
        return EGL14.eglQueryString(this.mEGLDisplay, i);
    }

    public int querySurface(EGLSurface eGLSurface, int i) {
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.mEGLDisplay, eGLSurface, i, iArr, 0);
        return iArr[0];
    }

    public void release() {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroyContext(this.mEGLDisplay, this.mEGLContext);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.mEGLDisplay);
        }
        this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
        this.mEGLContext = EGL14.EGL_NO_CONTEXT;
        this.mEGLConfig = null;
    }

    public void releaseSurface(EGLSurface eGLSurface) {
        EGL14.eglDestroySurface(this.mEGLDisplay, eGLSurface);
    }

    public void setPresentationTime(EGLSurface eGLSurface, long j) {
        EGLExt.eglPresentationTimeANDROID(this.mEGLDisplay, eGLSurface, j);
    }

    public boolean swapBuffers(EGLSurface eGLSurface) {
        return EGL14.eglSwapBuffers(this.mEGLDisplay, eGLSurface);
    }
}
