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

    /* renamed from: a */
    private static final float[] f39746a = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};

    /* renamed from: A */
    private volatile boolean f39747A;

    /* renamed from: B */
    private volatile boolean f39748B;

    /* renamed from: b */
    private final aau f39749b;

    /* renamed from: k */
    private float f39758k;

    /* renamed from: l */
    private float f39759l;

    /* renamed from: m */
    private int f39760m;

    /* renamed from: n */
    private int f39761n;

    /* renamed from: o */
    private SurfaceTexture f39762o;

    /* renamed from: p */
    private SurfaceTexture f39763p;

    /* renamed from: q */
    private int f39764q;

    /* renamed from: r */
    private int f39765r;

    /* renamed from: s */
    private int f39766s;

    /* renamed from: t */
    private FloatBuffer f39767t;

    /* renamed from: w */
    private EGL10 f39770w;

    /* renamed from: x */
    private EGLDisplay f39771x;

    /* renamed from: y */
    private EGLContext f39772y;

    /* renamed from: z */
    private EGLSurface f39773z;

    /* renamed from: c */
    private final float[] f39750c = new float[9];

    /* renamed from: d */
    private final float[] f39751d = new float[9];

    /* renamed from: e */
    private final float[] f39752e = new float[9];

    /* renamed from: f */
    private final float[] f39753f = new float[9];

    /* renamed from: g */
    private final float[] f39754g = new float[9];

    /* renamed from: h */
    private final float[] f39755h = new float[9];

    /* renamed from: i */
    private final float[] f39756i = new float[9];

    /* renamed from: j */
    private float f39757j = Float.NaN;

    /* renamed from: u */
    private final CountDownLatch f39768u = new CountDownLatch(1);

    /* renamed from: v */
    private final Object f39769v = new Object();

    public aaz(Context context) {
        super("SphericalVideoProcessor");
        float[] fArr = f39746a;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f39767t = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        aau aauVar = new aau(context);
        this.f39749b = aauVar;
        aauVar.f39727c = this;
    }

    /* renamed from: a */
    private static int m18935a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        m18933a("createShader");
        int i2 = glCreateShader;
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            m18933a("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            m18933a("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            m18933a("getShaderiv");
            i2 = glCreateShader;
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Could not compile shader ");
                sb.append(i);
                sb.append(":");
                Log.e("SphericalVideoRenderer", sb.toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                m18933a("deleteShader");
                i2 = 0;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static void m18933a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    /* renamed from: a */
    private static void m18932a(float[] fArr, float f) {
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

    /* renamed from: a */
    private static void m18931a(float[] fArr, float[] fArr2, float[] fArr3) {
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

    /* renamed from: b */
    private static void m18929b(float[] fArr, float f) {
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

    /* renamed from: d */
    private final boolean m18927d() {
        EGLSurface eGLSurface = this.f39773z;
        boolean z = false;
        if (eGLSurface != null) {
            z = false;
            if (eGLSurface != EGL10.EGL_NO_SURFACE) {
                EGL10 egl10 = this.f39770w;
                EGLDisplay eGLDisplay = this.f39771x;
                EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
                z = this.f39770w.eglDestroySurface(this.f39771x, this.f39773z) | egl10.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT) | false;
                this.f39773z = null;
            }
        }
        EGLContext eGLContext = this.f39772y;
        boolean z2 = z;
        if (eGLContext != null) {
            z2 = z | this.f39770w.eglDestroyContext(this.f39771x, eGLContext);
            this.f39772y = null;
        }
        EGLDisplay eGLDisplay2 = this.f39771x;
        boolean z3 = z2;
        if (eGLDisplay2 != null) {
            z3 = z2 | this.f39770w.eglTerminate(eGLDisplay2);
            this.f39771x = null;
        }
        return z3;
    }

    @Override // com.google.android.gms.internal.ads.aaw
    /* renamed from: a */
    public final void mo18938a() {
        synchronized (this.f39769v) {
            this.f39769v.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m18937a(float f, float f2) {
        float f3;
        float f4;
        float f5;
        int i = this.f39761n;
        int i2 = this.f39760m;
        if (i > i2) {
            f5 = (f * 1.7453293f) / i;
            f3 = f2 * 1.7453293f;
            f4 = i;
        } else {
            f5 = (f * 1.7453293f) / i2;
            f3 = f2 * 1.7453293f;
            f4 = i2;
        }
        this.f39758k -= f5;
        float f6 = this.f39759l - (f3 / f4);
        this.f39759l = f6;
        if (f6 < -1.5707964f) {
            this.f39759l = -1.5707964f;
        }
        if (this.f39759l > 1.5707964f) {
            this.f39759l = 1.5707964f;
        }
    }

    /* renamed from: a */
    public final void m18936a(int i, int i2) {
        synchronized (this.f39769v) {
            this.f39761n = i;
            this.f39760m = i2;
            this.f39747A = true;
            this.f39769v.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m18934a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f39761n = i;
        this.f39760m = i2;
        this.f39763p = surfaceTexture;
    }

    /* renamed from: b */
    public final void m18930b() {
        synchronized (this.f39769v) {
            this.f39748B = true;
            this.f39763p = null;
            this.f39769v.notifyAll();
        }
    }

    /* renamed from: c */
    public final SurfaceTexture m18928c() {
        if (this.f39763p == null) {
            return null;
        }
        try {
            this.f39768u.await();
        } catch (InterruptedException e) {
        }
        return this.f39762o;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f39766s++;
        synchronized (this.f39769v) {
            this.f39769v.notifyAll();
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
