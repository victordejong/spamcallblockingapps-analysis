package p193e.p194a.p1011l.p1017d.p1018a;

import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p837h0.p838a.AbstractC14811v;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.d.a.f */
/* loaded from: classes12-dex2jar.jar:e/a/l/d/a/f.class */
public final class C16840f extends AbstractC20576b {

    /* renamed from: b */
    public final C20592g f47220b;

    @Inject
    public C16840f(C20592g c20592g) {
        l.e(c20592g, "featuresRegistry");
        this.f47220b = c20592g;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.l.d.a.e] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC16839e) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        List<? extends AbstractC14811v> d0 = i.d0(new AbstractC14811v[]{AbstractC14811v.C14812a.f42378i});
        if (this.f47220b.m10956l().isEnabled()) {
            d0.add(AbstractC14811v.C14821j.f42387i);
        }
        if (this.f47220b.m10958k().isEnabled()) {
            d0.add(AbstractC14811v.C14820i.f42386i);
        }
        if (this.f47220b.m10966g().isEnabled()) {
            d0.add(AbstractC14811v.C14817f.f42383i);
        }
        if (this.f47220b.m10960j().isEnabled()) {
            d0.add(AbstractC14811v.C14819h.f42385i);
        }
        if (this.f47220b.m10964h().isEnabled()) {
            d0.add(AbstractC14811v.C14822k.f42388i);
        }
        if (this.f47220b.m10962i().isEnabled()) {
            d0.add(AbstractC14811v.C14818g.f42384i);
        }
        d0.add(AbstractC14811v.C14816e.f42382i);
        AbstractC16839e abstractC16839e = (AbstractC16839e) this.f57683a;
        if (abstractC16839e != null) {
            abstractC16839e.mo16931xl(d0);
        }
    }
}
