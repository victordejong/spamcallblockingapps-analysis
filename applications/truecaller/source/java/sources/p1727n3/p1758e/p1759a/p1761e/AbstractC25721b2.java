package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25765b;
/* renamed from: n3.e.a.e.b2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/b2.class */
public interface AbstractC25721b2 {

    /* renamed from: n3.e.a.e.b2$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/b2$a.class */
    public static abstract class AbstractC25722a {
        /* renamed from: l */
        public void mo3007l(AbstractC25721b2 abstractC25721b2) {
        }

        /* renamed from: m */
        public void mo3006m(AbstractC25721b2 abstractC25721b2) {
        }

        /* renamed from: n */
        public void mo3005n(AbstractC25721b2 abstractC25721b2) {
        }

        /* renamed from: o */
        public void mo2954o(AbstractC25721b2 abstractC25721b2) {
        }

        /* renamed from: p */
        public void mo2953p(AbstractC25721b2 abstractC25721b2) {
        }

        /* renamed from: q */
        public void mo2952q(AbstractC25721b2 abstractC25721b2) {
        }

        /* renamed from: r */
        public void mo2951r(AbstractC25721b2 abstractC25721b2) {
        }

        /* renamed from: s */
        public void mo3004s(AbstractC25721b2 abstractC25721b2, Surface surface) {
        }
    }

    /* renamed from: b */
    AbstractC25722a mo3023b();

    /* renamed from: c */
    void mo3022c() throws CameraAccessException;

    void close();

    /* renamed from: d */
    CameraDevice mo3021d();

    /* renamed from: e */
    int mo3020e(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback) throws CameraAccessException;

    /* renamed from: f */
    C25765b mo3019f();

    /* renamed from: g */
    void mo3018g() throws CameraAccessException;

    /* renamed from: h */
    void mo3017h();

    /* renamed from: i */
    int mo3016i(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback) throws CameraAccessException;

    /* renamed from: k */
    ListenableFuture<Void> mo3015k(String str);
}
