package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraDevice;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b;
/* renamed from: n3.e.a.e.p0 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/p0.class */
public final /* synthetic */ class C25845p0 implements AbstractC26029b {

    /* renamed from: a */
    public final /* synthetic */ e2 f72289a;

    /* renamed from: b */
    public final /* synthetic */ CameraDevice f72290b;

    /* renamed from: c */
    public final /* synthetic */ C25810g f72291c;

    /* renamed from: d */
    public final /* synthetic */ List f72292d;

    public /* synthetic */ C25845p0(e2 e2Var, CameraDevice cameraDevice, C25810g c25810g, List list) {
        this.f72289a = e2Var;
        this.f72290b = cameraDevice;
        this.f72291c = c25810g;
        this.f72292d = list;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b
    public final ListenableFuture apply(Object obj) {
        return this.f72289a.z(this.f72290b, this.f72291c, this.f72292d, (List) obj);
    }
}
