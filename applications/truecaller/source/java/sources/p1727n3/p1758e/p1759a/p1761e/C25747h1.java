package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import java.util.Objects;
import n3.e.a.d.a;
import n3.e.a.f.i;
import n3.e.b.j1.a1;
import n3.e.b.j1.r1;
import p1727n3.p1758e.p1759a.p1760d.C25709c;
import p1727n3.p1758e.p1759a.p1766f.i$a;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.p1768j1.C25956g0;
import p1727n3.p1758e.p1767b.p1768j1.C25972j1;
/* renamed from: n3.e.a.e.h1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/h1.class */
public final class C25747h1 implements C25972j1.AbstractC25976d {

    /* renamed from: a */
    public static final C25747h1 f72121a = new C25747h1();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v66, types: [n3.e.b.j1.j0] */
    @Override // p1727n3.p1758e.p1767b.p1768j1.C25972j1.AbstractC25976d
    /* renamed from: a */
    public void mo2836a(r1<?> r1Var, C25972j1.C25974b c25974b) {
        C25972j1 i = r1Var.i((C25972j1) null);
        C25949d1 c25949d1 = C25949d1.f72559r;
        int i2 = C25972j1.m2843a().f72600f.f72574c;
        if (i != null) {
            i2 = i.f72600f.f72574c;
            for (CameraDevice.StateCallback stateCallback : i.f72596b) {
                c25974b.m2840b(stateCallback);
            }
            for (CameraCaptureSession.StateCallback stateCallback2 : i.f72597c) {
                c25974b.m2839c(stateCallback2);
            }
            c25974b.f72602b.m2867a(i.f72600f.f72575d);
            c25949d1 = i.f72600f.f72573b;
        }
        C25956g0.C25957a c25957a = c25974b.f72602b;
        Objects.requireNonNull(c25957a);
        c25957a.f72579b = a1.y(c25949d1);
        a aVar = new a(r1Var);
        c25974b.f72602b.f72580c = ((Integer) r1Var.mo2850b(a.r, Integer.valueOf(i2))).intValue();
        c25974b.m2840b((CameraDevice.StateCallback) ((i) aVar).q.mo2850b(a.s, new C25840n1()));
        c25974b.m2839c((CameraCaptureSession.StateCallback) ((i) aVar).q.mo2850b(a.t, new C25834l1()));
        C25846p1 c25846p1 = new C25846p1((CameraCaptureSession.CaptureCallback) ((i) aVar).q.mo2850b(a.u, new C25733e1()));
        c25974b.f72602b.m2866b(c25846p1);
        c25974b.f72606f.add(c25846p1);
        AbstractC25968j0 x = a1.x();
        AbstractC25968j0.AbstractC25969a abstractC25969a = a.v;
        C25709c m3038d = C25709c.m3038d();
        x.z(abstractC25969a, AbstractC25968j0.EnumC25971c.OPTIONAL, (C25709c) ((i) aVar).q.mo2850b(abstractC25969a, m3038d));
        c25974b.f72602b.m2865c(x);
        c25974b.f72602b.m2865c(i$a.m2921b(((i) aVar).q).m2922a());
    }
}
