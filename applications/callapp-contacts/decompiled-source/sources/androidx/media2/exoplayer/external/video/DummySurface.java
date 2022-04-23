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
import androidx.media2.exoplayer.external.util.EGLSurfaceTexture;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface.class */
public final class DummySurface extends Surface {
    private static final String EXTENSION_PROTECTED_CONTENT = "EGL_EXT_protected_content";
    private static final String EXTENSION_SURFACELESS_CONTEXT = "EGL_KHR_surfaceless_context";
    private static final String TAG = "DummySurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final a thread;
    private boolean threadReleased;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface$a.class */
    static final class a extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        Handler f4196a;

        /* renamed from: b  reason: collision with root package name */
        private EGLSurfaceTexture f4197b;

        /* renamed from: c  reason: collision with root package name */
        private Error f4198c;

        /* renamed from: d  reason: collision with root package name */
        private RuntimeException f4199d;
        private DummySurface e;

        public a() {
            super("dummySurface");
        }

        public final DummySurface a(int i) {
            boolean z;
            start();
            Handler handler = new Handler(getLooper(), this);
            this.f4196a = handler;
            this.f4197b = new EGLSurfaceTexture(handler);
            synchronized (this) {
                z = false;
                this.f4196a.obtainMessage(1, i, 0).sendToTarget();
                while (this.e == null && this.f4199d == null && this.f4198c == null) {
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
            RuntimeException runtimeException = this.f4199d;
            if (runtimeException == null) {
                Error error = this.f4198c;
                if (error == null) {
                    return (DummySurface) androidx.media2.exoplayer.external.util.a.a(this.e);
                }
                throw error;
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
                if (i == 1) {
                    try {
                        int i2 = message.arg1;
                        androidx.media2.exoplayer.external.util.a.a(this.f4197b);
                        EGLSurfaceTexture eGLSurfaceTexture = this.f4197b;
                        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                        if (eglGetDisplay != null) {
                            int[] iArr3 = new int[2];
                            if (EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1)) {
                                eGLSurfaceTexture.f4115d = eglGetDisplay;
                                EGLDisplay eGLDisplay = eGLSurfaceTexture.f4115d;
                                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                                int[] iArr4 = new int[1];
                                boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, EGLSurfaceTexture.f4112a, 0, eGLConfigArr, 0, 1, iArr4, 0);
                                if (!eglChooseConfig || iArr4[0] <= 0 || eGLConfigArr[0] == null) {
                                    throw new EGLSurfaceTexture.GlException(ac.a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr4[0]), eGLConfigArr[0]));
                                }
                                EGLConfig eGLConfig = eGLConfigArr[0];
                                EGLDisplay eGLDisplay2 = eGLSurfaceTexture.f4115d;
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
                                EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay2, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
                                if (eglCreateContext != null) {
                                    eGLSurfaceTexture.e = eglCreateContext;
                                    EGLDisplay eGLDisplay3 = eGLSurfaceTexture.f4115d;
                                    EGLContext eGLContext = eGLSurfaceTexture.e;
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
                                        eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay3, eGLConfig, iArr2, 0);
                                        if (eGLSurface == null) {
                                            throw new EGLSurfaceTexture.GlException("eglCreatePbufferSurface failed");
                                        }
                                    }
                                    if (EGL14.eglMakeCurrent(eGLDisplay3, eGLSurface, eGLSurface, eGLContext)) {
                                        eGLSurfaceTexture.f = eGLSurface;
                                        GLES20.glGenTextures(1, eGLSurfaceTexture.f4114c, 0);
                                        int i3 = 0;
                                        while (true) {
                                            int glGetError = GLES20.glGetError();
                                            if (glGetError == 0) {
                                                break;
                                            }
                                            String valueOf = String.valueOf(GLU.gluErrorString(i3));
                                            j.b("GlUtil", valueOf.length() != 0 ? "glError ".concat(valueOf) : new String("glError "));
                                            i3 = glGetError;
                                        }
                                        eGLSurfaceTexture.g = new SurfaceTexture(eGLSurfaceTexture.f4114c[0]);
                                        eGLSurfaceTexture.g.setOnFrameAvailableListener(eGLSurfaceTexture);
                                        SurfaceTexture surfaceTexture = (SurfaceTexture) androidx.media2.exoplayer.external.util.a.a(this.f4197b.g);
                                        if (i2 != 0) {
                                            z = true;
                                        }
                                        this.e = new DummySurface(this, surfaceTexture, z);
                                        synchronized (this) {
                                            notify();
                                        }
                                        return true;
                                    }
                                    throw new EGLSurfaceTexture.GlException("eglMakeCurrent failed");
                                }
                                throw new EGLSurfaceTexture.GlException("eglCreateContext failed");
                            }
                            throw new EGLSurfaceTexture.GlException("eglInitialize failed");
                        }
                        throw new EGLSurfaceTexture.GlException("eglGetDisplay failed");
                    } catch (Error e) {
                        j.b(DummySurface.TAG, "Failed to initialize dummy surface", e);
                        this.f4198c = e;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    } catch (RuntimeException e2) {
                        j.b(DummySurface.TAG, "Failed to initialize dummy surface", e2);
                        this.f4199d = e2;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    }
                } else if (i != 2) {
                    return true;
                } else {
                    try {
                        androidx.media2.exoplayer.external.util.a.a(this.f4197b);
                        EGLSurfaceTexture eGLSurfaceTexture2 = this.f4197b;
                        eGLSurfaceTexture2.f4113b.removeCallbacks(eGLSurfaceTexture2);
                        if (eGLSurfaceTexture2.g != null) {
                            eGLSurfaceTexture2.g.release();
                            GLES20.glDeleteTextures(1, eGLSurfaceTexture2.f4114c, 0);
                        }
                        if (eGLSurfaceTexture2.f4115d != null && !eGLSurfaceTexture2.f4115d.equals(EGL14.EGL_NO_DISPLAY)) {
                            EGLDisplay eGLDisplay4 = eGLSurfaceTexture2.f4115d;
                            EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
                            EGL14.eglMakeCurrent(eGLDisplay4, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
                        }
                        if (eGLSurfaceTexture2.f != null && !eGLSurfaceTexture2.f.equals(EGL14.EGL_NO_SURFACE)) {
                            EGL14.eglDestroySurface(eGLSurfaceTexture2.f4115d, eGLSurfaceTexture2.f);
                        }
                        if (eGLSurfaceTexture2.e != null) {
                            EGL14.eglDestroyContext(eGLSurfaceTexture2.f4115d, eGLSurfaceTexture2.e);
                        }
                        if (ac.f4119a >= 19) {
                            EGL14.eglReleaseThread();
                        }
                        if (eGLSurfaceTexture2.f4115d != null && !eGLSurfaceTexture2.f4115d.equals(EGL14.EGL_NO_DISPLAY)) {
                            EGL14.eglTerminate(eGLSurfaceTexture2.f4115d);
                        }
                        eGLSurfaceTexture2.f4115d = null;
                        eGLSurfaceTexture2.e = null;
                        eGLSurfaceTexture2.f = null;
                        eGLSurfaceTexture2.g = null;
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
            } catch (Throwable th2) {
                synchronized (this) {
                    notify();
                    throw th2;
                }
            }
        }
    }

    private DummySurface(a aVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.thread = aVar;
        this.secure = z;
    }

    private static void assertApiLevel17OrHigher() {
        if (ac.f4119a < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
    }

    private static int getSecureModeV24(Context context) {
        String eglQueryString;
        if (ac.f4119a < 26 && ("samsung".equals(ac.f4121c) || "XT1650".equals(ac.f4122d))) {
            return 0;
        }
        if ((ac.f4119a >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains(EXTENSION_PROTECTED_CONTENT)) {
            return eglQueryString.contains(EXTENSION_SURFACELESS_CONTEXT) ? 1 : 2;
        }
        return 0;
    }

    public static boolean isSecureSupported(Context context) {
        int i;
        synchronized (DummySurface.class) {
            try {
                if (!secureModeInitialized) {
                    secureMode = ac.f4119a < 24 ? 0 : getSecureModeV24(context);
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
        androidx.media2.exoplayer.external.util.a.b(!z || isSecureSupported(context));
        a aVar = new a();
        if (z) {
            i = secureMode;
        }
        return aVar.a(i);
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                a aVar = this.thread;
                androidx.media2.exoplayer.external.util.a.a(aVar.f4196a);
                aVar.f4196a.sendEmptyMessage(2);
                this.threadReleased = true;
            }
        }
    }
}
