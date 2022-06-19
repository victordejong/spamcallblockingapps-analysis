package p1727n3.p1758e.p1759a.p1760d;

import android.hardware.camera2.CaptureRequest;
import n3.e.b.j1.a1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.p1768j1.C25992n;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.d.a$a */
/* loaded from: classes-dex2jar.jar:n3/e/a/d/a$a.class */
public final class a$a {

    /* renamed from: a */
    public final a1 f71998a = a1.x();

    /* renamed from: a */
    public a m3041a() {
        return new a(C25949d1.m2869w(this.f71998a));
    }

    /* renamed from: b */
    public <ValueT> a$a m3040b(CaptureRequest.Key<ValueT> key, ValueT valuet) {
        AbstractC25968j0.AbstractC25969a abstractC25969a = a.r;
        StringBuilder m8728C = C22128a.m8728C("camera2.captureRequest.option.");
        m8728C.append(key.getName());
        this.f71998a.z(new C25992n(m8728C.toString(), Object.class, key), AbstractC25968j0.EnumC25971c.OPTIONAL, valuet);
        return this;
    }
}
