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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edm.class */
final class edm extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    Handler f27676a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f27677b = new int[1];

    /* renamed from: c  reason: collision with root package name */
    private SurfaceTexture f27678c;

    /* renamed from: d  reason: collision with root package name */
    private Error f27679d;
    private RuntimeException e;
    private zzqa f;

    public edm() {
        super("dummySurface");
    }

    public final zzqa a(boolean z) {
        boolean z2;
        start();
        this.f27676a = new Handler(getLooper(), this);
        synchronized (this) {
            z2 = false;
            this.f27676a.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            while (this.f == null && this.e == null && this.f27679d == null) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.e;
        if (runtimeException == null) {
            Error error = this.f27679d;
            if (error == null) {
                return this.f;
            }
            throw error;
        }
        throw runtimeException;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int[] iArr;
        int[] iArr2;
        int i = message.what;
        try {
            if (i == 1) {
                try {
                    boolean z = message.arg1 != 0;
                    EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                    ecr.b(eglGetDisplay != null, "eglGetDisplay failed");
                    int[] iArr3 = new int[2];
                    ecr.b(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), "eglInitialize failed");
                    EGLConfig[] eGLConfigArr = new EGLConfig[1];
                    int[] iArr4 = new int[1];
                    ecr.b(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr4, 0) && iArr4[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
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
                    ecr.b(eglCreateContext != null, "eglCreateContext failed");
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
                    ecr.b(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                    ecr.b(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                    GLES20.glGenTextures(1, this.f27677b, 0);
                    SurfaceTexture surfaceTexture = new SurfaceTexture(this.f27677b[0]);
                    this.f27678c = surfaceTexture;
                    surfaceTexture.setOnFrameAvailableListener(this);
                    this.f = new zzqa(this, this.f27678c, z);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    Log.e("DummySurface", "Failed to initialize dummy surface", e);
                    this.f27679d = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                    this.e = e2;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                }
            } else if (i == 2) {
                this.f27678c.updateTexImage();
                return true;
            } else if (i != 3) {
                return true;
            } else {
                try {
                    this.f27678c.release();
                    this.f = null;
                    this.f27678c = null;
                    GLES20.glDeleteTextures(1, this.f27677b, 0);
                    return true;
                } catch (Throwable th) {
                    try {
                        Log.e("DummySurface", "Failed to release dummy surface", th);
                        return true;
                    } finally {
                        quit();
                    }
                }
            }
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f27676a.sendEmptyMessage(2);
    }
}
