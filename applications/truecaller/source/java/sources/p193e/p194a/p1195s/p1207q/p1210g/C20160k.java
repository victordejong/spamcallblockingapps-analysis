package p193e.p194a.p1195s.p1207q.p1210g;

import com.truecaller.callhero_assistant.data.Voice;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import s1.z.c.l;
/* renamed from: e.a.s.q.g.k */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/g/k.class */
public final class C20160k extends AbstractC18894c<AbstractC20153e> implements AbstractC20152d {

    /* renamed from: b */
    public final AbstractC20154f f56817b;

    /* renamed from: c */
    public final AbstractC20151c f56818c;

    @Inject
    public C20160k(AbstractC20154f abstractC20154f, AbstractC20151c abstractC20151c) {
        l.e(abstractC20154f, "model");
        l.e(abstractC20151c, "itemActionListener");
        this.f56817b = abstractC20154f;
        this.f56818c = abstractC20151c;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC20153e abstractC20153e, int i) {
        AbstractC20153e abstractC20153e2 = abstractC20153e;
        l.e(abstractC20153e2, "itemView");
        Voice voice = this.f56817b.mo11468x1().get(i);
        boolean a = l.a(this.f56817b.mo11475E0(), voice.getId());
        abstractC20153e2.mo11460r(voice.getImage());
        abstractC20153e2.setName(voice.getName());
        abstractC20153e2.mo11463d(voice.getDescription());
        abstractC20153e2.mo11461l(a);
        if (!a || !this.f56817b.mo11470s0()) {
            abstractC20153e2.mo11462h(false);
            abstractC20153e2.mo11459w((!a || !this.f56817b.mo11469t0()) ? 2131232835 : 2131232834);
            return;
        }
        abstractC20153e2.mo11462h(true);
        abstractC20153e2.mo11459w(0);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f56817b.mo11468x1().size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return this.f56817b.mo11468x1().get(i).getId().hashCode();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        if (l.a(c18900h.f53001a, "ItemEvent.CLICKED")) {
            this.f56818c.mo11474E1(this.f56817b.mo11468x1().get(c18900h.f53002b));
            return true;
        }
        return false;
    }
}
