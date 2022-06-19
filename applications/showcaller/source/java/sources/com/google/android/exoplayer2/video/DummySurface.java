package com.google.android.exoplayer2.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5524m;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface.class */
public final class DummySurface extends Surface {

    /* renamed from: d */
    private static int f17970d;

    /* renamed from: e */
    private static boolean f17971e;

    /* renamed from: f */
    public final boolean f17972f;

    /* renamed from: g */
    private final HandlerThreadC5547b f17973g;

    /* renamed from: h */
    private boolean f17974h;

    /* renamed from: com.google.android.exoplayer2.video.DummySurface$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface$b.class */
    public static class HandlerThreadC5547b extends HandlerThread implements Handler.Callback {

        /* renamed from: d */
        private EGLSurfaceTexture f17975d;

        /* renamed from: e */
        private Handler f17976e;

        /* renamed from: f */
        private Error f17977f;

        /* renamed from: g */
        private RuntimeException f17978g;

        /* renamed from: h */
        private DummySurface f17979h;

        public HandlerThreadC5547b() {
            super("dummySurface");
        }

        /* renamed from: b */
        private void m18620b(int i) {
            C5508e.m18911e(this.f17975d);
            this.f17975d.m18932h(i);
            this.f17979h = new DummySurface(this, this.f17975d.m18933g(), i != 0);
        }

        /* renamed from: d */
        private void m18618d() {
            C5508e.m18911e(this.f17975d);
            this.f17975d.m18931i();
        }

        /* renamed from: a */
        public DummySurface m18621a(int i) {
            boolean z;
            start();
            this.f17976e = new Handler(getLooper(), this);
            this.f17975d = new EGLSurfaceTexture(this.f17976e);
            synchronized (this) {
                this.f17976e.obtainMessage(1, i, 0).sendToTarget();
                z = false;
                while (this.f17979h == null && this.f17978g == null && this.f17977f == null) {
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
            RuntimeException runtimeException = this.f17978g;
            if (runtimeException == null) {
                Error error = this.f17977f;
                if (error != null) {
                    throw error;
                }
                return (DummySurface) C5508e.m18911e(this.f17979h);
            }
            throw runtimeException;
        }

        /* renamed from: c */
        public void m18619c() {
            C5508e.m18911e(this.f17976e);
            this.f17976e.sendEmptyMessage(2);
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
                        m18618d();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    m18620b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    C5526o.m18744d("DummySurface", "Failed to initialize dummy surface", e);
                    this.f17977f = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    C5526o.m18744d("DummySurface", "Failed to initialize dummy surface", e2);
                    this.f17978g = e2;
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

    private DummySurface(HandlerThreadC5547b handlerThreadC5547b, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f17973g = handlerThreadC5547b;
        this.f17972f = z;
    }

    /* renamed from: a */
    private static void m18625a() {
        if (C5515h0.f17876a >= 17) {
            return;
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    /* renamed from: b */
    private static int m18624b(Context context) {
        if (C5524m.m18757h(context)) {
            return C5524m.m18756i() ? 1 : 2;
        }
        return 0;
    }

    /* renamed from: c */
    public static boolean m18623c(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            try {
                z = true;
                if (!f17971e) {
                    f17970d = m18624b(context);
                    f17971e = true;
                }
                if (f17970d == 0) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: d */
    public static DummySurface m18622d(Context context, boolean z) {
        m18625a();
        int i = 0;
        C5508e.m18910f(!z || m18623c(context));
        HandlerThreadC5547b handlerThreadC5547b = new HandlerThreadC5547b();
        if (z) {
            i = f17970d;
        }
        return handlerThreadC5547b.m18621a(i);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f17973g) {
            if (!this.f17974h) {
                this.f17973g.m18619c();
                this.f17974h = true;
            }
        }
    }
}
