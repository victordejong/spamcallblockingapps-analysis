package p193e.p194a.p1011l.p1013c.p1014a;

import java.util.ArrayList;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.p838a.AbstractC14811v;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.t2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t2.class */
public final class C16754t2 {

    /* renamed from: a */
    public final C20592g f46971a;

    /* renamed from: b */
    public final AbstractC14840m f46972b;

    /* renamed from: c */
    public final AbstractC17197v0 f46973c;

    @Inject
    public C16754t2(C20592g c20592g, AbstractC14840m abstractC14840m, AbstractC17197v0 abstractC17197v0) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f46971a = c20592g;
        this.f46972b = abstractC14840m;
        this.f46973c = abstractC17197v0;
    }

    /* renamed from: a */
    public final AbstractC16736t.C16747k m17066a() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        AbstractC14811v.C14812a c14812a = AbstractC14811v.C14812a.f42378i;
        if (!this.f46973c.mo16408H()) {
            this.f46972b.mo19548t(null);
            z = false;
        } else {
            z = C12864a2.m22540r(this.f46972b.mo19560h());
        }
        arrayList.add(new C16691j(c14812a, z));
        arrayList.add(new C16691j(AbstractC14811v.C14816e.f42382i, this.f46973c.mo16408H()));
        if (this.f46971a.m10956l().isEnabled()) {
            arrayList.add(new C16691j(AbstractC14811v.C14821j.f42387i, this.f46972b.mo19547u()));
        }
        if (this.f46971a.m10958k().isEnabled()) {
            arrayList.add(new C16691j(AbstractC14811v.C14820i.f42386i, this.f46972b.mo19566b()));
        }
        if (this.f46971a.m10966g().isEnabled()) {
            arrayList.add(new C16691j(AbstractC14811v.C14817f.f42383i, this.f46972b.mo19544x()));
        }
        if (this.f46971a.m10960j().isEnabled()) {
            arrayList.add(new C16691j(AbstractC14811v.C14819h.f42385i, this.f46972b.mo19562f()));
        }
        if (this.f46971a.m10964h().isEnabled()) {
            arrayList.add(new C16691j(AbstractC14811v.C14822k.f42388i, this.f46972b.mo19550r()));
        }
        if (this.f46971a.m10962i().isEnabled()) {
            arrayList.add(new C16691j(AbstractC14811v.C14818g.f42384i, this.f46972b.mo19549s()));
        }
        return new AbstractC16736t.C16747k(arrayList);
    }
}
