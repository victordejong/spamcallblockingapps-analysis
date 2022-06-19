package p193e.p194a.p1011l.p1013c.p1014a;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1111o2.C18900h;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.e0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/e0.class */
public final class C16659e0 extends AbstractC16663f<AbstractC16655d1> implements AbstractC16648c1 {

    /* renamed from: d */
    public final AbstractC16694j2 f46785d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16659e0(AbstractC16701l1 abstractC16701l1, AbstractC16694j2 abstractC16694j2) {
        super(abstractC16701l1);
        l.e(abstractC16701l1, "model");
        l.e(abstractC16694j2, "router");
        this.f46785d = abstractC16694j2;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16663f, p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC16655d1 abstractC16655d1 = (AbstractC16655d1) obj;
        l.e(abstractC16655d1, "itemView");
        AbstractC16736t abstractC16736t = m17148A().get(i).f46880b;
        AbstractC16736t abstractC16736t2 = abstractC16736t;
        if (!(abstractC16736t instanceof AbstractC16736t.C16739c)) {
            abstractC16736t2 = null;
        }
        AbstractC16736t.C16739c c16739c = (AbstractC16736t.C16739c) abstractC16736t2;
        if (c16739c != null) {
            if (c16739c.f46937b) {
                abstractC16655d1.mo17146L();
            } else {
                abstractC16655d1.mo17142l0(c16739c.f46938c);
            }
            abstractC16655d1.mo17145Q3(c16739c.f46939d);
            abstractC16655d1.mo17143U(c16739c.f46940e);
            abstractC16655d1.mo17147I(c16739c.f46941f);
            abstractC16655d1.mo17141w2(c16739c.f46942g);
            abstractC16655d1.mo17144S2(c16739c.f46943h);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16739c;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        Object obj = c18900h.f53005e;
        Object obj2 = obj;
        if (!(obj instanceof AbstractC16775z)) {
            obj2 = null;
        }
        AbstractC16775z abstractC16775z = (AbstractC16775z) obj2;
        if (abstractC16775z != null) {
            this.f46785d.mo17008Hd(abstractC16775z);
            return true;
        }
        return true;
    }
}
