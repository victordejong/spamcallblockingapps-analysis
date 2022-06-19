package com.linkedin.android.litr.p467e;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.Surface;
/* renamed from: com.linkedin.android.litr.e.f */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/f.class */
public final class C16643f {

    /* renamed from: a */
    public EGLDisplay f58565a;

    /* renamed from: b */
    public EGLContext f58566b;

    /* renamed from: c */
    public EGLSurface f58567c;

    /* renamed from: d */
    public Surface f58568d;

    public C16643f(Surface surface) {
        this.f58565a = EGL14.EGL_NO_DISPLAY;
        this.f58566b = EGL14.EGL_NO_CONTEXT;
        this.f58567c = EGL14.EGL_NO_SURFACE;
        this.f58568d = surface;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        this.f58565a = eglGetDisplay;
        if (eglGetDisplay != EGL14.EGL_NO_DISPLAY) {
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(this.f58565a, iArr, 0, iArr, 1)) {
                this.f58565a = null;
                throw new RuntimeException("unable to initialize EGL14");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (!EGL14.eglChooseConfig(this.f58565a, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
            }
            this.f58566b = EGL14.eglCreateContext(this.f58565a, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
            m6830a("eglCreateContext");
            if (this.f58566b == null) {
                throw new RuntimeException("null context");
            }
            this.f58567c = EGL14.eglCreateWindowSurface(this.f58565a, eGLConfigArr[0], this.f58568d, new int[]{12344}, 0);
            m6830a("eglCreateWindowSurface");
            EGLSurface eGLSurface = this.f58567c;
            if (eGLSurface == null) {
                throw new RuntimeException("surface was null");
            }
            if (!EGL14.eglMakeCurrent(this.f58565a, eGLSurface, eGLSurface, this.f58566b)) {
                throw new RuntimeException("eglMakeCurrent failed");
            }
            return;
        }
        throw new RuntimeException("unable to get EGL14 display");
    }

    /* renamed from: a */
    private static void m6830a(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
    }
}
