package p1727n3.p1758e.p1759a.p1761e.p1762k2;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25765b;
/* renamed from: n3.e.a.e.k2.d */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/d.class */
public class C25783d implements C25765b.AbstractC25766a {

    /* renamed from: a */
    public final CameraCaptureSession f72207a;

    /* renamed from: b */
    public final Object f72208b;

    /* renamed from: n3.e.a.e.k2.d$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/d$a.class */
    public static class C25784a {

        /* renamed from: a */
        public final Handler f72209a;

        public C25784a(Handler handler) {
            this.f72209a = handler;
        }
    }

    public C25783d(CameraCaptureSession cameraCaptureSession, Object obj) {
        Objects.requireNonNull(cameraCaptureSession);
        this.f72207a = cameraCaptureSession;
        this.f72208b = obj;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.C25765b.AbstractC25766a
    /* renamed from: a */
    public int mo2997a(List<CaptureRequest> list, Executor executor, CameraCaptureSession.CaptureCallback captureCallback) throws CameraAccessException {
        return this.f72207a.captureBurst(list, new C25765b.C25767b(executor, captureCallback), ((C25784a) this.f72208b).f72209a);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.C25765b.AbstractC25766a
    /* renamed from: b */
    public int mo2996b(CaptureRequest captureRequest, Executor executor, CameraCaptureSession.CaptureCallback captureCallback) throws CameraAccessException {
        return this.f72207a.setRepeatingRequest(captureRequest, new C25765b.C25767b(executor, captureCallback), ((C25784a) this.f72208b).f72209a);
    }
}
