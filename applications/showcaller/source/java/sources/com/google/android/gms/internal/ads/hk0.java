package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
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
@TargetApi(14)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hk0.class */
public final class hk0 extends Thread implements SurfaceTexture.OnFrameAvailableListener, fk0 {

    /* renamed from: d */
    private static final float[] f23933d = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};

    /* renamed from: A */
    private EGLDisplay f23934A;

    /* renamed from: B */
    private EGLContext f23935B;

    /* renamed from: C */
    private EGLSurface f23936C;

    /* renamed from: D */
    private volatile boolean f23937D;

    /* renamed from: E */
    private volatile boolean f23938E;

    /* renamed from: e */
    private final gk0 f23939e;

    /* renamed from: n */
    private float f23948n;

    /* renamed from: o */
    private float f23949o;

    /* renamed from: p */
    private int f23950p;

    /* renamed from: q */
    private int f23951q;

    /* renamed from: r */
    private SurfaceTexture f23952r;

    /* renamed from: s */
    private SurfaceTexture f23953s;

    /* renamed from: t */
    private int f23954t;

    /* renamed from: u */
    private int f23955u;

    /* renamed from: v */
    private int f23956v;

    /* renamed from: w */
    private final FloatBuffer f23957w;

    /* renamed from: z */
    private EGL10 f23960z;

    /* renamed from: f */
    private final float[] f23940f = new float[9];

    /* renamed from: g */
    private final float[] f23941g = new float[9];

    /* renamed from: h */
    private final float[] f23942h = new float[9];

    /* renamed from: i */
    private final float[] f23943i = new float[9];

    /* renamed from: j */
    private final float[] f23944j = new float[9];

    /* renamed from: k */
    private final float[] f23945k = new float[9];

    /* renamed from: l */
    private final float[] f23946l = new float[9];

    /* renamed from: m */
    private float f23947m = Float.NaN;

    /* renamed from: x */
    private final CountDownLatch f23958x = new CountDownLatch(1);

    /* renamed from: y */
    private final Object f23959y = new Object();

    public hk0(Context context) {
        super("SphericalVideoProcessor");
        float[] fArr = f23933d;
        int length = fArr.length;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f23957w = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        gk0 gk0Var = new gk0(context);
        this.f23939e = gk0Var;
        gk0Var.m14918c(this);
    }

    /* renamed from: g */
    private static final void m14605g(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(str.length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    /* renamed from: h */
    private static final void m14604h(float[] fArr, float[] fArr2, float[] fArr3) {
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

    /* renamed from: i */
    private static final void m14603i(float[] fArr, float f) {
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

    /* renamed from: j */
    private static final void m14602j(float[] fArr, float f) {
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

    /* renamed from: k */
    private static final int m14601k(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        m14605g("createShader");
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            m14605g("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            m14605g("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            m14605g("getShaderiv");
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Could not compile shader ");
                sb.append(i);
                sb.append(":");
                Log.e("SphericalVideoRenderer", sb.toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                m14605g("deleteShader");
                return 0;
            }
        }
        return glCreateShader;
    }

    /* renamed from: a */
    public final void m14611a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f23951q = i;
        this.f23950p = i2;
        this.f23953s = surfaceTexture;
    }

    /* renamed from: b */
    public final void m14610b(int i, int i2) {
        synchronized (this.f23959y) {
            this.f23951q = i;
            this.f23950p = i2;
            this.f23937D = true;
            this.f23959y.notifyAll();
        }
    }

    /* renamed from: c */
    public final void m14609c() {
        synchronized (this.f23959y) {
            this.f23938E = true;
            this.f23953s = null;
            this.f23959y.notifyAll();
        }
    }

    /* renamed from: d */
    public final SurfaceTexture m14608d() {
        if (this.f23953s == null) {
            return null;
        }
        try {
            this.f23958x.await();
        } catch (InterruptedException e) {
        }
        return this.f23952r;
    }

    /* renamed from: e */
    public final void m14607e(float f, float f2) {
        int i = this.f23951q;
        int i2 = this.f23950p;
        float f3 = i > i2 ? i : i2;
        this.f23948n -= (f * 1.7453293f) / f3;
        float f4 = this.f23949o - ((f2 * 1.7453293f) / f3);
        this.f23949o = f4;
        float f5 = f4;
        if (f4 < -1.5707964f) {
            this.f23949o = -1.5707964f;
            f5 = -1.5707964f;
        }
        if (f5 > 1.5707964f) {
            this.f23949o = 1.5707964f;
        }
    }

    /* renamed from: f */
    final boolean m14606f() {
        EGLSurface eGLSurface = this.f23936C;
        boolean z = false;
        if (eGLSurface != null) {
            EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
            z = false;
            if (eGLSurface != eGLSurface2) {
                z = this.f23960z.eglDestroySurface(this.f23934A, this.f23936C) | this.f23960z.eglMakeCurrent(this.f23934A, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT);
                this.f23936C = null;
            }
        }
        EGLContext eGLContext = this.f23935B;
        boolean z2 = z;
        if (eGLContext != null) {
            z2 = z | this.f23960z.eglDestroyContext(this.f23934A, eGLContext);
            this.f23935B = null;
        }
        EGLDisplay eGLDisplay = this.f23934A;
        if (eGLDisplay != null) {
            boolean eglTerminate = this.f23960z.eglTerminate(eGLDisplay);
            this.f23934A = null;
            return eglTerminate | z2;
        }
        return z2;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f23956v++;
        synchronized (this.f23959y) {
            this.f23959y.notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x032a  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.hk0.run():void");
    }

    @Override // com.google.android.gms.internal.ads.fk0
    public final void zza() {
        synchronized (this.f23959y) {
            this.f23959y.notifyAll();
        }
    }
}
