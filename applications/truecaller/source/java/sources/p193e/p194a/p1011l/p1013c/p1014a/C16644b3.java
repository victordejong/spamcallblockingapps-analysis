package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.C2752R;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import com.truecaller.whatsappcallerid.analytics.event.WhatsAppCallerIdSourceParam;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1161q5.AbstractC19684c;
import p193e.p194a.p1161q5.AbstractC19688d;
import p193e.p194a.p1161q5.p1162k.AbstractC19695a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.b3 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b3.class */
public final class C16644b3 extends AbstractC16663f<AbstractC16649c2> implements AbstractC16643b2 {

    /* renamed from: d */
    public final AbstractC16631a2 f46754d;

    /* renamed from: e */
    public final AbstractC19688d f46755e;

    /* renamed from: f */
    public final AbstractC19695a f46756f;

    /* renamed from: g */
    public final AbstractC16826d f46757g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16644b3(AbstractC16631a2 abstractC16631a2, AbstractC19688d abstractC19688d, AbstractC19695a abstractC19695a, AbstractC16826d abstractC16826d) {
        super(abstractC16631a2);
        l.e(abstractC16631a2, "model");
        l.e(abstractC19688d, "whatsAppCallerIdManager");
        l.e(abstractC19695a, "whatsAppCallerIdEventLogger");
        l.e(abstractC16826d, "premiumNewFeatureLabelHelper");
        this.f46754d = abstractC16631a2;
        this.f46755e = abstractC19688d;
        this.f46756f = abstractC19695a;
        this.f46757g = abstractC16826d;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16663f, p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC16649c2 abstractC16649c2 = (AbstractC16649c2) obj;
        l.e(abstractC16649c2, "itemView");
        super.mo11464G(abstractC16649c2, i);
        AbstractC16736t abstractC16736t = m17148A().get(i).f46880b;
        AbstractC16736t abstractC16736t2 = abstractC16736t;
        if (!(abstractC16736t instanceof AbstractC16736t.C16750n)) {
            abstractC16736t2 = null;
        }
        AbstractC16736t.C16750n c16750n = (AbstractC16736t.C16750n) abstractC16736t2;
        if (c16750n != null) {
            abstractC16649c2.mo17157M0(c16750n.f46967a);
        }
        this.f46756f.mo12970l(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return (long) C2752R.C2754id.view_premium_user_tab_list_whatsapp_caller_id;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16750n;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode == 379436399) {
            if (!str.equals("ItemEvent.NEW_FEATURE_LABEL_DISMISSED")) {
                return true;
            }
            AbstractC16826d abstractC16826d = this.f46757g;
            NewFeatureLabelType newFeatureLabelType = NewFeatureLabelType.WHATS_APP_CALLER_ID;
            abstractC16826d.mo16950g(newFeatureLabelType);
            this.f46754d.mo17001V7(newFeatureLabelType);
            return true;
        } else if (hashCode != 1899967979 || !str.equals("ItemEvent.WHATSAPP_CALLER_ID_SWITCH_ACTION")) {
            return true;
        } else {
            if (this.f46755e.mo12989v()) {
                this.f46754d.mo16995ee();
                return true;
            }
            AbstractC19684c mo12990u = this.f46755e.mo12990u();
            boolean z = !mo12990u.m12997a();
            this.f46755e.mo12992s(z);
            if (mo12990u instanceof AbstractC19684c.C19687c) {
                this.f46754d.mo16999Xc(c18900h.f53002b);
                return true;
            }
            this.f46756f.mo12975b(z, WhatsAppCallerIdSourceParam.PREMIUM_USER_TAB, c18900h.f53002b);
            this.f46754d.mo17002T2();
            return true;
        }
    }
}
