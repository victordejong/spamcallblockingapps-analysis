package androidx.media2.exoplayer.external.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.media2.exoplayer.external.util.EGLSurfaceTexture;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface.class */
public final class DummySurface extends Surface {

    /* renamed from: c */
    public static int f2025c;

    /* renamed from: d */
    public static boolean f2026d;

    /* renamed from: a */
    public final HandlerThreadC0358b f2027a;

    /* renamed from: b */
    public boolean f2028b;

    /* renamed from: androidx.media2.exoplayer.external.video.DummySurface$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface$b.class */
    public static class HandlerThreadC0358b extends HandlerThread implements Handler.Callback {

        /* renamed from: a */
        public EGLSurfaceTexture f2029a;

        /* renamed from: b */
        public Handler f2030b;

        /* renamed from: c */
        public Error f2031c;

        /* renamed from: d */
        public RuntimeException f2032d;

        /* renamed from: e */
        public DummySurface f2033e;

        public HandlerThreadC0358b() {
            super("dummySurface");
        }

        /* renamed from: a */
        public DummySurface m37882a(int i) {
            boolean z;
            start();
            this.f2030b = new Handler(getLooper(), this);
            this.f2029a = new EGLSurfaceTexture(this.f2030b);
            synchronized (this) {
                try {
                    z = false;
                    this.f2030b.obtainMessage(1, i, 0).sendToTarget();
                    while (this.f2033e == null && this.f2032d == null && this.f2031c == null) {
                        try {
                            wait();
                        } catch (InterruptedException e) {
                            z = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f2032d;
            if (runtimeException == null) {
                Error error = this.f2031c;
                if (error == null) {
                    DummySurface dummySurface = this.f2033e;
                    C1160a.m34522a(dummySurface);
                    return dummySurface;
                }
                throw error;
            }
            throw runtimeException;
        }

        /* renamed from: a */
        public void m37883a() {
            C1160a.m34522a(this.f2030b);
            this.f2030b.sendEmptyMessage(2);
        }

        /* renamed from: b */
        public final void m37881b() {
            C1160a.m34522a(this.f2029a);
            this.f2029a.m37892c();
        }

        /* renamed from: b */
        public final void m37880b(int i) {
            C1160a.m34522a(this.f2029a);
            this.f2029a.m37898a(i);
            this.f2033e = new DummySurface(this, this.f2029a.m37893b(), i != 0);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i == 1) {
                    try {
                        m37880b(message.arg1);
                        synchronized (this) {
                            notify();
                        }
                        return true;
                    } catch (Error e) {
                        C1175j.m34419a("DummySurface", "Failed to initialize dummy surface", e);
                        this.f2031c = e;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    } catch (RuntimeException e2) {
                        C1175j.m34419a("DummySurface", "Failed to initialize dummy surface", e2);
                        this.f2032d = e2;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    }
                } else if (i != 2) {
                    return true;
                } else {
                    try {
                        m37881b();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
            } catch (Throwable th) {
                synchronized (this) {
                    try {
                        notify();
                        throw th;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public DummySurface(HandlerThreadC0358b bVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f2027a = bVar;
    }

    /* renamed from: a */
    public static int m37886a(Context context) {
        String eglQueryString;
        if (C1167d0.f4688a < 26 && ("samsung".equals(C1167d0.f4690c) || "XT1650".equals(C1167d0.f4691d))) {
            return 0;
        }
        if ((C1167d0.f4688a < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains("EGL_EXT_protected_content")) {
            return 0;
        }
        return eglQueryString.contains("EGL_KHR_surfaceless_context") ? 1 : 2;
    }

    /* renamed from: a */
    public static DummySurface m37885a(Context context, boolean z) {
        m37887a();
        int i = 0;
        C1160a.m34518b(!z || m37884b(context));
        HandlerThreadC0358b bVar = new HandlerThreadC0358b();
        if (z) {
            i = f2025c;
        }
        return bVar.m37882a(i);
    }

    /* renamed from: a */
    public static void m37887a() {
        if (C1167d0.f4688a < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
    }

    /* renamed from: b */
    public static boolean m37884b(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            try {
                z = true;
                if (!f2026d) {
                    f2025c = C1167d0.f4688a < 24 ? 0 : m37886a(context);
                    f2026d = true;
                }
                if (f2025c == 0) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f2027a) {
            if (!this.f2028b) {
                this.f2027a.m37883a();
                this.f2028b = true;
            }
        }
    }
}
