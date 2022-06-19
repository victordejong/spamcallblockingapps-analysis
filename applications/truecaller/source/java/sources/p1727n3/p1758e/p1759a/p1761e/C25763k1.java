package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import android.view.Surface;
import java.util.ArrayList;
import java.util.List;
/* renamed from: n3.e.a.e.k1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k1.class */
public final class C25763k1 extends CameraCaptureSession.StateCallback {

    /* renamed from: a */
    public final List<CameraCaptureSession.StateCallback> f72155a = new ArrayList();

    public C25763k1(List<CameraCaptureSession.StateCallback> list) {
        for (CameraCaptureSession.StateCallback stateCallback : list) {
            if (!(stateCallback instanceof C25834l1)) {
                this.f72155a.add(stateCallback);
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onActive(CameraCaptureSession cameraCaptureSession) {
        for (CameraCaptureSession.StateCallback stateCallback : this.f72155a) {
            stateCallback.onActive(cameraCaptureSession);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
        for (CameraCaptureSession.StateCallback stateCallback : this.f72155a) {
            stateCallback.onCaptureQueueEmpty(cameraCaptureSession);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onClosed(CameraCaptureSession cameraCaptureSession) {
        for (CameraCaptureSession.StateCallback stateCallback : this.f72155a) {
            stateCallback.onClosed(cameraCaptureSession);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        for (CameraCaptureSession.StateCallback stateCallback : this.f72155a) {
            stateCallback.onConfigureFailed(cameraCaptureSession);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigured(CameraCaptureSession cameraCaptureSession) {
        for (CameraCaptureSession.StateCallback stateCallback : this.f72155a) {
            stateCallback.onConfigured(cameraCaptureSession);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onReady(CameraCaptureSession cameraCaptureSession) {
        for (CameraCaptureSession.StateCallback stateCallback : this.f72155a) {
            stateCallback.onReady(cameraCaptureSession);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onSurfacePrepared(CameraCaptureSession cameraCaptureSession, Surface surface) {
        for (CameraCaptureSession.StateCallback stateCallback : this.f72155a) {
            stateCallback.onSurfacePrepared(cameraCaptureSession, surface);
        }
    }
}
