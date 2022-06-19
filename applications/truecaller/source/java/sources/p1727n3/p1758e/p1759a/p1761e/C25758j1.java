package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.view.Surface;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: n3.e.a.e.j1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/j1.class */
public class C25758j1 extends CameraCaptureSession.CaptureCallback {

    /* renamed from: b */
    public AbstractC25759a f72146b = null;

    /* renamed from: a */
    public final Map<CaptureRequest, List<CameraCaptureSession.CaptureCallback>> f72145a = new HashMap();

    /* renamed from: n3.e.a.e.j1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/j1$a.class */
    public interface AbstractC25759a {
    }

    /* renamed from: a */
    public final List<CameraCaptureSession.CaptureCallback> m3000a(CaptureRequest captureRequest) {
        List<CameraCaptureSession.CaptureCallback> list = this.f72145a.get(captureRequest);
        if (list == null) {
            list = Collections.emptyList();
        }
        return list;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureBufferLost(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
        for (CameraCaptureSession.CaptureCallback captureCallback : m3000a(captureRequest)) {
            captureCallback.onCaptureBufferLost(cameraCaptureSession, captureRequest, surface, j);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        for (CameraCaptureSession.CaptureCallback captureCallback : m3000a(captureRequest)) {
            captureCallback.onCaptureCompleted(cameraCaptureSession, captureRequest, totalCaptureResult);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        for (CameraCaptureSession.CaptureCallback captureCallback : m3000a(captureRequest)) {
            captureCallback.onCaptureFailed(cameraCaptureSession, captureRequest, captureFailure);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
        for (CameraCaptureSession.CaptureCallback captureCallback : m3000a(captureRequest)) {
            captureCallback.onCaptureProgressed(cameraCaptureSession, captureRequest, captureResult);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i) {
        AbstractC25759a abstractC25759a = this.f72146b;
        if (abstractC25759a != null) {
            ((C25878z) abstractC25759a).m2926a(cameraCaptureSession, i, true);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceCompleted(CameraCaptureSession cameraCaptureSession, int i, long j) {
        AbstractC25759a abstractC25759a = this.f72146b;
        if (abstractC25759a != null) {
            ((C25878z) abstractC25759a).m2926a(cameraCaptureSession, i, false);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        for (CameraCaptureSession.CaptureCallback captureCallback : m3000a(captureRequest)) {
            captureCallback.onCaptureStarted(cameraCaptureSession, captureRequest, j, j2);
        }
    }
}
