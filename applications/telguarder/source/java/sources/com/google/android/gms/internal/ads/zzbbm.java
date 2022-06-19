package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbm.class */
public final class zzbbm extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzbbj {
    private static final float[] zzelq = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private int height;
    private int width;
    private final zzbbh zzelr;
    private float zzelz;
    private float zzema;
    private SurfaceTexture zzemb;
    private SurfaceTexture zzemc;
    private int zzemd;
    private int zzeme;
    private int zzemf;
    private FloatBuffer zzemg;
    private EGL10 zzemj;
    private EGLDisplay zzemk;
    private EGLContext zzeml;
    private EGLSurface zzemm;
    private volatile boolean zzemn;
    private volatile boolean zzemo;
    private final float[] zzelb = new float[9];
    private final float[] zzels = new float[9];
    private final float[] zzelt = new float[9];
    private final float[] zzelu = new float[9];
    private final float[] zzelv = new float[9];
    private final float[] zzelw = new float[9];
    private final float[] zzelx = new float[9];
    private float zzely = Float.NaN;
    private final CountDownLatch zzemh = new CountDownLatch(1);
    private final Object zzemi = new Object();

    public zzbbm(Context context) {
        super("SphericalVideoProcessor");
        float[] fArr = zzelq;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.zzemg = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        zzbbh zzbbhVar = new zzbbh(context);
        this.zzelr = zzbbhVar;
        zzbbhVar.zza(this);
    }

    private static void zza(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    private static void zza(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    private final boolean zzaay() {
        EGLSurface eGLSurface = this.zzemm;
        boolean z = false;
        if (eGLSurface != null) {
            z = false;
            if (eGLSurface != EGL10.EGL_NO_SURFACE) {
                z = this.zzemj.eglDestroySurface(this.zzemk, this.zzemm) | this.zzemj.eglMakeCurrent(this.zzemk, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT) | false;
                this.zzemm = null;
            }
        }
        EGLContext eGLContext = this.zzeml;
        boolean z2 = z;
        if (eGLContext != null) {
            z2 = z | this.zzemj.eglDestroyContext(this.zzemk, eGLContext);
            this.zzeml = null;
        }
        EGLDisplay eGLDisplay = this.zzemk;
        boolean z3 = z2;
        if (eGLDisplay != null) {
            z3 = z2 | this.zzemj.eglTerminate(eGLDisplay);
            this.zzemk = null;
        }
        return z3;
    }

    private static void zzb(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static int zzd(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        zzfb("createShader");
        int i2 = glCreateShader;
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            zzfb("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            zzfb("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            zzfb("getShaderiv");
            i2 = glCreateShader;
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Could not compile shader ");
                sb.append(i);
                sb.append(":");
                Log.e("SphericalVideoRenderer", sb.toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                zzfb("deleteShader");
                i2 = 0;
            }
        }
        return i2;
    }

    private static void zzfb(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzemf++;
        synchronized (this.zzemi) {
            this.zzemi.notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0623  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x062e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0350  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbm.run():void");
    }

    public final void zza(SurfaceTexture surfaceTexture, int i, int i2) {
        this.width = i;
        this.height = i2;
        this.zzemc = surfaceTexture;
    }

    public final void zzaaw() {
        synchronized (this.zzemi) {
            this.zzemo = true;
            this.zzemc = null;
            this.zzemi.notifyAll();
        }
    }

    public final SurfaceTexture zzaax() {
        if (this.zzemc == null) {
            return null;
        }
        try {
            this.zzemh.await();
        } catch (InterruptedException e) {
        }
        return this.zzemb;
    }

    public final void zzb(float f, float f2) {
        float f3;
        float f4;
        float f5;
        int i = this.width;
        int i2 = this.height;
        if (i > i2) {
            f5 = (f * 1.7453293f) / i;
            f4 = f2 * 1.7453293f;
            f3 = i;
        } else {
            f5 = (f * 1.7453293f) / i2;
            f4 = f2 * 1.7453293f;
            f3 = i2;
        }
        this.zzelz -= f5;
        float f6 = this.zzema - (f4 / f3);
        this.zzema = f6;
        if (f6 < -1.5707964f) {
            this.zzema = -1.5707964f;
        }
        if (this.zzema > 1.5707964f) {
            this.zzema = 1.5707964f;
        }
    }

    public final void zzm(int i, int i2) {
        synchronized (this.zzemi) {
            this.width = i;
            this.height = i2;
            this.zzemn = true;
            this.zzemi.notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbj
    public final void zzwa() {
        synchronized (this.zzemi) {
            this.zzemi.notifyAll();
        }
    }
}
