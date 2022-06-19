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
/* renamed from: com.google.android.gms.internal.ads.vi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vi.class */
public final class HandlerThreadC7072vi extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {

    /* renamed from: d */
    private final int[] f31184d = new int[1];

    /* renamed from: e */
    private Handler f31185e;

    /* renamed from: f */
    private SurfaceTexture f31186f;

    /* renamed from: g */
    private Error f31187g;

    /* renamed from: h */
    private RuntimeException f31188h;

    /* renamed from: i */
    private zzavk f31189i;

    public HandlerThreadC7072vi() {
        super("dummySurface");
    }

    /* renamed from: a */
    public final zzavk m10019a(boolean z) {
        Object[] objArr;
        start();
        this.f31185e = new Handler(getLooper(), this);
        synchronized (this) {
            this.f31185e.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            objArr = null;
            while (this.f31189i == null && this.f31188h == null && this.f31187g == null) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    objArr = 1;
                }
            }
        }
        if (objArr != null) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f31188h;
        if (runtimeException == null) {
            Error error = this.f31187g;
            if (error != null) {
                throw error;
            }
            return this.f31189i;
        }
        throw runtimeException;
    }

    /* renamed from: b */
    public final void m10018b() {
        this.f31185e.sendEmptyMessage(3);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int[] iArr;
        int[] iArr2;
        int i = message.what;
        try {
            if (i != 1) {
                if (i == 2) {
                    this.f31186f.updateTexImage();
                    return true;
                } else if (i != 3) {
                    return true;
                } else {
                    try {
                        this.f31186f.release();
                        this.f31189i = null;
                        this.f31186f = null;
                        GLES20.glDeleteTextures(1, this.f31184d, 0);
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
                C6367ci.m16038e(eglGetDisplay != null, "eglGetDisplay failed");
                int[] iArr3 = new int[2];
                C6367ci.m16038e(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), "eglInitialize failed");
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr4 = new int[1];
                C6367ci.m16038e(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr4, 0) && iArr4[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
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
                C6367ci.m16038e(eglCreateContext != null, "eglCreateContext failed");
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
                C6367ci.m16038e(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                C6367ci.m16038e(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                GLES20.glGenTextures(1, this.f31184d, 0);
                SurfaceTexture surfaceTexture = new SurfaceTexture(this.f31184d[0]);
                this.f31186f = surfaceTexture;
                surfaceTexture.setOnFrameAvailableListener(this);
                this.f31189i = new zzavk(this, this.f31186f, z, null);
                synchronized (this) {
                    notify();
                }
                return true;
            } catch (Error e) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e);
                this.f31187g = e;
                synchronized (this) {
                    notify();
                    return true;
                }
            } catch (RuntimeException e2) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                this.f31188h = e2;
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
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f31185e.sendEmptyMessage(2);
    }
}
