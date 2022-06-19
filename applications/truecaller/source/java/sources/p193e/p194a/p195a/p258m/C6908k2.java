package p193e.p194a.p195a.p258m;

import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import s1.z.c.l;
/* renamed from: e.a.a.m.k2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/k2.class */
public final class C6908k2 extends AbstractC6894i2<Object> implements AbstractC6943r0 {

    /* renamed from: c */
    public final AbstractC6964v1 f22507c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6908k2(AbstractC6900j2 abstractC6900j2, AbstractC6964v1 abstractC6964v1) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6964v1, "actionListener");
        this.f22507c = abstractC6964v1;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6825u;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        return l.a(c18900h.f53001a, "ItemEvent.ACTION_ENABLE") ? this.f22507c.mo30350ec() : l.a(c18900h.f53001a, "ItemEvent.ACTION_MAYBE_LATER") ? this.f22507c.mo30349sf() : false;
    }
}
