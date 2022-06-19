package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import com.google.android.gms.ads.internal.C2341q;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aab.class */
public final class aab extends Thread implements SurfaceTexture.OnFrameAvailableListener, aac {

    /* renamed from: a */
    private static final float[] f7583a = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};

    /* renamed from: A */
    private volatile boolean f7584A;

    /* renamed from: B */
    private volatile boolean f7585B;

    /* renamed from: b */
    private final aaa f7586b;

    /* renamed from: k */
    private float f7595k;

    /* renamed from: l */
    private float f7596l;

    /* renamed from: m */
    private int f7597m;

    /* renamed from: n */
    private int f7598n;

    /* renamed from: o */
    private SurfaceTexture f7599o;

    /* renamed from: p */
    private SurfaceTexture f7600p;

    /* renamed from: q */
    private int f7601q;

    /* renamed from: r */
    private int f7602r;

    /* renamed from: s */
    private int f7603s;

    /* renamed from: w */
    private EGL10 f7607w;

    /* renamed from: x */
    private EGLDisplay f7608x;

    /* renamed from: y */
    private EGLContext f7609y;

    /* renamed from: z */
    private EGLSurface f7610z;

    /* renamed from: t */
    private FloatBuffer f7604t = ByteBuffer.allocateDirect(f7583a.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();

    /* renamed from: c */
    private final float[] f7587c = new float[9];

    /* renamed from: d */
    private final float[] f7588d = new float[9];

    /* renamed from: e */
    private final float[] f7589e = new float[9];

    /* renamed from: f */
    private final float[] f7590f = new float[9];

    /* renamed from: g */
    private final float[] f7591g = new float[9];

    /* renamed from: h */
    private final float[] f7592h = new float[9];

    /* renamed from: i */
    private final float[] f7593i = new float[9];

    /* renamed from: j */
    private float f7594j = Float.NaN;

    /* renamed from: u */
    private final CountDownLatch f7605u = new CountDownLatch(1);

    /* renamed from: v */
    private final Object f7606v = new Object();

    public aab(Context context) {
        super("SphericalVideoProcessor");
        this.f7604t.put(f7583a).position(0);
        this.f7586b = new aaa(context);
        this.f7586b.m13759a(this);
    }

    /* renamed from: a */
    private static int m13753a(int i, String str) {
        int i2;
        int glCreateShader = GLES20.glCreateShader(i);
        m13751a("createShader");
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            m13751a("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            m13751a("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            m13751a("getShaderiv");
            if (iArr[0] == 0) {
                Log.e("SphericalVideoRenderer", new StringBuilder(37).append("Could not compile shader ").append(i).append(":").toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                m13751a("deleteShader");
                i2 = 0;
                return i2;
            }
        }
        i2 = glCreateShader;
        return i2;
    }

    /* renamed from: a */
    private static void m13751a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Log.e("SphericalVideoRenderer", new StringBuilder(String.valueOf(str).length() + 21).append(str).append(": glError ").append(glGetError).toString());
        }
    }

    /* renamed from: a */
    private static void m13750a(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = (float) Math.cos(f);
        fArr[5] = (float) (-Math.sin(f));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(f);
        fArr[8] = (float) Math.cos(f);
    }

    /* renamed from: a */
    private static void m13749a(float[] fArr, float[] fArr2, float[] fArr3) {
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
    private static void m13747b(float[] fArr, float f) {
        fArr[0] = (float) Math.cos(f);
        fArr[1] = (float) (-Math.sin(f));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(f);
        fArr[4] = (float) Math.cos(f);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    /* renamed from: d */
    private final boolean m13746d() {
        boolean z = false;
        if (this.f7610z != null) {
            z = false;
            if (this.f7610z != EGL10.EGL_NO_SURFACE) {
                z = this.f7607w.eglMakeCurrent(this.f7608x, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT) | false | this.f7607w.eglDestroySurface(this.f7608x, this.f7610z);
                this.f7610z = null;
            }
        }
        boolean z2 = z;
        if (this.f7609y != null) {
            z2 = z | this.f7607w.eglDestroyContext(this.f7608x, this.f7609y);
            this.f7609y = null;
        }
        boolean z3 = z2;
        if (this.f7608x != null) {
            z3 = z2 | this.f7607w.eglTerminate(this.f7608x);
            this.f7608x = null;
        }
        return z3;
    }

    /* renamed from: a */
    public final void m13756a() {
        synchronized (this.f7606v) {
            this.f7585B = true;
            this.f7600p = null;
            this.f7606v.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m13755a(float f, float f2) {
        float f3;
        float f4;
        if (this.f7598n > this.f7597m) {
            f4 = (1.7453293f * f) / this.f7598n;
            f3 = (1.7453293f * f2) / this.f7598n;
        } else {
            float f5 = (1.7453293f * f) / this.f7597m;
            f3 = (1.7453293f * f2) / this.f7597m;
            f4 = f5;
        }
        this.f7595k -= f4;
        this.f7596l -= f3;
        if (this.f7596l < -1.5707964f) {
            this.f7596l = -1.5707964f;
        }
        if (this.f7596l > 1.5707964f) {
            this.f7596l = 1.5707964f;
        }
    }

    /* renamed from: a */
    public final void m13754a(int i, int i2) {
        synchronized (this.f7606v) {
            this.f7598n = i;
            this.f7597m = i2;
            this.f7584A = true;
            this.f7606v.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m13752a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f7598n = i;
        this.f7597m = i2;
        this.f7600p = surfaceTexture;
    }

    /* renamed from: b */
    public final SurfaceTexture m13748b() {
        SurfaceTexture surfaceTexture;
        if (this.f7600p == null) {
            surfaceTexture = null;
        } else {
            try {
                this.f7605u.await();
            } catch (InterruptedException e) {
            }
            surfaceTexture = this.f7599o;
        }
        return surfaceTexture;
    }

    @Override // com.google.android.gms.internal.ads.aac
    /* renamed from: c */
    public final void mo13745c() {
        synchronized (this.f7606v) {
            this.f7606v.notifyAll();
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f7603s++;
        synchronized (this.f7606v) {
            this.f7606v.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z;
        int i;
        if (this.f7600p == null) {
            C3556uu.m6749c("SphericalVideoProcessor started with no output texture.");
            this.f7605u.countDown();
            return;
        }
        this.f7607w = (EGL10) EGLContext.getEGL();
        this.f7608x = this.f7607w.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.f7608x == EGL10.EGL_NO_DISPLAY) {
            z = false;
        } else if (!this.f7607w.eglInitialize(this.f7608x, new int[2])) {
            z = false;
        } else {
            int[] iArr = new int[1];
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            EGLConfig eGLConfig = (!this.f7607w.eglChooseConfig(this.f7608x, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344}, eGLConfigArr, 1, iArr) || iArr[0] <= 0) ? null : eGLConfigArr[0];
            if (eGLConfig == null) {
                z = false;
            } else {
                this.f7609y = this.f7607w.eglCreateContext(this.f7608x, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
                if (this.f7609y == null || this.f7609y == EGL10.EGL_NO_CONTEXT) {
                    z = false;
                } else {
                    this.f7610z = this.f7607w.eglCreateWindowSurface(this.f7608x, eGLConfig, this.f7600p, null);
                    z = (this.f7610z == null || this.f7610z == EGL10.EGL_NO_SURFACE) ? false : this.f7607w.eglMakeCurrent(this.f7608x, this.f7610z, this.f7610z, this.f7609y);
                }
            }
        }
        ect<String> ectVar = edi.f16393az;
        int m13753a = m13753a(35633, !((String) dyx.m8158e().m7876a(ectVar)).equals(ectVar.m7892b()) ? (String) dyx.m8158e().m7876a(ectVar) : "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}");
        if (m13753a == 0) {
            i = 0;
        } else {
            ect<String> ectVar2 = edi.f16342aA;
            int m13753a2 = m13753a(35632, !((String) dyx.m8158e().m7876a(ectVar2)).equals(ectVar2.m7892b()) ? (String) dyx.m8158e().m7876a(ectVar2) : "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}");
            if (m13753a2 == 0) {
                i = 0;
            } else {
                int glCreateProgram = GLES20.glCreateProgram();
                m13751a("createProgram");
                i = glCreateProgram;
                if (glCreateProgram != 0) {
                    GLES20.glAttachShader(glCreateProgram, m13753a);
                    m13751a("attachShader");
                    GLES20.glAttachShader(glCreateProgram, m13753a2);
                    m13751a("attachShader");
                    GLES20.glLinkProgram(glCreateProgram);
                    m13751a("linkProgram");
                    int[] iArr2 = new int[1];
                    GLES20.glGetProgramiv(glCreateProgram, 35714, iArr2, 0);
                    m13751a("getProgramiv");
                    if (iArr2[0] != 1) {
                        Log.e("SphericalVideoRenderer", "Could not link program: ");
                        Log.e("SphericalVideoRenderer", GLES20.glGetProgramInfoLog(glCreateProgram));
                        GLES20.glDeleteProgram(glCreateProgram);
                        m13751a("deleteProgram");
                        i = 0;
                    } else {
                        GLES20.glValidateProgram(glCreateProgram);
                        m13751a("validateProgram");
                        i = glCreateProgram;
                    }
                }
            }
        }
        this.f7601q = i;
        GLES20.glUseProgram(this.f7601q);
        m13751a("useProgram");
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f7601q, "aPosition");
        GLES20.glVertexAttribPointer(glGetAttribLocation, 3, 5126, false, 12, (Buffer) this.f7604t);
        m13751a("vertexAttribPointer");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        m13751a("enableVertexAttribArray");
        int[] iArr3 = new int[1];
        GLES20.glGenTextures(1, iArr3, 0);
        m13751a("genTextures");
        int i2 = iArr3[0];
        GLES20.glBindTexture(36197, i2);
        m13751a("bindTextures");
        GLES20.glTexParameteri(36197, 10240, 9729);
        m13751a("texParameteri");
        GLES20.glTexParameteri(36197, 10241, 9729);
        m13751a("texParameteri");
        GLES20.glTexParameteri(36197, 10242, 33071);
        m13751a("texParameteri");
        GLES20.glTexParameteri(36197, 10243, 33071);
        m13751a("texParameteri");
        this.f7602r = GLES20.glGetUniformLocation(this.f7601q, "uVMat");
        GLES20.glUniformMatrix3fv(this.f7602r, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
        boolean z2 = this.f7601q != 0;
        if (!z || !z2) {
            String valueOf = String.valueOf(GLUtils.getEGLErrorString(this.f7607w.eglGetError()));
            String concat = valueOf.length() != 0 ? "EGL initialization failed: ".concat(valueOf) : new String("EGL initialization failed: ");
            C3556uu.m6749c(concat);
            C2341q.m14740g().m7095a(new Throwable(concat), "SphericalVideoProcessor.run.1");
            m13746d();
            this.f7605u.countDown();
            return;
        }
        this.f7599o = new SurfaceTexture(i2);
        this.f7599o.setOnFrameAvailableListener(this);
        this.f7605u.countDown();
        this.f7586b.m13761a();
        try {
            this.f7584A = true;
            while (!this.f7585B) {
                while (this.f7603s > 0) {
                    this.f7599o.updateTexImage();
                    this.f7603s--;
                }
                if (this.f7586b.m13758a(this.f7587c)) {
                    if (Float.isNaN(this.f7594j)) {
                        float[] fArr = this.f7587c;
                        float[] fArr2 = {0.0f, 1.0f, 0.0f};
                        float[] fArr3 = new float[3];
                        fArr3[0] = (fArr[0] * fArr2[0]) + (fArr[1] * fArr2[1]) + (fArr[2] * fArr2[2]);
                        fArr3[1] = (fArr[3] * fArr2[0]) + (fArr[4] * fArr2[1]) + (fArr[5] * fArr2[2]);
                        fArr3[2] = (fArr[8] * fArr2[2]) + (fArr[6] * fArr2[0]) + (fArr[7] * fArr2[1]);
                        this.f7594j = -(((float) Math.atan2(fArr3[1], fArr3[0])) - 1.5707964f);
                    }
                    m13747b(this.f7592h, this.f7594j + this.f7595k);
                } else {
                    m13750a(this.f7587c, -1.5707964f);
                    m13747b(this.f7592h, this.f7595k);
                }
                m13750a(this.f7588d, 1.5707964f);
                m13749a(this.f7589e, this.f7592h, this.f7588d);
                m13749a(this.f7590f, this.f7587c, this.f7589e);
                m13750a(this.f7591g, this.f7596l);
                m13749a(this.f7593i, this.f7591g, this.f7590f);
                GLES20.glUniformMatrix3fv(this.f7602r, 1, false, this.f7593i, 0);
                GLES20.glDrawArrays(5, 0, 4);
                m13751a("drawArrays");
                GLES20.glFinish();
                this.f7607w.eglSwapBuffers(this.f7608x, this.f7610z);
                if (this.f7584A) {
                    GLES20.glViewport(0, 0, this.f7598n, this.f7597m);
                    m13751a("viewport");
                    int glGetUniformLocation = GLES20.glGetUniformLocation(this.f7601q, "uFOVx");
                    int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.f7601q, "uFOVy");
                    if (this.f7598n > this.f7597m) {
                        GLES20.glUniform1f(glGetUniformLocation, 0.87266463f);
                        GLES20.glUniform1f(glGetUniformLocation2, (0.87266463f * this.f7597m) / this.f7598n);
                    } else {
                        GLES20.glUniform1f(glGetUniformLocation, (0.87266463f * this.f7598n) / this.f7597m);
                        GLES20.glUniform1f(glGetUniformLocation2, 0.87266463f);
                    }
                    this.f7584A = false;
                }
                try {
                    synchronized (this.f7606v) {
                        if (!this.f7585B && !this.f7584A && this.f7603s == 0) {
                            this.f7606v.wait();
                        }
                    }
                } catch (InterruptedException e) {
                }
            }
        } catch (IllegalStateException e2) {
            C3556uu.m6745e("SphericalVideoProcessor halted unexpectedly.");
        } catch (Throwable th) {
            C3556uu.m6748c("SphericalVideoProcessor died.", th);
            C2341q.m14740g().m7095a(th, "SphericalVideoProcessor.run.2");
        } finally {
            this.f7586b.m13757b();
            this.f7599o.setOnFrameAvailableListener(null);
            this.f7599o = null;
            m13746d();
        }
    }
}
