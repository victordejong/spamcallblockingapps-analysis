package p193e.p1512i.p1516b.p1537z1;

import java.util.concurrent.Executor;
import p193e.p1512i.p1516b.p1522i2.C22967g;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import p193e.p1512i.p1516b.p1531s2.C23088k;
import p193e.p1512i.p1516b.p1533u2.C23132x;
/* renamed from: e.i.b.z1.g0 */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/g0.class */
public class C23187g0 {

    /* renamed from: a */
    public final AbstractC23181e0 f64182a;

    /* renamed from: b */
    public final C22967g f64183b;

    /* renamed from: c */
    public final C23080f f64184c;

    /* renamed from: d */
    public final C23132x f64185d;

    /* renamed from: e */
    public final Executor f64186e;

    public C23187g0(AbstractC23181e0 abstractC23181e0, C22967g c22967g, C23080f c23080f, C23132x c23132x, Executor executor) {
        this.f64182a = abstractC23181e0;
        this.f64183b = c22967g;
        this.f64184c = c23080f;
        this.f64185d = c23132x;
        this.f64186e = executor;
    }

    /* renamed from: a */
    public void m7420a() {
        if (((Boolean) C23088k.m7561a(this.f64185d.f64080b.mo7512g(), Boolean.TRUE)).booleanValue()) {
            this.f64186e.execute(new C23192i0(this.f64182a, this.f64183b, this.f64184c));
        }
    }
}
