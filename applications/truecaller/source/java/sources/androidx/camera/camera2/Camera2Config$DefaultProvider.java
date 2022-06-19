package androidx.camera.camera2;

import n3.e.b.j1.a1;
import n3.e.b.q0;
import p1727n3.p1758e.p1759a.C25705a;
import p1727n3.p1758e.p1759a.C25706b;
import p1727n3.p1758e.p1759a.C25707c;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.q0$a;
import p1727n3.p1758e.p1767b.q0$b;
/* loaded from: classes-dex2jar.jar:androidx/camera/camera2/Camera2Config$DefaultProvider.class */
public final class Camera2Config$DefaultProvider implements q0$b {
    @Override // p1727n3.p1758e.p1767b.q0$b
    public q0 getCameraXConfig() {
        C25707c c25707c = C25707c.f71997a;
        C25706b c25706b = C25706b.f71996a;
        C25705a c25705a = C25705a.f71995a;
        q0$a q0_a = new q0$a();
        a1 a1Var = q0_a.f72788a;
        AbstractC25968j0.AbstractC25969a abstractC25969a = q0.r;
        AbstractC25968j0.EnumC25971c enumC25971c = AbstractC25968j0.EnumC25971c.OPTIONAL;
        a1Var.z(abstractC25969a, enumC25971c, c25707c);
        q0_a.f72788a.z(q0.s, enumC25971c, c25706b);
        q0_a.f72788a.z(q0.t, enumC25971c, c25705a);
        return new q0(C25949d1.m2869w(q0_a.f72788a));
    }
}
