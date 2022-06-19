package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraManager;
import p1727n3.p1758e.p1767b.p1768j1.C25946d0;
/* renamed from: n3.e.a.e.b1$c */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/b1$c.class */
public final class b1$c extends CameraManager.AvailabilityCallback implements C25946d0.AbstractC25948b {

    /* renamed from: a */
    public final String f72040a;

    /* renamed from: b */
    public boolean f72041b = true;

    /* renamed from: c */
    public final /* synthetic */ b1 f72042c;

    public b1$c(b1 b1Var, String str) {
        this.f72042c = b1Var;
        this.f72040a = str;
    }

    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
    public void onCameraAvailable(String str) {
        if (!this.f72040a.equals(str)) {
            return;
        }
        this.f72041b = true;
        if (this.f72042c.d != b1$e.PENDING_OPEN) {
            return;
        }
        this.f72042c.s(false);
    }

    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
    public void onCameraUnavailable(String str) {
        if (!this.f72040a.equals(str)) {
            return;
        }
        this.f72041b = false;
    }
}
