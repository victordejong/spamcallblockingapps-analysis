package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.os.SystemClock;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p1727n3.p1758e.p1759a.p1761e.b1$f;
import p1727n3.p1758e.p1767b.C26103y0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.b1$f */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/b1$f.class */
public final class b1$f extends CameraDevice.StateCallback {

    /* renamed from: a */
    public final Executor f72053a;

    /* renamed from: b */
    public final ScheduledExecutorService f72054b;

    /* renamed from: c */
    public RunnableC25720b f72055c;

    /* renamed from: d */
    public ScheduledFuture<?> f72056d;

    /* renamed from: e */
    public final C25719a f72057e = new C25719a(this);

    /* renamed from: f */
    public final /* synthetic */ b1 f72058f;

    /* renamed from: n3.e.a.e.b1$f$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/b1$f$a.class */
    public class C25719a {

        /* renamed from: a */
        public long f72059a = -1;

        public C25719a(b1$f b1_f) {
        }
    }

    /* renamed from: n3.e.a.e.b1$f$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/b1$f$b.class */
    public class RunnableC25720b implements Runnable {

        /* renamed from: a */
        public Executor f72060a;

        /* renamed from: b */
        public boolean f72061b = false;

        public RunnableC25720b(Executor executor) {
            b1$f.this = r4;
            this.f72060a = executor;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f72060a.execute(new Runnable() { // from class: n3.e.a.e.o
                @Override // java.lang.Runnable
                public final void run() {
                    b1$f.RunnableC25720b runnableC25720b = b1$f.RunnableC25720b.this;
                    if (!runnableC25720b.f72061b) {
                        MediaSessionCompat.m43187x(b1$f.this.f72058f.d == b1$e.REOPENING, null);
                        b1$f.this.f72058f.s(true);
                    }
                }
            });
        }
    }

    public b1$f(b1 b1Var, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.f72058f = b1Var;
        this.f72053a = executor;
        this.f72054b = scheduledExecutorService;
    }

