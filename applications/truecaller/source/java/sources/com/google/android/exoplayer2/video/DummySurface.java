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
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
import p193e.p1577m.p1578a.p1596c.p1636q1.RunnableC24780j;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface.class */
public final class DummySurface extends Surface {

    /* renamed from: c */
    public static int f5215c;

    /* renamed from: d */
    public static boolean f5216d;

    /* renamed from: a */
    public final HandlerThreadC2026b f5217a;

    /* renamed from: b */
    public boolean f5218b;

    /* renamed from: com.google.android.exoplayer2.video.DummySurface$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface$b.class */
    public static class HandlerThreadC2026b extends HandlerThread implements Handler.Callback {

        /* renamed from: a */
        public RunnableC24780j f5219a;

        /* renamed from: b */
        public Handler f5220b;

        /* renamed from: c */
        public Error f5221c;

        /* renamed from: d */
        public RuntimeException f5222d;

        /* renamed from: e */
        public DummySurface f5223e;

        public HandlerThreadC2026b() {
            super("dummySurface");
        }

        /* renamed from: a */
        public final void m39183a(int i) {
            EGLSurface eGLSurface;
            Objects.requireNonNull(this.f5219a);
            RunnableC24780j runnableC24780j = this.f5219a;
            Objects.requireNonNull(runnableC24780j);
            boolean z = false;
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            if (eglGetDisplay != null) {
                int[] iArr = new int[2];
                if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                    throw new RunnableC24780j.C24782b("eglInitialize failed", null);
                }
                runnableC24780j.f69455c = eglGetDisplay;
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr2 = new int[1];
                boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, RunnableC24780j.f69452g, 0, eGLConfigArr, 0, 1, iArr2, 0);
                if (!eglChooseConfig || iArr2[0] <= 0 || eGLConfigArr[0] == null) {
                    throw new RunnableC24780j.C24782b(C24773d0.m4616h("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr2[0]), eGLConfigArr[0]), null);
                }
                EGLConfig eGLConfig = eGLConfigArr[0];
                EGLContext eglCreateContext = EGL14.eglCreateContext(runnableC24780j.f69455c, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
                if (eglCreateContext == null) {
                    throw new RunnableC24780j.C24782b("eglCreateContext failed", null);
                }
                runnableC24780j.f69456d = eglCreateContext;
                EGLDisplay eGLDisplay = runnableC24780j.f69455c;
                if (i == 1) {
                    eGLSurface = EGL14.EGL_NO_SURFACE;
                } else {
                    eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                    if (eGLSurface == null) {
                        throw new RunnableC24780j.C24782b("eglCreatePbufferSurface failed", null);
                    }
                }
                if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eglCreateContext)) {
                    throw new RunnableC24780j.C24782b("eglMakeCurrent failed", null);
                }
                runnableC24780j.f69457e = eGLSurface;
                GLES20.glGenTextures(1, runnableC24780j.f69454b, 0);
                C26232y.m2294v();
                SurfaceTexture surfaceTexture = new SurfaceTexture(runnableC24780j.f69454b[0]);
                runnableC24780j.f69458f = surfaceTexture;
                surfaceTexture.setOnFrameAvailableListener(runnableC24780j);
                SurfaceTexture surfaceTexture2 = this.f5219a.f69458f;
                Objects.requireNonNull(surfaceTexture2);
                if (i != 0) {
                    z = true;
                }
                this.f5223e = new DummySurface(this, surfaceTexture2, z, null);
                return;
            }
            throw new RunnableC24780j.C24782b("eglGetDisplay failed", null);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        public final void m39182b() {
            Objects.requireNonNull(this.f5219a);
            RunnableC24780j runnableC24780j = this.f5219a;
            runnableC24780j.f69453a.removeCallbacks(runnableC24780j);
            try {
                SurfaceTexture surfaceTexture = runnableC24780j.f69458f;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                    GLES20.glDeleteTextures(1, runnableC24780j.f69454b, 0);
                }
                EGLDisplay eGLDisplay = runnableC24780j.f69455c;
                if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay2 = runnableC24780j.f69455c;
                    EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface2 = runnableC24780j.f69457e;
                if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(runnableC24780j.f69455c, runnableC24780j.f69457e);
                }
                EGLContext eGLContext = runnableC24780j.f69456d;
                if (eGLContext != null) {
                    EGL14.eglDestroyContext(runnableC24780j.f69455c, eGLContext);
                }
                if (C24773d0.f69427a >= 19) {
                    EGL14.eglReleaseThread();
                }
                EGLDisplay eGLDisplay3 = runnableC24780j.f69455c;
                if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(runnableC24780j.f69455c);
                }
                runnableC24780j.f69455c = null;
                runnableC24780j.f69456d = null;
                runnableC24780j.f69457e = null;
                runnableC24780j.f69458f = null;
            } catch (Throwable th) {
                EGLDisplay eGLDisplay4 = runnableC24780j.f69455c;
                if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay5 = runnableC24780j.f69455c;
                    EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface4 = runnableC24780j.f69457e;
                if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(runnableC24780j.f69455c, runnableC24780j.f69457e);
                }
                EGLContext eGLContext2 = runnableC24780j.f69456d;
                if (eGLContext2 != null) {
                    EGL14.eglDestroyContext(runnableC24780j.f69455c, eGLContext2);
                }
                if (C24773d0.f69427a >= 19) {
                    EGL14.eglReleaseThread();
                }
                EGLDisplay eGLDisplay6 = runnableC24780j.f69455c;
                if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(runnableC24780j.f69455c);
                }
                runnableC24780j.f69455c = null;
                runnableC24780j.f69456d = null;
                runnableC24780j.f69457e = null;
                runnableC24780j.f69458f = null;
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
                        m39182b();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    m39183a(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    C24789n.m4576a("Failed to initialize dummy surface", e);
                    this.f5221c = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    C24789n.m4576a("Failed to initialize dummy surface", e2);
                    this.f5222d = e2;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                }
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }
    }

    public DummySurface(HandlerThreadC2026b handlerThreadC2026b, SurfaceTexture surfaceTexture, boolean z, C2025a c2025a) {
        super(surfaceTexture);
        this.f5217a = handlerThreadC2026b;
    }

    /* renamed from: a */
    public static int m39186a(Context context) {
        boolean z;
        String eglQueryString;
        int i = C24773d0.f69427a;
        if (i >= 24 && (i >= 26 || (!"samsung".equals(C24773d0.f69429c) && !"XT1650".equals(C24773d0.f69430d))) && ((i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content"))) {
            if (i < 17) {
                z = false;
            } else {
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

    /* renamed from: b */
    public static boolean m39185b(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            try {
                z = true;
                if (!f5216d) {
                    f5215c = m39186a(context);
                    f5216d = true;
                }
                if (f5215c == 0) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: c */
    public static DummySurface m39184c(Context context, boolean z) {
        boolean z2;
        if (C24773d0.f69427a >= 17) {
            C26232y.m2286x(!z || m39185b(context));
            HandlerThreadC2026b handlerThreadC2026b = new HandlerThreadC2026b();
            int i = z ? f5215c : 0;
            handlerThreadC2026b.start();
            Handler handler = new Handler(handlerThreadC2026b.getLooper(), handlerThreadC2026b);
            handlerThreadC2026b.f5220b = handler;
            handlerThreadC2026b.f5219a = new RunnableC24780j(handler);
            synchronized (handlerThreadC2026b) {
                handlerThreadC2026b.f5220b.obtainMessage(1, i, 0).sendToTarget();
                z2 = false;
                while (handlerThreadC2026b.f5223e == null && handlerThreadC2026b.f5222d == null && handlerThreadC2026b.f5221c == null) {
                    try {
                        handlerThreadC2026b.wait();
                    } catch (InterruptedException e) {
                        z2 = true;
                    }
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = handlerThreadC2026b.f5222d;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = handlerThreadC2026b.f5221c;
            if (error != null) {
                throw error;
            }
            DummySurface dummySurface = handlerThreadC2026b.f5223e;
            Objects.requireNonNull(dummySurface);
            return dummySurface;
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f5217a) {
            if (!this.f5218b) {
                HandlerThreadC2026b handlerThreadC2026b = this.f5217a;
                Objects.requireNonNull(handlerThreadC2026b.f5220b);
                handlerThreadC2026b.f5220b.sendEmptyMessage(2);
                this.f5218b = true;
            }
        }
    }
}
