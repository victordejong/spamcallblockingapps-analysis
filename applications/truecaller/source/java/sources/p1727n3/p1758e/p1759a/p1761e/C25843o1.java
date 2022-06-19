package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Objects;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
import p1727n3.p1758e.p1767b.p1768j1.C25996o1;
import p1727n3.p1758e.p1767b.p1768j1.C26007s;
/* renamed from: n3.e.a.e.o1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/o1.class */
public final class C25843o1 extends CameraCaptureSession.CaptureCallback {

    /* renamed from: a */
    public final AbstractC26002q f72287a;

    public C25843o1(AbstractC26002q abstractC26002q) {
        Objects.requireNonNull(abstractC26002q, "cameraCaptureCallback is null");
        this.f72287a = abstractC26002q;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        C25996o1 c25996o1;
        super.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
        Object tag = captureRequest.getTag();
        if (tag != null) {
            MediaSessionCompat.m43214o(tag instanceof C25996o1, "The tagBundle object from the CaptureResult is not a TagBundle object.");
            c25996o1 = (C25996o1) tag;
        } else {
            c25996o1 = C25996o1.f72647b;
        }
        this.f72287a.mo2701b(new C25877y0(c25996o1, totalCaptureResult));
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        super.onCaptureFailed(cameraCaptureSession, captureRequest, captureFailure);
        this.f72287a.mo2792c(new C26007s(C26007s.EnumC26008a.ERROR));
    }
}
