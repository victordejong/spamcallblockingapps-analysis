package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ds2.class */
public final class ds2 extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {

    /* renamed from: b */
    private final int[] f6364b = new int[1];

    /* renamed from: c */
    private Handler f6365c;

    /* renamed from: d */
    private SurfaceTexture f6366d;

    /* renamed from: e */
    private Error f6367e;

    /* renamed from: f */
    private RuntimeException f6368f;

    /* renamed from: g */
    private zzqp f6369g;

    public ds2() {
        super("dummySurface");
    }

    /* renamed from: a */
    public final zzqp m7686a(boolean z) {
        Object[] objArr;
        start();
        this.f6365c = new Handler(getLooper(), this);
        synchronized (this) {
            try {
                this.f6365c.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
                objArr = null;
                while (this.f6369g == null && this.f6368f == null && this.f6367e == null) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        objArr = 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (objArr != null) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f6368f;
        if (runtimeException == null) {
            Error error = this.f6367e;
            if (error != null) {
                throw error;
            }
            return this.f6369g;
        }
        throw runtimeException;
    }

    /* renamed from: b */
    public final void m7685b() {
        this.f6365c.sendEmptyMessage(3);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int[] iArr;
        int[] iArr2;
        int i = message.what;
        try {
            if (i != 1) {
                if (i == 2) {
                    this.f6366d.updateTexImage();
                    return true;
                } else if (i != 3) {
                    return true;
                } else {
                    try {
                        this.f6366d.release();
                        this.f6369g = null;
                        this.f6366d = null;
                        GLES20.glDeleteTextures(1, this.f6364b, 0);
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
            }
            try {
                boolean z = message.arg1 != 0;
                EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                jr2.m6922e(eglGetDisplay != null, "eglGetDisplay failed");
                int[] iArr3 = new int[2];
                jr2.m6922e(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), "eglInitialize failed");
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr4 = new int[1];
                jr2.m6922e(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr4, 0) && iArr4[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
                EGLConfig eGLConfig = eGLConfigArr[0];
                if (z) {
                    iArr = new int[5];
                    iArr[0] = 12440;
                    iArr[1] = 2;
                    iArr[2] = 12992;
                    iArr[3] = 1;
                    iArr[4] = 12344;
                } else {
                    iArr = new int[3];
                    iArr[0] = 12440;
                    iArr[1] = 2;
                    iArr[2] = 12344;
                }
                EGLContext eglCreateContext = EGL14.eglCreateContext(eglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
                jr2.m6922e(eglCreateContext != null, "eglCreateContext failed");
                if (z) {
                    iArr2 = new int[7];
                    iArr2[0] = 12375;
                    iArr2[1] = 1;
                    iArr2[2] = 12374;
                    iArr2[3] = 1;
                    iArr2[4] = 12992;
                    iArr2[5] = 1;
                    iArr2[6] = 12344;
                } else {
                    iArr2 = new int[5];
                    iArr2[0] = 12375;
                    iArr2[1] = 1;
                    iArr2[2] = 12374;
                    iArr2[3] = 1;
                    iArr2[4] = 12344;
                }
                EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eglGetDisplay, eGLConfig, iArr2, 0);
                jr2.m6922e(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                jr2.m6922e(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                GLES20.glGenTextures(1, this.f6364b, 0);
                SurfaceTexture surfaceTexture = new SurfaceTexture(this.f6364b[0]);
                this.f6366d = surfaceTexture;
                surfaceTexture.setOnFrameAvailableListener(this);
                this.f6369g = new zzqp(this, this.f6366d, z, null);
                synchronized (this) {
                    notify();
                }
                return true;
            } catch (Error e) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e);
                this.f6367e = e;
                synchronized (this) {
                    notify();
                    return true;
                }
            } catch (RuntimeException e2) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                this.f6368f = e2;
                synchronized (this) {
                    notify();
                    return true;
                }
            }
        } catch (Throwable th) {
            synchronized (this) {
                try {
                    notify();
                    throw th;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f6365c.sendEmptyMessage(2);
    }
}
