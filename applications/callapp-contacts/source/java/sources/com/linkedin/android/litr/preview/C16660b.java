package com.linkedin.android.litr.preview;

import android.opengl.GLSurfaceView;
import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
/* renamed from: com.linkedin.android.litr.preview.b */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/b.class */
final class C16660b implements GLSurfaceView.EGLContextFactory {

    /* renamed from: a */
    private final int f58623a = 2;

    @Override // android.opengl.GLSurfaceView.EGLContextFactory
    public final EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        return egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
    }

    @Override // android.opengl.GLSurfaceView.EGLContextFactory
    public final void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
        if (egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
            return;
        }
        Log.e("EContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
        throw new RuntimeException("eglDestroyContex" + egl10.eglGetError());
    }
}
