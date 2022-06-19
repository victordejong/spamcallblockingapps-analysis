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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqc.class */
public final class zzqc extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {
    private Handler handler;
    private final int[] zzbky = new int[1];
    private SurfaceTexture zzbkz;
    private Error zzbla;
    private RuntimeException zzblb;
    private zzqa zzblc;

    public zzqc() {
        super("dummySurface");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int[] iArr;
        int[] iArr2;
        int i = message.what;
        try {
            if (i != 1) {
                if (i == 2) {
                    this.zzbkz.updateTexImage();
                    return true;
                } else if (i != 3) {
                    return true;
                } else {
                    try {
                        this.zzbkz.release();
                        this.zzblc = null;
                        this.zzbkz = null;
                        GLES20.glDeleteTextures(1, this.zzbky, 0);
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
            }
            try {
                boolean z = message.arg1 != 0;
                EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                zzpg.checkState(eglGetDisplay != null, "eglGetDisplay failed");
                int[] iArr3 = new int[2];
                zzpg.checkState(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), "eglInitialize failed");
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr4 = new int[1];
                zzpg.checkState(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr4, 0) && iArr4[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
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
                zzpg.checkState(eglCreateContext != null, "eglCreateContext failed");
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
                zzpg.checkState(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                zzpg.checkState(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                GLES20.glGenTextures(1, this.zzbky, 0);
                SurfaceTexture surfaceTexture = new SurfaceTexture(this.zzbky[0]);
                this.zzbkz = surfaceTexture;
                surfaceTexture.setOnFrameAvailableListener(this);
                this.zzblc = new zzqa(this, this.zzbkz, z);
                synchronized (this) {
                    notify();
                }
                return true;
            } catch (Error e) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e);
                this.zzbla = e;
                synchronized (this) {
                    notify();
                    return true;
                }
            } catch (RuntimeException e2) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                this.zzblb = e2;
                synchronized (this) {
                    notify();
                    return true;
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
        this.handler.sendEmptyMessage(2);
    }

    public final void release() {
        this.handler.sendEmptyMessage(3);
    }

    public final zzqa zzm(boolean z) {
        boolean z2;
        start();
        this.handler = new Handler(getLooper(), this);
        synchronized (this) {
            this.handler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            z2 = false;
            while (this.zzblc == null && this.zzblb == null && this.zzbla == null) {
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
        RuntimeException runtimeException = this.zzblb;
        if (runtimeException == null) {
            Error error = this.zzbla;
            if (error != null) {
                throw error;
            }
            return this.zzblc;
        }
        throw runtimeException;
    }
}
