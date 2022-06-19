package p193e.p1512i.p1516b.p1532u1;

import com.criteo.publisher.model.AdSize;
import java.util.HashMap;
import java.util.Map;
import p193e.p1512i.p1516b.p1531s2.C23086i;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import p193e.p1512i.p1516b.p1533u2.C23126p;
import p193e.p1512i.p1516b.p1533u2.C23131w;
/* renamed from: e.i.b.u1.a */
/* loaded from: classes-dex2jar.jar:e/i/b/u1/a.class */
public class C23099a {

    /* renamed from: a */
    public final Map<C23126p, C23131w> f63932a = new HashMap();

    /* renamed from: b */
    public final C23086i f63933b;

    public C23099a(C23086i c23086i) {
        this.f63933b = c23086i;
    }

    /* renamed from: a */
    public C23131w m7553a(C23126p c23126p) {
        return this.f63932a.get(c23126p);
    }

    /* renamed from: b */
    public C23126p m7552b(C23131w c23131w) {
        EnumC23072a enumC23072a;
        String m7475j = c23131w.m7475j();
        if (m7475j == null) {
            return null;
        }
        if (((Boolean) c23131w.f64067b.getValue()).booleanValue()) {
            enumC23072a = EnumC23072a.CRITEO_CUSTOM_NATIVE;
        } else {
            AdSize m7564a = this.f63933b.m7564a();
            AdSize adSize = new AdSize(m7564a.getHeight(), m7564a.getWidth());
            AdSize adSize2 = new AdSize(c23131w.m7473l(), c23131w.m7478g());
            enumC23072a = (adSize2.equals(m7564a) || adSize2.equals(adSize)) ? EnumC23072a.CRITEO_INTERSTITIAL : EnumC23072a.CRITEO_BANNER;
        }
        return new C23126p(new AdSize(c23131w.m7473l(), c23131w.m7478g()), m7475j, enumC23072a);
    }
}
