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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxf.class */
public final class zzaxf extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {
    private final int[] zza = new int[1];
    private Handler zzb;
    private SurfaceTexture zzc;
    private Error zzd;
    private RuntimeException zze;
    private zzaxh zzf;

    public zzaxf() {
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
                    this.zzc.updateTexImage();
                    return true;
                } else if (i != 3) {
                    return true;
                } else {
                    try {
                        this.zzc.release();
                        this.zzf = null;
                        this.zzc = null;
                        GLES20.glDeleteTextures(1, this.zza, 0);
                    } catch (Throwable th) {
                    }
                    quit();
                    return true;
                }
            }
            try {
                boolean z = message.arg1 != 0;
                EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                zzawm.zzf(eglGetDisplay != null, "eglGetDisplay failed");
                int[] iArr3 = new int[2];
                zzawm.zzf(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), "eglInitialize failed");
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr4 = new int[1];
                zzawm.zzf(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr4, 0) && iArr4[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
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
                zzawm.zzf(eglCreateContext != null, "eglCreateContext failed");
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
                zzawm.zzf(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                zzawm.zzf(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                GLES20.glGenTextures(1, this.zza, 0);
                SurfaceTexture surfaceTexture = new SurfaceTexture(this.zza[0]);
                this.zzc = surfaceTexture;
                surfaceTexture.setOnFrameAvailableListener(this);
                this.zzf = new zzaxh(this, this.zzc, z, null);
                synchronized (this) {
                    notify();
                }
                return true;
            } catch (Error e) {
                this.zzd = e;
                synchronized (this) {
                    notify();
                    return true;
                }
            } catch (RuntimeException e2) {
                this.zze = e2;
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
        this.zzb.sendEmptyMessage(2);
    }

    public final zzaxh zza(boolean z) {
        Object[] objArr;
        start();
        this.zzb = new Handler(getLooper(), this);
        synchronized (this) {
            this.zzb.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            objArr = null;
            while (this.zzf == null && this.zze == null && this.zzd == null) {
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
        RuntimeException runtimeException = this.zze;
        if (runtimeException == null) {
            Error error = this.zzd;
            if (error != null) {
                throw error;
            }
            return this.zzf;
        }
        throw runtimeException;
    }

    public final void zzb() {
        this.zzb.sendEmptyMessage(3);
    }
}
