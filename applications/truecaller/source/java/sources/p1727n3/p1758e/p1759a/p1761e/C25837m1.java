package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraDevice;
import java.util.ArrayList;
import java.util.List;
/* renamed from: n3.e.a.e.m1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/m1.class */
public final class C25837m1 extends CameraDevice.StateCallback {

    /* renamed from: a */
    public final List<CameraDevice.StateCallback> f72280a = new ArrayList();

    public C25837m1(List<CameraDevice.StateCallback> list) {
        for (CameraDevice.StateCallback stateCallback : list) {
            if (!(stateCallback instanceof C25840n1)) {
                this.f72280a.add(stateCallback);
            }
        }
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onClosed(CameraDevice cameraDevice) {
        for (CameraDevice.StateCallback stateCallback : this.f72280a) {
            stateCallback.onClosed(cameraDevice);
        }
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onDisconnected(CameraDevice cameraDevice) {
        for (CameraDevice.StateCallback stateCallback : this.f72280a) {
            stateCallback.onDisconnected(cameraDevice);
        }
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onError(CameraDevice cameraDevice, int i) {
        for (CameraDevice.StateCallback stateCallback : this.f72280a) {
            stateCallback.onError(cameraDevice, i);
        }
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public void onOpened(CameraDevice cameraDevice) {
        for (CameraDevice.StateCallback stateCallback : this.f72280a) {
            stateCallback.onOpened(cameraDevice);
        }
    }
}
