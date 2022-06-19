package p193e.p194a.p1011l.p1013c.p1014a;

import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdToggleSource;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1213s2.AbstractC20197c;
import p193e.p194a.p1213s2.p1214g.AbstractC20201a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/d.class */
public final class C16652d extends AbstractC16663f<AbstractC16642b1> implements AbstractC16630a1 {

    /* renamed from: d */
    public final AbstractC16781z0 f46768d;

    /* renamed from: e */
    public final a<AbstractC20197c> f46769e;

    /* renamed from: f */
    public final a<AbstractC20201a> f46770f;

    /* renamed from: g */
    public final AbstractC16826d f46771g;

    /* renamed from: h */
    public final AbstractC16694j2 f46772h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16652d(AbstractC16781z0 abstractC16781z0, a<AbstractC20197c> aVar, a<AbstractC20201a> aVar2, AbstractC16826d abstractC16826d, AbstractC16694j2 abstractC16694j2) {
        super(abstractC16781z0);
        l.e(abstractC16781z0, "model");
        l.e(aVar, "announceCallerIdManager");
        l.e(aVar2, "announceCallerIdEventLogger");
        l.e(abstractC16826d, "premiumNewFeatureLabelHelper");
        l.e(abstractC16694j2, "router");
        this.f46768d = abstractC16781z0;
        this.f46769e = aVar;
        this.f46770f = aVar2;
        this.f46771g = abstractC16826d;
        this.f46772h = abstractC16694j2;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16663f, p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC16642b1 abstractC16642b1 = (AbstractC16642b1) obj;
        l.e(abstractC16642b1, "itemView");
        super.mo11464G(abstractC16642b1, i);
        AbstractC16736t abstractC16736t = m17148A().get(i).f46880b;
        AbstractC16736t abstractC16736t2 = abstractC16736t;
        if (!(abstractC16736t instanceof AbstractC16736t.C16737a)) {
            abstractC16736t2 = null;
        }
        AbstractC16736t.C16737a c16737a = (AbstractC16736t.C16737a) abstractC16736t2;
        if (c16737a != null) {
            abstractC16642b1.mo17158e2(c16737a.f46934a);
        }
        ((AbstractC20201a) this.f46770f.get()).mo11352d(((RecyclerView.AbstractC0313c0) abstractC16642b1).getAdapterPosition(), this.f46771g.mo16949h(NewFeatureLabelType.ANNOUNCE_CALL));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return (long) C2752R.C2754id.view_premium_user_tab_list_announce_caller_id;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16737a;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != 379436399) {
            if (hashCode == 2036796354 && str.equals("ItemEvent.ANNOUNCE_CALLER_ID_SWITCH_ACTION")) {
                if (!((AbstractC20197c) this.f46769e.get()).mo11360c()) {
                    this.f46768d.mo16995ee();
                    return true;
                }
                boolean z = !((AbstractC20197c) this.f46769e.get()).mo11356m();
                AbstractC20201a abstractC20201a = (AbstractC20201a) this.f46770f.get();
                Object obj = c18900h.f53005e;
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Int");
                abstractC20201a.mo11353c((Integer) obj, AnnounceCallerIdToggleSource.PREMIUM_USER_TAB, z, this.f46771g.mo16949h(NewFeatureLabelType.ANNOUNCE_CALL));
                ((AbstractC20197c) this.f46769e.get()).mo11358k(z);
                this.f46768d.mo16987j3(z);
                return true;
            }
        } else if (str.equals("ItemEvent.NEW_FEATURE_LABEL_DISMISSED")) {
            AbstractC16826d abstractC16826d = this.f46771g;
            NewFeatureLabelType newFeatureLabelType = NewFeatureLabelType.ANNOUNCE_CALL;
            abstractC16826d.mo16950g(newFeatureLabelType);
            this.f46768d.mo17001V7(newFeatureLabelType);
            return true;
        }
        AbstractC20201a abstractC20201a2 = (AbstractC20201a) this.f46770f.get();
        Object obj2 = c18900h.f53005e;
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Int");
        abstractC20201a2.mo11351e(((Integer) obj2).intValue());
        this.f46772h.mo16998Zc();
        return true;
    }
}
