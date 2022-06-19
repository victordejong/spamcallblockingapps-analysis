package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1790h.p1791a.C26250e;
/* renamed from: n3.e.a.e.e2$a */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/e2$a.class */
public class e2$a extends CameraCaptureSession.CaptureCallback {

    /* renamed from: a */
    public final /* synthetic */ e2 f72094a;

    public e2$a(e2 e2Var) {
        this.f72094a = e2Var;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i) {
        C26247b c26247b = this.f72094a.r;
        if (c26247b != null) {
            boolean z = true;
            c26247b.f73172d = true;
            C26250e<T> c26250e = c26247b.f73170b;
            if (c26250e == 0 || !c26250e.f73174b.cancel(true)) {
                z = false;
            }
            if (z) {
                c26247b.m2257b();
            }
            this.f72094a.r = null;
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        C26247b c26247b = this.f72094a.r;
        if (c26247b != null) {
            c26247b.m2258a(null);
            this.f72094a.r = null;
        }
    }
}
