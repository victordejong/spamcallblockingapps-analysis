package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.C2752R;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1193r5.AbstractC19954i0;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.g3 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/g3.class */
public final class C16673g3 extends AbstractC16663f<AbstractC16666f2> implements AbstractC16661e2 {

    /* renamed from: d */
    public final AbstractC16656d2 f46806d;

    /* renamed from: e */
    public final AbstractC17197v0 f46807e;

    /* renamed from: f */
    public final a<AbstractC19954i0> f46808f;

    /* renamed from: g */
    public final AbstractC16694j2 f46809g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16673g3(AbstractC16656d2 abstractC16656d2, AbstractC17197v0 abstractC17197v0, a<AbstractC19954i0> aVar, AbstractC16694j2 abstractC16694j2) {
        super(abstractC16656d2);
        l.e(abstractC16656d2, "model");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(aVar, "whoViewedMeManager");
        l.e(abstractC16694j2, "router");
        this.f46806d = abstractC16656d2;
        this.f46807e = abstractC17197v0;
        this.f46808f = aVar;
        this.f46809g = abstractC16694j2;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16663f, p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC16666f2 abstractC16666f2 = (AbstractC16666f2) obj;
        l.e(abstractC16666f2, "itemView");
        super.mo11464G(abstractC16666f2, i);
        AbstractC16736t abstractC16736t = m17148A().get(i).f46880b;
        AbstractC16736t abstractC16736t2 = abstractC16736t;
        if (!(abstractC16736t instanceof AbstractC16736t.C16751o)) {
            abstractC16736t2 = null;
        }
        AbstractC16736t.C16751o c16751o = (AbstractC16736t.C16751o) abstractC16736t2;
        if (c16751o != null) {
            abstractC16666f2.mo17126n0(c16751o.f46968a);
            abstractC16666f2.setLabel(c16751o.f46969b);
            abstractC16666f2.mo17127c0(c16751o.f46970c);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return (long) C2752R.C2754id.view_premium_user_tab_list_who_viewed_me;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16751o;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        if (str.hashCode() != -291261081 || !str.equals("ItemEvent.INCOGNITO_SWITCH_ACTION")) {
            this.f46809g.mo17012B4();
            return true;
        } else if (!this.f46807e.mo16408H()) {
            this.f46806d.mo16995ee();
            return true;
        } else {
            boolean z = !((AbstractC19954i0) this.f46808f.get()).mo11755h();
            ((AbstractC19954i0) this.f46808f.get()).mo11757f(z);
            this.f46806d.mo17003Oi(z);
            return true;
        }
    }
}