    /* renamed from: a */
    public boolean m3025a() {
        boolean z = true;
        if (this.f72056d != null) {
            b1 b1Var = this.f72058f;
            StringBuilder m8728C = C22128a.m8728C("Cancelling scheduled re-open: ");
            m8728C.append(this.f72055c);
            b1Var.o(m8728C.toString(), (Throwable) null);
            this.f72055c.f72061b = true;
            this.f72055c = null;
            this.f72056d.cancel(false);
            this.f72056d = null;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public void m3024b() {
        boolean z = true;
        MediaSessionCompat.m43187x(this.f72055c == null, null);
        MediaSessionCompat.m43187x(this.f72056d == null, null);
        C25719a c25719a = this.f72057e;
        Objects.requireNonNull(c25719a);
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = c25719a.f72059a;
        if (j == -1) {
            c25719a.f72059a = uptimeMillis;
        } else {
            if (uptimeMillis - j >= 10000) {
                c25719a.f72059a = -1L;
                z = false;
            }
        }
        if (!z) {
            C26103y0.m2723b("Camera2CameraImpl", "Camera reopening attempted for 10000ms without success.", null);
            this.f72058f.x(b1$e.INITIALIZED);
            return;
        }
        this.f72055c = new RunnableC25720b(this.f72053a);
        b1 b1Var = this.f72058f;
        StringBuilder m8728C = C22128a.m8728C("Attempting camera re-open in 700ms: ");
        m8728C.append(this.f72055c);
        b1Var.o(m8728C.toString(), (Throwable) null);
        this.f72056d = this.f72054b.schedule(this.f72055c, 700L, TimeUnit.MILLISECONDS);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onClosed(CameraDevice cameraDevice) {
        this.f72058f.o("CameraDevice.onClosed()", (Throwable) null);
        boolean z = this.f72058f.i == null;
        MediaSessionCompat.m43187x(z, "Unexpected onClose callback on camera device: " + cameraDevice);
        int ordinal = this.f72058f.d.ordinal();
        if (ordinal != 4) {
            if (ordinal == 5) {
                b1 b1Var = this.f72058f;
                if (b1Var.j == 0) {
                    b1Var.s(false);
                    return;
                }
                StringBuilder m8728C = C22128a.m8728C("Camera closed due to error: ");
                m8728C.append(b1.q(this.f72058f.j));
                b1Var.o(m8728C.toString(), (Throwable) null);
                m3024b();
                return;
            } else if (ordinal != 6) {
                StringBuilder m8728C2 = C22128a.m8728C("Camera closed while in state: ");
                m8728C2.append(this.f72058f.d);
                throw new IllegalStateException(m8728C2.toString());
            }
        }
        MediaSessionCompat.m43187x(this.f72058f.r(), null);
        this.f72058f.p();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onDisconnected(CameraDevice cameraDevice) {
        this.f72058f.o("CameraDevice.onDisconnected()", (Throwable) null);
        onError(cameraDevice, 1);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onError(CameraDevice cameraDevice, int i) {
        b1 b1Var = this.f72058f;
        b1Var.i = cameraDevice;
        b1Var.j = i;
        int ordinal = b1Var.d.ordinal();
        if (ordinal != 2 && ordinal != 3) {
            if (ordinal != 4) {
                if (ordinal != 5) {
                    if (ordinal != 6) {
                        StringBuilder m8728C = C22128a.m8728C("onError() should not be possible from state: ");
                        m8728C.append(this.f72058f.d);
                        throw new IllegalStateException(m8728C.toString());
                    }
                }
            }
            C26103y0.m2723b("Camera2CameraImpl", String.format("CameraDevice.onError(): %s failed with %s while in %s state. Will finish closing camera.", cameraDevice.getId(), b1.q(i), this.f72058f.d.name()), null);
            this.f72058f.m(false);
            return;
        }
        C26103y0.m2724a("Camera2CameraImpl", String.format("CameraDevice.onError(): %s failed with %s while in %s state. Will attempt recovering from error.", cameraDevice.getId(), b1.q(i), this.f72058f.d.name()), null);
        b1$e b1_e = b1$e.REOPENING;
        boolean z = this.f72058f.d == b1$e.OPENING || this.f72058f.d == b1$e.OPENED || this.f72058f.d == b1_e;
        StringBuilder m8728C2 = C22128a.m8728C("Attempt to handle open error from non open state: ");
        m8728C2.append(this.f72058f.d);
        MediaSessionCompat.m43187x(z, m8728C2.toString());
        if (i == 1 || i == 2 || i == 4) {
            C26103y0.m2724a("Camera2CameraImpl", String.format("Attempt to reopen camera[%s] after error[%s]", cameraDevice.getId(), b1.q(i)), null);
            MediaSessionCompat.m43187x(this.f72058f.j != 0, "Can only reopen camera device after error if the camera device is actually in an error state.");
            this.f72058f.x(b1_e);
            this.f72058f.m(false);
            return;
        }
        StringBuilder m8728C3 = C22128a.m8728C("Error observed on open (or opening) camera device ");
        m8728C3.append(cameraDevice.getId());
        m8728C3.append(": ");
        m8728C3.append(b1.q(i));
        m8728C3.append(" closing camera.");
        C26103y0.m2723b("Camera2CameraImpl", m8728C3.toString(), null);
        this.f72058f.x(b1$e.CLOSING);
        this.f72058f.m(false);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onOpened(CameraDevice cameraDevice) {
        this.f72058f.o("CameraDevice.onOpened()", (Throwable) null);
        b1 b1Var = this.f72058f;
        b1Var.i = cameraDevice;
        Objects.requireNonNull(b1Var);
        try {
            Objects.requireNonNull(b1Var.f);
            CaptureRequest.Builder createCaptureRequest = cameraDevice.createCaptureRequest(1);
            C25875x1 c25875x1 = b1Var.f.h;
            Objects.requireNonNull(c25875x1);
            c25875x1.f72386p = (MeteringRectangle[]) createCaptureRequest.get(CaptureRequest.CONTROL_AF_REGIONS);
            c25875x1.f72387q = (MeteringRectangle[]) createCaptureRequest.get(CaptureRequest.CONTROL_AE_REGIONS);
            c25875x1.f72388r = (MeteringRectangle[]) createCaptureRequest.get(CaptureRequest.CONTROL_AWB_REGIONS);
        } catch (CameraAccessException e) {
            C26103y0.m2723b("Camera2CameraImpl", "fail to create capture request.", e);
        }
        b1 b1Var2 = this.f72058f;
        b1Var2.j = 0;
        int ordinal = b1Var2.d.ordinal();
        if (ordinal != 2) {
            if (ordinal != 4) {
                if (ordinal != 5) {
                    if (ordinal != 6) {
                        StringBuilder m8728C = C22128a.m8728C("onOpened() should not be possible from state: ");
                        m8728C.append(this.f72058f.d);
                        throw new IllegalStateException(m8728C.toString());
                    }
                }
            }
            MediaSessionCompat.m43187x(this.f72058f.r(), null);
            this.f72058f.i.close();
            this.f72058f.i = null;
            return;
        }
        this.f72058f.x(b1$e.OPENED);
        this.f72058f.t();
    }
}
