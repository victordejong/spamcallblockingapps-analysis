package p193e.p194a.p195a.p258m;

import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p244k.p245a.AbstractC6573i1;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6979y1;
import s1.z.c.l;
/* renamed from: e.a.a.m.r2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/r2.class */
public final class C6946r2 extends AbstractC6894i2<AbstractC6979y1> implements AbstractC6958u0 {

    /* renamed from: c */
    public final AbstractC6979y1.AbstractC6980a f22549c;

    /* renamed from: d */
    public final AbstractC6573i1 f22550d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6946r2(AbstractC6900j2 abstractC6900j2, AbstractC6979y1.AbstractC6980a abstractC6980a, AbstractC6573i1 abstractC6573i1) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6980a, "actionListener");
        l.e(abstractC6573i1, "imVersionManager");
        this.f22549c = abstractC6980a;
        this.f22550d = abstractC6573i1;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6828x;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6979y1 abstractC6979y1 = (AbstractC6979y1) obj;
        l.e(abstractC6979y1, "itemView");
        this.f22550d.mo30759a(new C6936p2(abstractC6979y1, new C6941q2(abstractC6979y1)));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        return l.a(c18900h.f53001a, "ItemEvent.ACTION_UPDATE_APP") ? this.f22549c.mo30334i3() : l.a(c18900h.f53001a, "ItemEvent.ACTION_DISMISS_UPDATE_APP") ? this.f22549c.mo30335Da() : false;
    }
}
