package androidx.media2.exoplayer.external.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.Surface;
import java.util.Locale;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.RunnableC27418d;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface.class */
public final class DummySurface extends Surface {

    /* renamed from: c */
    public static int f1146c;

    /* renamed from: d */
    public static boolean f1147d;

    /* renamed from: a */
    public final HandlerThreadC0256b f1148a;

    /* renamed from: b */
    public boolean f1149b;

    /* renamed from: androidx.media2.exoplayer.external.video.DummySurface$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface$b.class */
    public static class HandlerThreadC0256b extends HandlerThread implements Handler.Callback {

        /* renamed from: a */
        public RunnableC27418d f1150a;

        /* renamed from: b */
        public Handler f1151b;

        /* renamed from: c */
        public Error f1152c;

        /* renamed from: d */
        public RuntimeException f1153d;

        /* renamed from: e */
        public DummySurface f1154e;

        public HandlerThreadC0256b() {
            super("dummySurface");
        }

        /* renamed from: a */
        public final void m42816a(int i) {
            EGLSurface eGLSurface;
            Objects.requireNonNull(this.f1150a);
            RunnableC27418d runnableC27418d = this.f1150a;
            Objects.requireNonNull(runnableC27418d);
            boolean z = false;
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            if (eglGetDisplay != null) {
                int[] iArr = new int[2];
                if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                    throw new RunnableC27418d.C27420b("eglInitialize failed", null);
                }
                runnableC27418d.f77159c = eglGetDisplay;
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr2 = new int[1];
                boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, RunnableC27418d.f77156g, 0, eGLConfigArr, 0, 1, iArr2, 0);
                if (!eglChooseConfig || iArr2[0] <= 0 || eGLConfigArr[0] == null) {
                    int i2 = iArr2[0];
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    int i3 = C27445x.f77229a;
                    throw new RunnableC27418d.C27420b(String.format(Locale.US, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(i2), eGLConfig), null);
                }
                EGLConfig eGLConfig2 = eGLConfigArr[0];
                EGLContext eglCreateContext = EGL14.eglCreateContext(runnableC27418d.f77159c, eGLConfig2, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
                if (eglCreateContext == null) {
                    throw new RunnableC27418d.C27420b("eglCreateContext failed", null);
                }
                runnableC27418d.f77160d = eglCreateContext;
                EGLDisplay eGLDisplay = runnableC27418d.f77159c;
                if (i == 1) {
                    eGLSurface = EGL14.EGL_NO_SURFACE;
                } else {
                    eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig2, i == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                    if (eGLSurface == null) {
                        throw new RunnableC27418d.C27420b("eglCreatePbufferSurface failed", null);
                    }
                }
                if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eglCreateContext)) {
                    throw new RunnableC27418d.C27420b("eglMakeCurrent failed", null);
                }
                runnableC27418d.f77161e = eGLSurface;
                GLES20.glGenTextures(1, runnableC27418d.f77158b, 0);
                int i4 = 0;
                while (true) {
                    int i5 = i4;
                    int glGetError = GLES20.glGetError();
                    if (glGetError == 0) {
                        break;
                    }
                    String valueOf = String.valueOf(GLU.gluErrorString(i5));
                    if (valueOf.length() != 0) {
                        "glError ".concat(valueOf);
                    } else {
                        new String("glError ");
                    }
                    i4 = glGetError;
                }
                SurfaceTexture surfaceTexture = new SurfaceTexture(runnableC27418d.f77158b[0]);
                runnableC27418d.f77162f = surfaceTexture;
                surfaceTexture.setOnFrameAvailableListener(runnableC27418d);
                SurfaceTexture surfaceTexture2 = this.f1150a.f77162f;
                Objects.requireNonNull(surfaceTexture2);
                if (i != 0) {
                    z = true;
                }
                this.f1154e = new DummySurface(this, surfaceTexture2, z, null);
                return;
            }
            throw new RunnableC27418d.C27420b("eglGetDisplay failed", null);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        public final void m42815b() {
            Objects.requireNonNull(this.f1150a);
            RunnableC27418d runnableC27418d = this.f1150a;
            runnableC27418d.f77157a.removeCallbacks(runnableC27418d);
            try {
                SurfaceTexture surfaceTexture = runnableC27418d.f77162f;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                    GLES20.glDeleteTextures(1, runnableC27418d.f77158b, 0);
                }
                EGLDisplay eGLDisplay = runnableC27418d.f77159c;
                if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay2 = runnableC27418d.f77159c;
                    EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface2 = runnableC27418d.f77161e;
                if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(runnableC27418d.f77159c, runnableC27418d.f77161e);
                }
                EGLContext eGLContext = runnableC27418d.f77160d;
                if (eGLContext != null) {
                    EGL14.eglDestroyContext(runnableC27418d.f77159c, eGLContext);
                }
                if (C27445x.f77229a >= 19) {
                    EGL14.eglReleaseThread();
                }
                EGLDisplay eGLDisplay3 = runnableC27418d.f77159c;
                if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(runnableC27418d.f77159c);
                }
                runnableC27418d.f77159c = null;
                runnableC27418d.f77160d = null;
                runnableC27418d.f77161e = null;
                runnableC27418d.f77162f = null;
            } catch (Throwable th) {
                EGLDisplay eGLDisplay4 = runnableC27418d.f77159c;
                if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay5 = runnableC27418d.f77159c;
                    EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface4 = runnableC27418d.f77161e;
                if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(runnableC27418d.f77159c, runnableC27418d.f77161e);
                }
                EGLContext eGLContext2 = runnableC27418d.f77160d;
                if (eGLContext2 != null) {
                    EGL14.eglDestroyContext(runnableC27418d.f77159c, eGLContext2);
                }
                if (C27445x.f77229a >= 19) {
                    EGL14.eglReleaseThread();
                }
                EGLDisplay eGLDisplay6 = runnableC27418d.f77159c;
                if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(runnableC27418d.f77159c);
                }
                runnableC27418d.f77159c = null;
                runnableC27418d.f77160d = null;
                runnableC27418d.f77161e = null;
                runnableC27418d.f77162f = null;
                throw th;
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        m42815b();
                    } catch (Throwable th) {
                    }
                    quit();
                    return true;
                }
                try {
                    try {
                        m42816a(message.arg1);
                        synchronized (this) {
                            notify();
                        }
                        return true;
                    } catch (RuntimeException e) {
                        this.f1153d = e;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    }
                } catch (Error e2) {
                    this.f1152c = e2;
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
    }

    public DummySurface(HandlerThreadC0256b handlerThreadC0256b, SurfaceTexture surfaceTexture, boolean z, C0255a c0255a) {
        super(surfaceTexture);
        this.f1148a = handlerThreadC0256b;
    }

    /* renamed from: a */
    public static int m42819a(Context context) {
        String eglQueryString;
        int i = C27445x.f77229a;
        if (i >= 26 || (!"samsung".equals(C27445x.f77231c) && !"XT1650".equals(C27445x.f77232d))) {
            if ((i < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains("EGL_EXT_protected_content")) {
                return 0;
            }
            return eglQueryString.contains("EGL_KHR_surfaceless_context") ? 1 : 2;
        }
        return 0;
    }

    /* renamed from: b */
    public static boolean m42818b(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            try {
                z = true;
                if (!f1147d) {
                    f1146c = C27445x.f77229a < 24 ? 0 : m42819a(context);
                    f1147d = true;
                }
                if (f1146c == 0) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: c */
    public static DummySurface m42817c(Context context, boolean z) {
        boolean z2;
        if (C27445x.f77229a >= 17) {
            MediaSessionCompat.m43184y(!z || m42818b(context));
            HandlerThreadC0256b handlerThreadC0256b = new HandlerThreadC0256b();
            int i = z ? f1146c : 0;
            handlerThreadC0256b.start();
            Handler handler = new Handler(handlerThreadC0256b.getLooper(), handlerThreadC0256b);
            handlerThreadC0256b.f1151b = handler;
            handlerThreadC0256b.f1150a = new RunnableC27418d(handler);
            synchronized (handlerThreadC0256b) {
                handlerThreadC0256b.f1151b.obtainMessage(1, i, 0).sendToTarget();
                z2 = false;
                while (handlerThreadC0256b.f1154e == null && handlerThreadC0256b.f1153d == null && handlerThreadC0256b.f1152c == null) {
                    try {
                        handlerThreadC0256b.wait();
                    } catch (InterruptedException e) {
                        z2 = true;
                    }
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = handlerThreadC0256b.f1153d;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = handlerThreadC0256b.f1152c;
            if (error != null) {
                throw error;
            }
            DummySurface dummySurface = handlerThreadC0256b.f1154e;
            Objects.requireNonNull(dummySurface);
            return dummySurface;
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f1148a) {
            if (!this.f1149b) {
                HandlerThreadC0256b handlerThreadC0256b = this.f1148a;
                Objects.requireNonNull(handlerThreadC0256b.f1151b);
                handlerThreadC0256b.f1151b.sendEmptyMessage(2);
                this.f1149b = true;
            }
        }
    }
}
