package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraDevice;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
/* renamed from: n3.e.a.e.b1$a */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/b1$a.class */
public class b1$a implements AbstractC26030d<Void> {

    /* renamed from: a */
    public final /* synthetic */ C25852r1 f72037a;

    /* renamed from: b */
    public final /* synthetic */ b1 f72038b;

    public b1$a(b1 b1Var, C25852r1 c25852r1) {
        this.f72038b = b1Var;
        this.f72037a = c25852r1;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    /* renamed from: a */
    public void mo2689a(Throwable th) {
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    public void onSuccess(Void r4) {
        CameraDevice cameraDevice;
        this.f72038b.p.remove(this.f72037a);
        int ordinal = this.f72038b.d.ordinal();
        if (ordinal != 4) {
            if (ordinal != 5) {
                if (ordinal != 6) {
                    return;
                }
            } else if (this.f72038b.j == 0) {
                return;
            }
        }
        if (!this.f72038b.r() || (cameraDevice = this.f72038b.i) == null) {
            return;
        }
        cameraDevice.close();
        this.f72038b.i = null;
    }
}
