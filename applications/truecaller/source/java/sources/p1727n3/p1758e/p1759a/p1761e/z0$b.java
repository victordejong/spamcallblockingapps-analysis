package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: n3.e.a.e.z0$b */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/z0$b.class */
public final class z0$b extends CameraCaptureSession.CaptureCallback {

    /* renamed from: a */
    public final Set<z0$c> f72399a = new HashSet();

    /* renamed from: b */
    public final Executor f72400b;

    public z0$b(Executor executor) {
        this.f72400b = executor;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, final TotalCaptureResult totalCaptureResult) {
        this.f72400b.execute(new Runnable() { // from class: n3.e.a.e.f
            @Override // java.lang.Runnable
            public final void run() {
                z0$b z0_b = z0$b.this;
                TotalCaptureResult totalCaptureResult2 = totalCaptureResult;
                Objects.requireNonNull(z0_b);
                HashSet hashSet = new HashSet();
                for (z0$c z0_c : z0_b.f72399a) {
                    if (z0_c.mo2925a(totalCaptureResult2)) {
                        hashSet.add(z0_c);
                    }
                }
                if (!hashSet.isEmpty()) {
                    z0_b.f72399a.removeAll(hashSet);
                }
            }
        });
    }
}
