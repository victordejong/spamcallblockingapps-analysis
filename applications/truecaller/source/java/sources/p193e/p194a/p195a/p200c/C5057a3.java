package p193e.p194a.p195a.p200c;

import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p195a.p200c.p207j8.AbstractC5408c;
import p193e.p194a.p195a.p200c.p207j8.C5405a;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.a3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a3.class */
public final class C5057a3 extends AbstractC18894c<AbstractC5408c> implements Object {

    /* renamed from: b */
    public final g f17319b;

    /* renamed from: c */
    public final AbstractC5276f4 f17320c;

    /* renamed from: e.a.a.c.a3$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/a3$a.class */
    public static final class C5058a extends m implements a<List<? extends C5405a>> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6394b f17321b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5058a(AbstractC6394b abstractC6394b) {
            super(0);
            this.f17321b = abstractC6394b;
        }

        public Object invoke() {
            return this.f17321b.mo31321s();
        }
    }

    @Inject
    public C5057a3(AbstractC5276f4 abstractC5276f4, AbstractC6394b abstractC6394b) {
        l.e(abstractC5276f4, "inputPresenter");
        l.e(abstractC6394b, "messageUtil");
        this.f17320c = abstractC5276f4;
        this.f17319b = C25225a.m3978P1(new C5058a(abstractC6394b));
    }

    /* renamed from: A */
    public final List<C5405a> m33908A() {
        return (List) this.f17319b.getValue();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC5408c abstractC5408c = (AbstractC5408c) obj;
        l.e(abstractC5408c, "itemView");
        C5405a c5405a = m33908A().get(i);
        abstractC5408c.mo33173P1(c5405a.f18492b);
        abstractC5408c.setOnClickListener(new C5107b3(this, c5405a));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return m33908A().size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return m33908A().get(i).f18491a.hashCode();
    }
}
