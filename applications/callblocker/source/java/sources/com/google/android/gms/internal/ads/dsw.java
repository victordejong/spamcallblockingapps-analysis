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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsw.class */
public final class dsw extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {

    /* renamed from: a */
    private final int[] f15603a = new int[1];

    /* renamed from: b */
    private cnz f15604b;

    /* renamed from: c */
    private SurfaceTexture f15605c;

    /* renamed from: d */
    private Error f15606d;

    /* renamed from: e */
    private RuntimeException f15607e;

    /* renamed from: f */
    private dsu f15608f;

    public dsw() {
        super("dummySurface");
    }

    /* renamed from: a */
    public final dsu m8684a(boolean z) {
        boolean z2;
        start();
        this.f15604b = new cnz(getLooper(), this);
        synchronized (this) {
            this.f15604b.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            z2 = false;
            while (this.f15608f == null && this.f15607e == null && this.f15606d == null) {
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
        if (this.f15607e != null) {
            throw this.f15607e;
        }
        if (this.f15606d == null) {
            return this.f15608f;
        }
        throw this.f15606d;
    }

    /* renamed from: a */
    public final void m8685a() {
        this.f15604b.sendEmptyMessage(3);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int[] iArr;
        switch (message.what) {
            case 1:
                try {
                    try {
                        try {
                            boolean z = message.arg1 != 0;
                            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                            drz.m8769b(eglGetDisplay != null, "eglGetDisplay failed");
                            int[] iArr2 = new int[2];
                            drz.m8769b(EGL14.eglInitialize(eglGetDisplay, iArr2, 0, iArr2, 1), "eglInitialize failed");
                            EGLConfig[] eGLConfigArr = new EGLConfig[1];
                            int[] iArr3 = new int[1];
                            drz.m8769b(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr3, 0) && iArr3[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
                            EGLConfig eGLConfig = eGLConfigArr[0];
                            EGLContext eglCreateContext = EGL14.eglCreateContext(eglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, z ? new int[]{12440, 2, 12992, 1, 12344} : new int[]{12440, 2, 12344}, 0);
                            drz.m8769b(eglCreateContext != null, "eglCreateContext failed");
                            if (z) {
                                iArr = new int[]{12375, 1, 12374, 1, 12992, 1, 12344};
                            } else {
                                iArr = new int[5];
                                iArr[0] = 12375;
                                iArr[1] = 1;
                                iArr[2] = 12374;
                                iArr[3] = 1;
                                iArr[4] = 12344;
                            }
                            EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eglGetDisplay, eGLConfig, iArr, 0);
                            drz.m8769b(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                            drz.m8769b(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                            GLES20.glGenTextures(1, this.f15603a, 0);
                            this.f15605c = new SurfaceTexture(this.f15603a[0]);
                            this.f15605c.setOnFrameAvailableListener(this);
                            this.f15608f = new dsu(this, this.f15605c, z);
                            synchronized (this) {
                                notify();
                            }
                            return true;
                        } catch (RuntimeException e) {
                            Log.e("DummySurface", "Failed to initialize dummy surface", e);
                            this.f15607e = e;
                            synchronized (this) {
                                notify();
                                return true;
                            }
                        }
                    } catch (Error e2) {
                        Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                        this.f15606d = e2;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    }
                } catch (Throwable th) {
                    synchronized (this) {
                        notify();
                        throw th;
                    }
                }
            case 2:
                this.f15605c.updateTexImage();
                return true;
            case 3:
                try {
                    this.f15605c.release();
                    this.f15608f = null;
                    this.f15605c = null;
                    GLES20.glDeleteTextures(1, this.f15603a, 0);
                    return true;
                } catch (Throwable th2) {
                    try {
                        Log.e("DummySurface", "Failed to release dummy surface", th2);
                        return true;
                    } finally {
                        quit();
                    }
                }
            default:
                return true;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f15604b.sendEmptyMessage(2);
    }
}
