package p193e.p1512i.p1516b;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.AdUnit;
import java.util.List;
import p193e.p1512i.p1516b.p1522i2.C22961c;
import p193e.p1512i.p1516b.p1531s2.C23088k;
import p193e.p1512i.p1516b.p1533u2.C23126p;
/* renamed from: e.i.b.n2 */
/* loaded from: classes-dex2jar.jar:e/i/b/n2.class */
public class C22993n2 extends AbstractRunnableC22929c3 {

    /* renamed from: c */
    public final /* synthetic */ List f63730c;

    /* renamed from: d */
    public final /* synthetic */ C23007p2 f63731d;

    public C22993n2(C23007p2 c23007p2, List list) {
        this.f63731d = c23007p2;
        this.f63730c = list;
    }

    @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
    /* renamed from: a */
    public void mo7379a() {
        C23161y1 c23161y1 = this.f63731d.f63767c;
        List<AdUnit> list = this.f63730c;
        C22961c c22961c = c23161y1.f64136h;
        c22961c.f63670e.execute(new C22961c.C22962a(c23161y1.f64133e, null));
        if (((Boolean) C23088k.m7561a(c23161y1.f64133e.f64080b.mo7508k(), Boolean.TRUE)).booleanValue()) {
            for (List<C23126p> list2 : c23161y1.f64135g.m7499a(list)) {
                c23161y1.m7434d(list2, new ContextData());
            }
        }
    }
}
