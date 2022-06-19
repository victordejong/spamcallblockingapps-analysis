package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.TimeZone;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
/* renamed from: e.k.a.c.l0.t.s0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/s0.class */
public class C23856s0 extends AbstractC23849p0<TimeZone> {
    public C23856s0() {
        super(TimeZone.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        abstractC23372g.mo5868T1(((TimeZone) obj).getID());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23849p0, p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        TimeZone timeZone = (TimeZone) obj;
        C23422b m6216d = abstractC23712h.m6216d(timeZone, EnumC23381m.VALUE_STRING);
        m6216d.f64977b = TimeZone.class;
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, m6216d);
        abstractC23372g.mo5868T1(timeZone.getID());
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }
}
