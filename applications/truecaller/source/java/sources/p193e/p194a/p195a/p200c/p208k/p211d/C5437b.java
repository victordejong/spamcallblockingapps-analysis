package p193e.p194a.p195a.p200c.p208k.p211d;

import java.util.Objects;
import p193e.p194a.p195a.p200c.AbstractC5525m6;
import p193e.p194a.p195a.p200c.AbstractC5586n6;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p200c.p208k.AbstractC5431b;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import s1.z.c.l;
/* renamed from: e.a.a.c.k.d.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/d/b.class */
public final class C5437b extends AbstractC5431b<AbstractC5586n6> {

    /* renamed from: c */
    public final AbstractC5525m6 f18542c;

    /* renamed from: d */
    public final AbstractC5794w3 f18543d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5437b(AbstractC5525m6 abstractC5525m6, AbstractC5794w3 abstractC5794w3) {
        super(abstractC5794w3);
        l.e(abstractC5525m6, "loadHistoryClickListener");
        l.e(abstractC5794w3, "items");
        this.f18542c = abstractC5525m6;
        this.f18543d = abstractC5794w3;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC5586n6 abstractC5586n6 = (AbstractC5586n6) obj;
        l.e(abstractC5586n6, "itemView");
        AbstractC6225a item = this.f18543d.getItem(i);
        Objects.requireNonNull(item, "null cannot be cast to non-null type com.truecaller.messaging.conversation.adapter.loader.LoadHistoryItem");
        C5436a c5436a = (C5436a) item;
        abstractC5586n6.mo32839X2(c5436a.f18541b);
        abstractC5586n6.mo32840U3(c5436a.f18541b, this.f18542c);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return this.f18543d.getItem(i) instanceof C5436a;
    }
}
