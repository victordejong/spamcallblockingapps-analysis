package com.google.android.exoplayer2.video;

import android.content.Context;
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
import android.view.Surface;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface.class */
public final class DummySurface extends Surface {
    private static final String TAG = "DummySurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final a thread;
    private boolean threadReleased;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface$a.class */
    static final class a extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        Handler f22358a;

        /* renamed from: b  reason: collision with root package name */
        private EGLSurfaceTexture f22359b;

        /* renamed from: c  reason: collision with root package name */
        private Error f22360c;

        /* renamed from: d  reason: collision with root package name */
        private RuntimeException f22361d;
        private DummySurface e;

        public a() {
            super("ExoPlayer:DummySurface");
        }

        public final DummySurface a(int i) {
            boolean z;
            start();
            Handler handler = new Handler(getLooper(), this);
            this.f22358a = handler;
            this.f22359b = new EGLSurfaceTexture(handler);
            synchronized (this) {
                z = false;
                this.f22358a.obtainMessage(1, i, 0).sendToTarget();
                while (this.e == null && this.f22361d == null && this.f22360c == null) {
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
            RuntimeException runtimeException = this.f22361d;
            if (runtimeException == null) {
                Error error = this.f22360c;
                if (error == null) {
                    return (DummySurface) com.google.android.exoplayer2.util.a.b(this.e);
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
                        com.google.android.exoplayer2.util.a.b(this.f22359b);
                        EGLSurfaceTexture eGLSurfaceTexture = this.f22359b;
                        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                        if (eglGetDisplay != null) {
                            int[] iArr3 = new int[2];
                            if (EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1)) {
                                eGLSurfaceTexture.f22262d = eglGetDisplay;
                                EGLDisplay eGLDisplay = eGLSurfaceTexture.f22262d;
                                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                                int[] iArr4 = new int[1];
                                boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, EGLSurfaceTexture.f22259a, 0, eGLConfigArr, 0, 1, iArr4, 0);
                                if (!eglChooseConfig || iArr4[0] <= 0 || eGLConfigArr[0] == null) {
                                    throw new EGLSurfaceTexture.GlException(af.a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr4[0]), eGLConfigArr[0]));
                                }
                                EGLConfig eGLConfig = eGLConfigArr[0];
                                EGLDisplay eGLDisplay2 = eGLSurfaceTexture.f22262d;
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
                                    EGLDisplay eGLDisplay3 = eGLSurfaceTexture.f22262d;
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
                                        GLES20.glGenTextures(1, eGLSurfaceTexture.f22261c, 0);
                                        j.a();
                                        eGLSurfaceTexture.g = new SurfaceTexture(eGLSurfaceTexture.f22261c[0]);
                                        eGLSurfaceTexture.g.setOnFrameAvailableListener(eGLSurfaceTexture);
                                        SurfaceTexture surfaceTexture = (SurfaceTexture) com.google.android.exoplayer2.util.a.b(this.f22359b.g);
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
                        n.b(DummySurface.TAG, "Failed to initialize dummy surface", e);
                        this.f22360c = e;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    } catch (RuntimeException e2) {
                        n.b(DummySurface.TAG, "Failed to initialize dummy surface", e2);
                        this.f22361d = e2;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    }
                } else if (i != 2) {
                    return true;
                } else {
                    try {
                        com.google.android.exoplayer2.util.a.b(this.f22359b);
                        EGLSurfaceTexture eGLSurfaceTexture2 = this.f22359b;
                        eGLSurfaceTexture2.f22260b.removeCallbacks(eGLSurfaceTexture2);
                        if (eGLSurfaceTexture2.g != null) {
                            eGLSurfaceTexture2.g.release();
                            GLES20.glDeleteTextures(1, eGLSurfaceTexture2.f22261c, 0);
                        }
                        if (eGLSurfaceTexture2.f22262d != null && !eGLSurfaceTexture2.f22262d.equals(EGL14.EGL_NO_DISPLAY)) {
                            EGLDisplay eGLDisplay4 = eGLSurfaceTexture2.f22262d;
                            EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
                            EGL14.eglMakeCurrent(eGLDisplay4, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
                        }
                        if (eGLSurfaceTexture2.f != null && !eGLSurfaceTexture2.f.equals(EGL14.EGL_NO_SURFACE)) {
                            EGL14.eglDestroySurface(eGLSurfaceTexture2.f22262d, eGLSurfaceTexture2.f);
                        }
                        if (eGLSurfaceTexture2.e != null) {
                            EGL14.eglDestroyContext(eGLSurfaceTexture2.f22262d, eGLSurfaceTexture2.e);
                        }
                        if (af.f22275a >= 19) {
                            EGL14.eglReleaseThread();
                        }
                        if (eGLSurfaceTexture2.f22262d != null && !eGLSurfaceTexture2.f22262d.equals(EGL14.EGL_NO_DISPLAY)) {
                            EGL14.eglTerminate(eGLSurfaceTexture2.f22262d);
                        }
                        eGLSurfaceTexture2.f22262d = null;
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

    private static int getSecureMode(Context context) {
        String eglQueryString;
        if (!(af.f22275a >= 24 && (af.f22275a >= 26 || (!"samsung".equals(af.f22277c) && !"XT1650".equals(af.f22278d))) && ((af.f22275a >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content")))) {
            return 0;
        }
        boolean z = false;
        if (af.f22275a >= 17) {
            String eglQueryString2 = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
            z = false;
            if (eglQueryString2 != null) {
                z = false;
                if (eglQueryString2.contains("EGL_KHR_surfaceless_context")) {
                    z = true;
                }
            }
        }
        return z ? 1 : 2;
    }

    public static boolean isSecureSupported(Context context) {
        synchronized (DummySurface.class) {
            try {
                if (!secureModeInitialized) {
                    secureMode = getSecureMode(context);
                    secureModeInitialized = true;
                }
                return secureMode != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static DummySurface newInstanceV17(Context context, boolean z) {
        int i = 0;
        com.google.android.exoplayer2.util.a.b(!z || isSecureSupported(context));
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
                com.google.android.exoplayer2.util.a.b(aVar.f22358a);
                aVar.f22358a.sendEmptyMessage(2);
                this.threadReleased = true;
            }
        }
    }
}
