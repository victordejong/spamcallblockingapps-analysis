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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aaz.class */
public final class aaz extends Thread implements SurfaceTexture.OnFrameAvailableListener, aaw {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f23031a = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private volatile boolean A;
    private volatile boolean B;

    /* renamed from: b  reason: collision with root package name */
    private final aau f23032b;
    private float k;
    private float l;
    private int m;
    private int n;
    private SurfaceTexture o;
    private SurfaceTexture p;
    private int q;
    private int r;
    private int s;
    private FloatBuffer t;
    private EGL10 w;
    private EGLDisplay x;
    private EGLContext y;
    private EGLSurface z;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f23033c = new float[9];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f23034d = new float[9];
    private final float[] e = new float[9];
    private final float[] f = new float[9];
    private final float[] g = new float[9];
    private final float[] h = new float[9];
    private final float[] i = new float[9];
    private float j = Float.NaN;
    private final CountDownLatch u = new CountDownLatch(1);
    private final Object v = new Object();

    public aaz(Context context) {
        super("SphericalVideoProcessor");
        float[] fArr = f23031a;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.t = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        aau aauVar = new aau(context);
        this.f23032b = aauVar;
        aauVar.f23024c = this;
    }

    private static int a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        a("createShader");
        int i2 = glCreateShader;
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            a("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            a("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            a("getShaderiv");
            i2 = glCreateShader;
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Could not compile shader ");
                sb.append(i);
                sb.append(":");
                Log.e("SphericalVideoRenderer", sb.toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                a("deleteShader");
                i2 = 0;
            }
        }
        return i2;
    }

    private static void a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    private static void a(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d2 = f;
        fArr[4] = (float) Math.cos(d2);
        fArr[5] = (float) (-Math.sin(d2));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d2);
        fArr[8] = (float) Math.cos(d2);
    }

    private static void a(float[] fArr, float[] fArr2, float[] fArr3) {
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

    private static void b(float[] fArr, float f) {
        double d2 = f;
        fArr[0] = (float) Math.cos(d2);
        fArr[1] = (float) (-Math.sin(d2));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d2);
        fArr[4] = (float) Math.cos(d2);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private final boolean d() {
        EGLSurface eGLSurface = this.z;
        boolean z = false;
        if (eGLSurface != null) {
            z = false;
            if (eGLSurface != EGL10.EGL_NO_SURFACE) {
                EGL10 egl10 = this.w;
                EGLDisplay eGLDisplay = this.x;
                EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
                z = this.w.eglDestroySurface(this.x, this.z) | egl10.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT) | false;
                this.z = null;
            }
        }
        EGLContext eGLContext = this.y;
        boolean z2 = z;
        if (eGLContext != null) {
            z2 = z | this.w.eglDestroyContext(this.x, eGLContext);
            this.y = null;
        }
        EGLDisplay eGLDisplay2 = this.x;
        boolean z3 = z2;
        if (eGLDisplay2 != null) {
            z3 = z2 | this.w.eglTerminate(eGLDisplay2);
            this.x = null;
        }
        return z3;
    }

    @Override // com.google.android.gms.internal.ads.aaw
    public final void a() {
        synchronized (this.v) {
            this.v.notifyAll();
        }
    }

    public final void a(float f, float f2) {
        float f3;
        float f4;
        float f5;
        int i = this.n;
        int i2 = this.m;
        if (i > i2) {
            f5 = (f * 1.7453293f) / i;
            f3 = f2 * 1.7453293f;
            f4 = i;
        } else {
            f5 = (f * 1.7453293f) / i2;
            f3 = f2 * 1.7453293f;
            f4 = i2;
        }
        this.k -= f5;
        float f6 = this.l - (f3 / f4);
        this.l = f6;
        if (f6 < -1.5707964f) {
            this.l = -1.5707964f;
        }
        if (this.l > 1.5707964f) {
            this.l = 1.5707964f;
        }
    }

    public final void a(int i, int i2) {
        synchronized (this.v) {
            this.n = i;
            this.m = i2;
            this.A = true;
            this.v.notifyAll();
        }
    }

    public final void a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.n = i;
        this.m = i2;
        this.p = surfaceTexture;
    }

    public final void b() {
        synchronized (this.v) {
            this.B = true;
            this.p = null;
            this.v.notifyAll();
        }
    }

    public final SurfaceTexture c() {
        if (this.p == null) {
            return null;
        }
        try {
            this.u.await();
        } catch (InterruptedException e) {
        }
        return this.o;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.s++;
        synchronized (this.v) {
            this.v.notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0679  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0684  */
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
            Method dump skipped, instructions count: 1717
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aaz.run():void");
    }
}
