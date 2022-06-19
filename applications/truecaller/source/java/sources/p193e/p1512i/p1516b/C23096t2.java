package p193e.p1512i.p1516b;

import com.criteo.publisher.Criteo;
import java.util.Objects;
import p193e.p1512i.p1516b.p1521g2.C22951a;
import p193e.p1512i.p1516b.p1525o2.C23001d;
import p193e.p1512i.p1516b.p1525o2.C23003e;
import p193e.p1512i.p1516b.p1533u2.C23100a;
import p193e.p1512i.p1516b.p1533u2.C23134y;
/* renamed from: e.i.b.t2 */
/* loaded from: classes-dex2jar.jar:e/i/b/t2.class */
public class C23096t2 {

    /* renamed from: a */
    public final C23100a f63925a;

    /* renamed from: b */
    public final C23134y f63926b;

    /* renamed from: c */
    public final Criteo f63927c;

    /* renamed from: d */
    public final C22951a f63928d;

    /* renamed from: e */
    public final C23001d f63929e;

    public C23096t2(C23100a c23100a, C22951a c22951a, Criteo criteo, C23001d c23001d) {
        this.f63925a = c23100a;
        this.f63928d = c22951a;
        this.f63927c = criteo;
        this.f63926b = criteo.getDeviceInfo();
        this.f63929e = c23001d;
    }

    /* renamed from: a */
    public void m7555a(String str) {
        C23100a c23100a = this.f63925a;
        C23134y c23134y = this.f63926b;
        C23001d c23001d = this.f63929e;
        Objects.requireNonNull(c23100a);
        C23157x2.m7454h().m7447o().execute(new C23003e(str, c23100a, c23134y, c23001d, c23100a.f63937d));
    }

    /* renamed from: b */
    public void m7554b() {
        this.f63929e.m7594a(EnumC23143v2.INVALID);
    }
}
