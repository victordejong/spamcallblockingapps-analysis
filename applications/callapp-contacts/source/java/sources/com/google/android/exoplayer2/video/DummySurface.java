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
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11610j;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface.class */
public final class DummySurface extends Surface {
    private static final String TAG = "DummySurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final HandlerThreadC11639a thread;
    private boolean threadReleased;

    /* renamed from: com.google.android.exoplayer2.video.DummySurface$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface$a.class */
    public static final class HandlerThreadC11639a extends HandlerThread implements Handler.Callback {

        /* renamed from: a */
        Handler f38766a;

        /* renamed from: b */
        private EGLSurfaceTexture f38767b;

        /* renamed from: c */
        private Error f38768c;

        /* renamed from: d */
        private RuntimeException f38769d;

        /* renamed from: e */
        private DummySurface f38770e;

        public HandlerThreadC11639a() {
            super("ExoPlayer:DummySurface");
        }

        /* renamed from: a */
        public final DummySurface m19755a(int i) {
            boolean z;
            start();
            Handler handler = new Handler(getLooper(), this);
            this.f38766a = handler;
            this.f38767b = new EGLSurfaceTexture(handler);
            synchronized (this) {
                this.f38766a.obtainMessage(1, i, 0).sendToTarget();
                z = false;
                while (this.f38770e == null && this.f38769d == null && this.f38768c == null) {
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
            RuntimeException runtimeException = this.f38769d;
            if (runtimeException == null) {
                Error error = this.f38768c;
                if (error != null) {
                    throw error;
                }
                return (DummySurface) C11593a.m20020b(this.f38770e);
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
                        C11593a.m20020b(this.f38767b);
                        EGLSurfaceTexture eGLSurfaceTexture = this.f38767b;
                        eGLSurfaceTexture.f38629b.removeCallbacks(eGLSurfaceTexture);
                        if (eGLSurfaceTexture.f38634g != null) {
                            eGLSurfaceTexture.f38634g.release();
                            GLES20.glDeleteTextures(1, eGLSurfaceTexture.f38630c, 0);
                        }
                        if (eGLSurfaceTexture.f38631d != null && !eGLSurfaceTexture.f38631d.equals(EGL14.EGL_NO_DISPLAY)) {
                            EGLDisplay eGLDisplay = eGLSurfaceTexture.f38631d;
                            EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
                            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
                        }
                        if (eGLSurfaceTexture.f38633f != null && !eGLSurfaceTexture.f38633f.equals(EGL14.EGL_NO_SURFACE)) {
                            EGL14.eglDestroySurface(eGLSurfaceTexture.f38631d, eGLSurfaceTexture.f38633f);
                        }
                        if (eGLSurfaceTexture.f38632e != null) {
                            EGL14.eglDestroyContext(eGLSurfaceTexture.f38631d, eGLSurfaceTexture.f38632e);
                        }
                        if (C11599af.f38648a >= 19) {
                            EGL14.eglReleaseThread();
                        }
                        if (eGLSurfaceTexture.f38631d != null && !eGLSurfaceTexture.f38631d.equals(EGL14.EGL_NO_DISPLAY)) {
                            EGL14.eglTerminate(eGLSurfaceTexture.f38631d);
                        }
                        eGLSurfaceTexture.f38631d = null;
                        eGLSurfaceTexture.f38632e = null;
                        eGLSurfaceTexture.f38633f = null;
                        eGLSurfaceTexture.f38634g = null;
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
                    C11593a.m20020b(this.f38767b);
                    EGLSurfaceTexture eGLSurfaceTexture2 = this.f38767b;
                    EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                    if (eglGetDisplay == null) {
                        throw new EGLSurfaceTexture.GlException("eglGetDisplay failed");
                    }
                    int[] iArr3 = new int[2];
                    if (!EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1)) {
                        throw new EGLSurfaceTexture.GlException("eglInitialize failed");
                    }
                    eGLSurfaceTexture2.f38631d = eglGetDisplay;
                    EGLDisplay eGLDisplay2 = eGLSurfaceTexture2.f38631d;
                    EGLConfig[] eGLConfigArr = new EGLConfig[1];
                    int[] iArr4 = new int[1];
                    boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay2, EGLSurfaceTexture.f38628a, 0, eGLConfigArr, 0, 1, iArr4, 0);
                    if (!eglChooseConfig || iArr4[0] <= 0 || eGLConfigArr[0] == null) {
                        throw new EGLSurfaceTexture.GlException(C11599af.m19968a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr4[0]), eGLConfigArr[0]));
                    }
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    EGLDisplay eGLDisplay3 = eGLSurfaceTexture2.f38631d;
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
                    eGLSurfaceTexture2.f38632e = eglCreateContext;
                    EGLDisplay eGLDisplay4 = eGLSurfaceTexture2.f38631d;
                    EGLContext eGLContext = eGLSurfaceTexture2.f38632e;
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
                    eGLSurfaceTexture2.f38633f = eGLSurface;
                    GLES20.glGenTextures(1, eGLSurfaceTexture2.f38630c, 0);
                    C11610j.m19892a();
                    eGLSurfaceTexture2.f38634g = new SurfaceTexture(eGLSurfaceTexture2.f38630c[0]);
                    eGLSurfaceTexture2.f38634g.setOnFrameAvailableListener(eGLSurfaceTexture2);
                    SurfaceTexture surfaceTexture = (SurfaceTexture) C11593a.m20020b(this.f38767b.f38634g);
                    if (i2 != 0) {
                        z = true;
                    }
                    this.f38770e = new DummySurface(this, surfaceTexture, z);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    C11617n.m19857b(DummySurface.TAG, "Failed to initialize dummy surface", e);
                    this.f38768c = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    C11617n.m19857b(DummySurface.TAG, "Failed to initialize dummy surface", e2);
                    this.f38769d = e2;
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

    private DummySurface(HandlerThreadC11639a handlerThreadC11639a, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.thread = handlerThreadC11639a;
        this.secure = z;
    }

    private static int getSecureMode(Context context) {
        String eglQueryString;
        if (C11599af.f38648a >= 24 && (C11599af.f38648a >= 26 || (!"samsung".equals(C11599af.f38650c) && !"XT1650".equals(C11599af.f38651d))) && ((C11599af.f38648a >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content"))) {
            boolean z = false;
            if (C11599af.f38648a >= 17) {
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
        return 0;
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
        C11593a.m20019b(!z || isSecureSupported(context));
        HandlerThreadC11639a handlerThreadC11639a = new HandlerThreadC11639a();
        if (z) {
            i = secureMode;
        }
        return handlerThreadC11639a.m19755a(i);
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                HandlerThreadC11639a handlerThreadC11639a = this.thread;
                C11593a.m20020b(handlerThreadC11639a.f38766a);
                handlerThreadC11639a.f38766a.sendEmptyMessage(2);
                this.threadReleased = true;
            }
        }
    }
}
