package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.Surface;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25765b;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.a.e.d2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/d2.class */
public class C25730d2 extends CameraCaptureSession.StateCallback {

    /* renamed from: a */
    public final /* synthetic */ C25725c2 f72089a;

    public C25730d2(C25725c2 c25725c2) {
        this.f72089a = c25725c2;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onActive(CameraCaptureSession cameraCaptureSession) {
        C25725c2 c25725c2 = this.f72089a;
        if (c25725c2.f72073g == null) {
            c25725c2.f72073g = new C25765b(cameraCaptureSession, c25725c2.f72069c);
        }
        C25725c2 c25725c22 = this.f72089a;
        c25725c22.f72072f.mo3007l(c25725c22);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
        C25725c2 c25725c2 = this.f72089a;
        if (c25725c2.f72073g == null) {
            c25725c2.f72073g = new C25765b(cameraCaptureSession, c25725c2.f72069c);
        }
        C25725c2 c25725c22 = this.f72089a;
        c25725c22.f72072f.mo3006m(c25725c22);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onClosed(CameraCaptureSession cameraCaptureSession) {
        C25725c2 c25725c2 = this.f72089a;
        if (c25725c2.f72073g == null) {
            c25725c2.f72073g = new C25765b(cameraCaptureSession, c25725c2.f72069c);
        }
        C25725c2 c25725c22 = this.f72089a;
        c25725c22.mo3005n(c25725c22);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        C26247b<Void> c26247b;
        try {
            C25725c2 c25725c2 = this.f72089a;
            if (c25725c2.f72073g == null) {
                c25725c2.f72073g = new C25765b(cameraCaptureSession, c25725c2.f72069c);
            }
            C25725c2 c25725c22 = this.f72089a;
            c25725c22.mo2954o(c25725c22);
            synchronized (this.f72089a.f72067a) {
                MediaSessionCompat.m43196u(this.f72089a.f72075i, "OpenCaptureSession completer should not null");
                C25725c2 c25725c23 = this.f72089a;
                c26247b = c25725c23.f72075i;
                c25725c23.f72075i = null;
            }
            c26247b.m2256c(new IllegalStateException("onConfigureFailed"));
        } catch (Throwable th) {
            synchronized (this.f72089a.f72067a) {
                MediaSessionCompat.m43196u(this.f72089a.f72075i, "OpenCaptureSession completer should not null");
                C25725c2 c25725c24 = this.f72089a;
                C26247b<Void> c26247b2 = c25725c24.f72075i;
                c25725c24.f72075i = null;
                c26247b2.m2256c(new IllegalStateException("onConfigureFailed"));
                throw th;
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigured(CameraCaptureSession cameraCaptureSession) {
        C26247b<Void> c26247b;
        try {
            C25725c2 c25725c2 = this.f72089a;
            if (c25725c2.f72073g == null) {
                c25725c2.f72073g = new C25765b(cameraCaptureSession, c25725c2.f72069c);
            }
            C25725c2 c25725c22 = this.f72089a;
            c25725c22.mo2953p(c25725c22);
            synchronized (this.f72089a.f72067a) {
                MediaSessionCompat.m43196u(this.f72089a.f72075i, "OpenCaptureSession completer should not null");
                C25725c2 c25725c23 = this.f72089a;
                c26247b = c25725c23.f72075i;
                c25725c23.f72075i = null;
            }
            c26247b.m2258a(null);
        } catch (Throwable th) {
            synchronized (this.f72089a.f72067a) {
                MediaSessionCompat.m43196u(this.f72089a.f72075i, "OpenCaptureSession completer should not null");
                C25725c2 c25725c24 = this.f72089a;
                C26247b<Void> c26247b2 = c25725c24.f72075i;
                c25725c24.f72075i = null;
                c26247b2.m2258a(null);
                throw th;
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onReady(CameraCaptureSession cameraCaptureSession) {
        C25725c2 c25725c2 = this.f72089a;
        if (c25725c2.f72073g == null) {
            c25725c2.f72073g = new C25765b(cameraCaptureSession, c25725c2.f72069c);
        }
        C25725c2 c25725c22 = this.f72089a;
        c25725c22.f72072f.mo2952q(c25725c22);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onSurfacePrepared(CameraCaptureSession cameraCaptureSession, Surface surface) {
        C25725c2 c25725c2 = this.f72089a;
        if (c25725c2.f72073g == null) {
            c25725c2.f72073g = new C25765b(cameraCaptureSession, c25725c2.f72069c);
        }
        C25725c2 c25725c22 = this.f72089a;
        c25725c22.f72072f.mo3004s(c25725c22, surface);
    }
}
