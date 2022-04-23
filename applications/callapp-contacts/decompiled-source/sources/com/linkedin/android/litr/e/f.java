package com.linkedin.android.litr.e;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.Surface;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public EGLDisplay f33725a;

    /* renamed from: b  reason: collision with root package name */
    public EGLContext f33726b;

    /* renamed from: c  reason: collision with root package name */
    public EGLSurface f33727c;

    /* renamed from: d  reason: collision with root package name */
    public Surface f33728d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Surface surface) {
        this.f33725a = EGL14.EGL_NO_DISPLAY;
        this.f33726b = EGL14.EGL_NO_CONTEXT;
        this.f33727c = EGL14.EGL_NO_SURFACE;
        this.f33728d = surface;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        this.f33725a = eglGetDisplay;
        if (eglGetDisplay != EGL14.EGL_NO_DISPLAY) {
            int[] iArr = new int[2];
            if (EGL14.eglInitialize(this.f33725a, iArr, 0, iArr, 1)) {
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                if (EGL14.eglChooseConfig(this.f33725a, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                    this.f33726b = EGL14.eglCreateContext(this.f33725a, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
                    a("eglCreateContext");
                    if (this.f33726b != null) {
                        this.f33727c = EGL14.eglCreateWindowSurface(this.f33725a, eGLConfigArr[0], this.f33728d, new int[]{12344}, 0);
                        a("eglCreateWindowSurface");
                        EGLSurface eGLSurface = this.f33727c;
                        if (eGLSurface == null) {
                            throw new RuntimeException("surface was null");
                        } else if (!EGL14.eglMakeCurrent(this.f33725a, eGLSurface, eGLSurface, this.f33726b)) {
                            throw new RuntimeException("eglMakeCurrent failed");
                        }
                    } else {
                        throw new RuntimeException("null context");
                    }
                } else {
                    throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
                }
            } else {
                this.f33725a = null;
                throw new RuntimeException("unable to initialize EGL14");
            }
        } else {
            throw new RuntimeException("unable to get EGL14 display");
        }
    }

    private static void a(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
        }
    }
}
