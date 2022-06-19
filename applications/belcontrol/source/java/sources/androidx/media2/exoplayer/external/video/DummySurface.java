package androidx.media2.exoplayer.external.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface.class */
public final class DummySurface extends Surface {

    /* renamed from: c */
    public static int f1192c;

    /* renamed from: d */
    public static boolean f1193d;

    /* renamed from: a */
    public final HandlerThreadC0162b f1194a;

    /* renamed from: b */
    public boolean f1195b;

    /* renamed from: androidx.media2.exoplayer.external.video.DummySurface$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DummySurface$b.class */
    public static class HandlerThreadC0162b extends HandlerThread implements Handler.Callback {

        /* renamed from: a */
        public mt f1196a;

        /* renamed from: b */
        public Handler f1197b;

        /* renamed from: c */
        public Error f1198c;

        /* renamed from: d */
        public RuntimeException f1199d;

        /* renamed from: f */
        public DummySurface f1200f;

        public HandlerThreadC0162b() {
            super("dummySurface");
        }

        /* renamed from: a */
        public DummySurface m6387a(int i) {
            boolean z;
            start();
            this.f1197b = new Handler(getLooper(), this);
            this.f1196a = new mt(this.f1197b);
            synchronized (this) {
                this.f1197b.obtainMessage(1, i, 0).sendToTarget();
                z = false;
                while (this.f1200f == null && this.f1199d == null && this.f1198c == null) {
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
            RuntimeException runtimeException = this.f1199d;
            if (runtimeException == null) {
                Error error = this.f1198c;
                if (error != null) {
                    throw error;
                }
                DummySurface dummySurface = this.f1200f;
                it.e(dummySurface);
                return dummySurface;
            }
            throw runtimeException;
        }

        /* renamed from: b */
        public final void m6386b(int i) {
            it.e(this.f1196a);
            this.f1196a.h(i);
            this.f1200f = new DummySurface(this, this.f1196a.g(), i != 0);
        }

        /* renamed from: c */
        public void m6385c() {
            it.e(this.f1197b);
            this.f1197b.sendEmptyMessage(2);
        }

        /* renamed from: d */
        public final void m6384d() {
            it.e(this.f1196a);
            this.f1196a.i();
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
                        m6384d();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    m6386b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    st.d("DummySurface", "Failed to initialize dummy surface", e);
                    this.f1198c = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    st.d("DummySurface", "Failed to initialize dummy surface", e2);
                    this.f1199d = e2;
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

    public DummySurface(HandlerThreadC0162b handlerThreadC0162b, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f1194a = handlerThreadC0162b;
    }

    /* renamed from: a */
    public static void m6391a() {
        if (nu.a >= 17) {
            return;
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @TargetApi(24)
    /* renamed from: b */
    public static int m6390b(Context context) {
        String eglQueryString;
        int i = nu.a;
        if (i >= 26 || (!"samsung".equals(nu.c) && !"XT1650".equals(nu.d))) {
            if ((i < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains("EGL_EXT_protected_content")) {
                return 0;
            }
            return eglQueryString.contains("EGL_KHR_surfaceless_context") ? 1 : 2;
        }
        return 0;
    }

    /* renamed from: c */
    public static boolean m6389c(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            try {
                z = true;
                if (!f1193d) {
                    f1192c = nu.a < 24 ? 0 : m6390b(context);
                    f1193d = true;
                }
                if (f1192c == 0) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: d */
    public static DummySurface m6388d(Context context, boolean z) {
        m6391a();
        int i = 0;
        it.f(!z || m6389c(context));
        HandlerThreadC0162b handlerThreadC0162b = new HandlerThreadC0162b();
        if (z) {
            i = f1192c;
        }
        return handlerThreadC0162b.m6387a(i);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f1194a) {
            if (!this.f1195b) {
                this.f1194a.m6385c();
                this.f1195b = true;
            }
        }
    }
}
