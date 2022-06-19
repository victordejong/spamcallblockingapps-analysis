package p193e.p1485h.p1486a.p1493c;

import android.text.TextUtils;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1499o0.C22770b;
import p193e.p1485h.p1486a.p1493c.p1506v0.C22847b;
import p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g;
/* renamed from: e.h.a.c.z */
/* loaded from: classes-dex2jar.jar:e/h/a/c/z.class */
public class C22896z implements AbstractC22888g<Void> {

    /* renamed from: a */
    public final /* synthetic */ C22718b0 f63559a;

    public C22896z(C22718b0 c22718b0) {
        this.f63559a = c22718b0;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g
    public void onSuccess(Void r8) {
        C22735g0 m7913g = this.f63559a.m7913g();
        String m8618h = C22128a.m8618h(new StringBuilder(), this.f63559a.f62873d.f2240a, ":async_deviceID");
        StringBuilder m8728C = C22128a.m8728C("DeviceID initialized successfully!");
        m8728C.append(Thread.currentThread());
        m7913g.m7855b(m8618h, m8728C.toString());
        C22718b0 c22718b0 = this.f63559a;
        C22773p m7790k = C22773p.m7790k(c22718b0.f62874e, c22718b0.f62873d);
        String m7910j = this.f63559a.m7910j();
        C22877x c22877x = m7790k.f63088b;
        String str = c22877x.f63515a.f2240a;
        C22844v c22844v = c22877x.f63521g;
        if (c22844v == null) {
            C22735g0 m7794g = m7790k.m7794g();
            m7794g.m7855b(str + ":async_deviceID", "ControllerManager not set yet! Returning from deviceIDCreated()");
            return;
        }
        if (c22844v.f63406a == null) {
            C22735g0 m7794g2 = m7790k.m7794g();
            String m8543z2 = C22128a.m8543z2(str, ":async_deviceID");
            m7794g2.m7855b(m8543z2, "Initializing InAppFC after Device ID Created = " + m7910j);
            C22877x c22877x2 = m7790k.f63088b;
            c22877x2.f63521g.f63406a = new C22723d0(m7790k.f63087a, c22877x2.f63515a, m7910j);
        }
        C22770b c22770b = m7790k.f63088b.f63521g.f63409d;
        if (c22770b != null && TextUtils.isEmpty(c22770b.f63075b)) {
            C22735g0 m7794g3 = m7790k.m7794g();
            String m8543z22 = C22128a.m8543z2(str, ":async_deviceID");
            m7794g3.m7855b(m8543z22, "Initializing Feature Flags after Device ID Created = " + m7910j);
            if (!c22770b.f63076c) {
                c22770b.f63075b = m7910j;
                c22770b.m7801f();
            }
        }
        C22847b c22847b = m7790k.f63088b.f63521g.f63412g;
        if (c22847b != null && TextUtils.isEmpty(c22847b.f63428h.f63442b)) {
            C22735g0 m7794g4 = m7790k.m7794g();
            String m8543z23 = C22128a.m8543z2(str, ":async_deviceID");
            m7794g4.m7855b(m8543z23, "Initializing Product Config after Device ID Created = " + m7910j);
            if (!c22847b.f63423c.get() && !TextUtils.isEmpty(m7910j)) {
                c22847b.f63428h.f63442b = m7910j;
                c22847b.m7689f();
            }
        }
        C22735g0 m7794g5 = m7790k.m7794g();
        m7794g5.m7855b(str + ":async_deviceID", "Got device id from DeviceInfo, notifying user profile initialized to SyncListener");
        m7790k.f63088b.f63520f.mo7807a(m7910j);
        Objects.requireNonNull(m7790k.f63088b.f63520f);
    }
}
