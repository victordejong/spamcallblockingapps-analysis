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
import android.view.Surface;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.EGLSurfaceTexture;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface.class */
public final class DummySurface extends Surface {
    private static final String EXTENSION_PROTECTED_CONTENT = "EGL_EXT_protected_content";
    private static final String EXTENSION_SURFACELESS_CONTEXT = "EGL_KHR_surfaceless_context";
    private static final String TAG = "DummySurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final HandlerThreadC2034a thread;
    private boolean threadReleased;

    /* renamed from: androidx.media2.exoplayer.external.video.DummySurface$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface$a.class */
    public static final class HandlerThreadC2034a extends HandlerThread implements Handler.Callback {

        /* renamed from: a */
        Handler f8167a;

        /* renamed from: b */
        private EGLSurfaceTexture f8168b;

        /* renamed from: c */
        private Error f8169c;

        /* renamed from: d */
        private RuntimeException f8170d;

        /* renamed from: e */
        private DummySurface f8171e;

        public HandlerThreadC2034a() {
            super("dummySurface");
        }

        /* renamed from: a */
        public final DummySurface m41474a(int i) {
            boolean z;
            start();
            Handler handler = new Handler(getLooper(), this);
            this.f8167a = handler;
            this.f8168b = new EGLSurfaceTexture(handler);
            synchronized (this) {
                this.f8167a.obtainMessage(1, i, 0).sendToTarget();
                z = false;
                while (this.f8171e == null && this.f8170d == null && this.f8169c == null) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f8170d;
            if (runtimeException == null) {
                Error error = this.f8169c;
                if (error != null) {
                    throw error;
                }
                return (DummySurface) C1993a.m41690a(this.f8171e);
            }
            throw runtimeException;
        }

        /* JADX WARN: Finally extract failed */
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int[] iArr;
            EGLSurface eGLSurface;
            int[] iArr2;
            int i = message.what;
            boolean z = false;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        C1993a.m41690a(this.f8168b);
                        EGLSurfaceTexture eGLSurfaceTexture = this.f8168b;
                        eGLSurfaceTexture.f8052b.removeCallbacks(eGLSurfaceTexture);
                        if (eGLSurfaceTexture.f8057g != null) {
                            eGLSurfaceTexture.f8057g.release();
                            GLES20.glDeleteTextures(1, eGLSurfaceTexture.f8053c, 0);
                        }
                        if (eGLSurfaceTexture.f8054d != null && !eGLSurfaceTexture.f8054d.equals(EGL14.EGL_NO_DISPLAY)) {
                            EGLDisplay eGLDisplay = eGLSurfaceTexture.f8054d;
                            EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
                            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
                        }
                        if (eGLSurfaceTexture.f8056f != null && !eGLSurfaceTexture.f8056f.equals(EGL14.EGL_NO_SURFACE)) {
                            EGL14.eglDestroySurface(eGLSurfaceTexture.f8054d, eGLSurfaceTexture.f8056f);
                        }
                        if (eGLSurfaceTexture.f8055e != null) {
                            EGL14.eglDestroyContext(eGLSurfaceTexture.f8054d, eGLSurfaceTexture.f8055e);
                        }
                        if (C1996ac.f8062a >= 19) {
                            EGL14.eglReleaseThread();
                        }
                        if (eGLSurfaceTexture.f8054d != null && !eGLSurfaceTexture.f8054d.equals(EGL14.EGL_NO_DISPLAY)) {
                            EGL14.eglTerminate(eGLSurfaceTexture.f8054d);
                        }
                        eGLSurfaceTexture.f8054d = null;
                        eGLSurfaceTexture.f8055e = null;
                        eGLSurfaceTexture.f8056f = null;
                        eGLSurfaceTexture.f8057g = null;
                    } finally {
                        try {
                            quit();
                            return true;
                        } catch (Throwable th) {
                        }
                    }
                    quit();
                    return true;
                }
                try {
                    int i2 = message.arg1;
                    C1993a.m41690a(this.f8168b);
                    EGLSurfaceTexture eGLSurfaceTexture2 = this.f8168b;
                    EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                    if (eglGetDisplay == null) {
                        throw new EGLSurfaceTexture.GlException("eglGetDisplay failed");
                    }
                    int[] iArr3 = new int[2];
                    if (!EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1)) {
                        throw new EGLSurfaceTexture.GlException("eglInitialize failed");
                    }
                    eGLSurfaceTexture2.f8054d = eglGetDisplay;
                    EGLDisplay eGLDisplay2 = eGLSurfaceTexture2.f8054d;
                    EGLConfig[] eGLConfigArr = new EGLConfig[1];
                    int[] iArr4 = new int[1];
                    boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay2, EGLSurfaceTexture.f8051a, 0, eGLConfigArr, 0, 1, iArr4, 0);
                    if (!eglChooseConfig || iArr4[0] <= 0 || eGLConfigArr[0] == null) {
                        throw new EGLSurfaceTexture.GlException(C1996ac.m41653a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr4[0]), eGLConfigArr[0]));
                    }
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    EGLDisplay eGLDisplay3 = eGLSurfaceTexture2.f8054d;
                    if (i2 == 0) {
                        iArr = new int[3];
                        iArr[0] = 12440;
                        iArr[1] = 2;
                        iArr[2] = 12344;
                    } else {
                        iArr = new int[5];
                        iArr[0] = 12440;
                        iArr[1] = 2;
                        iArr[2] = 12992;
                        iArr[3] = 1;
                        iArr[4] = 12344;
                    }
                    EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay3, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
                    if (eglCreateContext == null) {
                        throw new EGLSurfaceTexture.GlException("eglCreateContext failed");
                    }
                    eGLSurfaceTexture2.f8055e = eglCreateContext;
                    EGLDisplay eGLDisplay4 = eGLSurfaceTexture2.f8054d;
                    EGLContext eGLContext = eGLSurfaceTexture2.f8055e;
                    if (i2 == 1) {
                        eGLSurface = EGL14.EGL_NO_SURFACE;
                    } else {
                        if (i2 == 2) {
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
                        eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay4, eGLConfig, iArr2, 0);
                        if (eGLSurface == null) {
                            throw new EGLSurfaceTexture.GlException("eglCreatePbufferSurface failed");
                        }
                    }
                    if (!EGL14.eglMakeCurrent(eGLDisplay4, eGLSurface, eGLSurface, eGLContext)) {
                        throw new EGLSurfaceTexture.GlException("eglMakeCurrent failed");
                    }
                    eGLSurfaceTexture2.f8056f = eGLSurface;
                    GLES20.glGenTextures(1, eGLSurfaceTexture2.f8053c, 0);
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        int glGetError = GLES20.glGetError();
                        if (glGetError == 0) {
                            break;
                        }
                        String valueOf = String.valueOf(GLU.gluErrorString(i4));
                        C2009j.m41580b("GlUtil", valueOf.length() != 0 ? "glError ".concat(valueOf) : new String("glError "));
                        i3 = glGetError;
                    }
                    eGLSurfaceTexture2.f8057g = new SurfaceTexture(eGLSurfaceTexture2.f8053c[0]);
                    eGLSurfaceTexture2.f8057g.setOnFrameAvailableListener(eGLSurfaceTexture2);
                    SurfaceTexture surfaceTexture = (SurfaceTexture) C1993a.m41690a(this.f8168b.f8057g);
                    if (i2 != 0) {
                        z = true;
                    }
                    this.f8171e = new DummySurface(this, surfaceTexture, z);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    C2009j.m41579b(DummySurface.TAG, "Failed to initialize dummy surface", e);
                    this.f8169c = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    C2009j.m41579b(DummySurface.TAG, "Failed to initialize dummy surface", e2);
                    this.f8170d = e2;
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

    private DummySurface(HandlerThreadC2034a handlerThreadC2034a, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.thread = handlerThreadC2034a;
        this.secure = z;
    }

    private static void assertApiLevel17OrHigher() {
        if (C1996ac.f8062a >= 17) {
            return;
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    private static int getSecureModeV24(Context context) {
        String eglQueryString;
        if (C1996ac.f8062a >= 26 || (!"samsung".equals(C1996ac.f8064c) && !"XT1650".equals(C1996ac.f8065d))) {
            if ((C1996ac.f8062a < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains(EXTENSION_PROTECTED_CONTENT)) {
                return 0;
            }
            return eglQueryString.contains(EXTENSION_SURFACELESS_CONTEXT) ? 1 : 2;
        }
        return 0;
    }

    public static boolean isSecureSupported(Context context) {
        int i;
        synchronized (DummySurface.class) {
            try {
                if (!secureModeInitialized) {
                    secureMode = C1996ac.f8062a < 24 ? 0 : getSecureModeV24(context);
                    secureModeInitialized = true;
                }
                i = secureMode;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i != 0;
    }

    public static DummySurface newInstanceV17(Context context, boolean z) {
        assertApiLevel17OrHigher();
        int i = 0;
        C1993a.m41686b(!z || isSecureSupported(context));
        HandlerThreadC2034a handlerThreadC2034a = new HandlerThreadC2034a();
        if (z) {
            i = secureMode;
        }
        return handlerThreadC2034a.m41474a(i);
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                HandlerThreadC2034a handlerThreadC2034a = this.thread;
                C1993a.m41690a(handlerThreadC2034a.f8167a);
                handlerThreadC2034a.f8167a.sendEmptyMessage(2);
                this.threadReleased = true;
            }
        }
    }
}
