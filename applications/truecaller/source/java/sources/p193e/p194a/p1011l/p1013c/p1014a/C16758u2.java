package p193e.p194a.p1011l.p1013c.p1014a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.filters.sync.FilterSettingsUploadWorker;
import java.util.HashMap;
import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.C14845p;
import p193e.p194a.p837h0.p838a.AbstractC14811v;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.u2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/u2.class */
public final class C16758u2 extends AbstractC16663f<AbstractC16757u1> implements AbstractC16753t1 {

    /* renamed from: d */
    public final AbstractC16734s1 f46980d;

    /* renamed from: e */
    public final AbstractC17197v0 f46981e;

    /* renamed from: f */
    public final AbstractC14840m f46982f;

    /* renamed from: g */
    public final a<AbstractC26857y> f46983g;

    /* renamed from: h */
    public final a<AbstractC19462a> f46984h;

    /* renamed from: i */
    public final a<C14845p> f46985i;

    /* renamed from: j */
    public final AbstractC16694j2 f46986j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16758u2(AbstractC16734s1 abstractC16734s1, AbstractC17197v0 abstractC17197v0, AbstractC14840m abstractC14840m, a<AbstractC26857y> aVar, a<AbstractC19462a> aVar2, a<C14845p> aVar3, AbstractC16694j2 abstractC16694j2) {
        super(abstractC16734s1);
        l.e(abstractC16734s1, "model");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC14840m, "filterSettings");
        l.e(aVar, "workManager");
        l.e(aVar2, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar3, "neighbourhoodDigitsAdjuster");
        l.e(abstractC16694j2, "router");
        this.f46980d = abstractC16734s1;
        this.f46981e = abstractC17197v0;
        this.f46982f = abstractC14840m;
        this.f46983g = aVar;
        this.f46984h = aVar2;
        this.f46985i = aVar3;
        this.f46986j = abstractC16694j2;
    }

    /* renamed from: B */
    public final void m17061B(boolean z, String str) {
        String str2 = z ? "Enabled" : "Disabled";
        HashMap hashMap = new HashMap();
        hashMap.put("BlocktabSettings_Action", str2);
        AbstractC19462a abstractC19462a = (AbstractC19462a) this.f46984h.get();
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(str, null, hashMap, null);
        l.d(c19505a, "event.build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16663f, p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC16757u1 abstractC16757u1 = (AbstractC16757u1) obj;
        l.e(abstractC16757u1, "itemView");
        super.mo11464G(abstractC16757u1, i);
        AbstractC16736t abstractC16736t = m17148A().get(i).f46880b;
        AbstractC16736t abstractC16736t2 = abstractC16736t;
        if (!(abstractC16736t instanceof AbstractC16736t.C16747k)) {
            abstractC16736t2 = null;
        }
        AbstractC16736t.C16747k c16747k = (AbstractC16736t.C16747k) abstractC16736t2;
        if (c16747k != null) {
            abstractC16757u1.mo17056P3(c16747k.f46962a);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return (long) C2752R.C2754id.view_premium_user_tab_list_spam_protection;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16747k;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        Integer num;
        AbstractC14840m abstractC14840m;
        AbstractC14840m abstractC14840m2;
        AbstractC14840m abstractC14840m3;
        AbstractC14840m abstractC14840m4;
        AbstractC14840m abstractC14840m5;
        AbstractC14840m abstractC14840m6;
        AbstractC14840m abstractC14840m7;
        EnumC26841q enumC26841q = EnumC26841q.CONNECTED;
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -2026546748) {
            if (hashCode != -751156802) {
                if (hashCode == 1958463258 && str.equals("ItemEvent.SWITCH_ACTION")) {
                    Object obj = c18900h.f53005e;
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.filters.blockedevents.BlockingSwitch");
                    AbstractC14811v abstractC14811v = (AbstractC14811v) obj;
                    if (l.a(abstractC14811v, AbstractC14811v.C14812a.f42378i)) {
                        if (!this.f46981e.mo16408H()) {
                            this.f46980d.mo16995ee();
                            return true;
                        }
                        this.f46982f.mo19548t(Boolean.valueOf(!C12864a2.m22540r(abstractC14840m7.mo19560h())));
                        this.f46980d.mo16981u2();
                        return true;
                    } else if (l.a(abstractC14811v, AbstractC14811v.C14821j.f42387i)) {
                        if (!this.f46981e.mo16408H()) {
                            this.f46980d.mo16995ee();
                            return true;
                        }
                        this.f46982f.mo19557k(!abstractC14840m6.mo19547u());
                        this.f46982f.mo19565c(true);
                        Object obj2 = this.f46983g.get();
                        l.d(obj2, "workManager.get()");
                        AbstractC26857y abstractC26857y = (AbstractC26857y) obj2;
                        l.e(abstractC26857y, "workManager");
                        C26842r.C26843a c26843a = new C26842r.C26843a(FilterSettingsUploadWorker.class);
                        C26825d.C26826a c26826a = new C26825d.C26826a();
                        c26826a.f75068c = enumC26841q;
                        c26843a.f75127c.f74911j = new C26825d(c26826a);
                        abstractC26857y.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a.m1272b());
                        this.f46980d.mo16981u2();
                        m17061B(this.f46982f.mo19547u(), "BLOCKSETTINGS_BlockSpammers");
                        return true;
                    } else if (l.a(abstractC14811v, AbstractC14811v.C14820i.f42386i)) {
                        if (!this.f46981e.mo16408H()) {
                            this.f46980d.mo16995ee();
                            return true;
                        }
                        this.f46982f.mo19555m(!abstractC14840m5.mo19566b());
                        this.f46982f.mo19565c(true);
                        Object obj3 = this.f46983g.get();
                        l.d(obj3, "workManager.get()");
                        AbstractC26857y abstractC26857y2 = (AbstractC26857y) obj3;
                        l.e(abstractC26857y2, "workManager");
                        C26842r.C26843a c26843a2 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
                        C26825d.C26826a c26826a2 = new C26825d.C26826a();
                        c26826a2.f75068c = enumC26841q;
                        c26843a2.f75127c.f74911j = new C26825d(c26826a2);
                        abstractC26857y2.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a2.m1272b());
                        this.f46980d.mo16981u2();
                        m17061B(this.f46982f.mo19566b(), "BLOCKSETTINGS_BlockNonPhonebook");
                        return true;
                    } else if (l.a(abstractC14811v, AbstractC14811v.C14817f.f42383i)) {
                        if (!this.f46981e.mo16408H()) {
                            this.f46980d.mo16995ee();
                            return true;
                        }
                        this.f46982f.mo19561g(!abstractC14840m4.mo19544x());
                        this.f46982f.mo19565c(true);
                        Object obj4 = this.f46983g.get();
                        l.d(obj4, "workManager.get()");
                        AbstractC26857y abstractC26857y3 = (AbstractC26857y) obj4;
                        l.e(abstractC26857y3, "workManager");
                        C26842r.C26843a c26843a3 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
                        C26825d.C26826a c26826a3 = new C26825d.C26826a();
                        c26826a3.f75068c = enumC26841q;
                        c26843a3.f75127c.f74911j = new C26825d(c26826a3);
                        abstractC26857y3.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a3.m1272b());
                        this.f46980d.mo16981u2();
                        m17061B(this.f46982f.mo19544x(), "BLOCKSETTINGS_BlockForeignNumbers");
                        return true;
                    } else if (l.a(abstractC14811v, AbstractC14811v.C14819h.f42385i)) {
                        if (!this.f46981e.mo16408H()) {
                            this.f46980d.mo16995ee();
                            return true;
                        }
                        this.f46982f.mo19553o(!abstractC14840m3.mo19562f());
                        this.f46982f.mo19565c(true);
                        Object obj5 = this.f46983g.get();
                        l.d(obj5, "workManager.get()");
                        AbstractC26857y abstractC26857y4 = (AbstractC26857y) obj5;
                        l.e(abstractC26857y4, "workManager");
                        C26842r.C26843a c26843a4 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
                        C26825d.C26826a c26826a4 = new C26825d.C26826a();
                        c26826a4.f75068c = enumC26841q;
                        c26843a4.f75127c.f74911j = new C26825d(c26826a4);
                        abstractC26857y4.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a4.m1272b());
                        this.f46980d.mo16981u2();
                        m17061B(this.f46982f.mo19562f(), "BLOCKSETTINGS_BlockNeighbourSpoofing");
                        return true;
                    } else if (l.a(abstractC14811v, AbstractC14811v.C14822k.f42388i)) {
                        if (!this.f46981e.mo16408H()) {
                            this.f46980d.mo16995ee();
                            return true;
                        }
                        this.f46982f.mo19558j(!abstractC14840m2.mo19550r());
                        this.f46982f.mo19565c(true);
                        Object obj6 = this.f46983g.get();
                        l.d(obj6, "workManager.get()");
                        AbstractC26857y abstractC26857y5 = (AbstractC26857y) obj6;
                        l.e(abstractC26857y5, "workManager");
                        C26842r.C26843a c26843a5 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
                        C26825d.C26826a c26826a5 = new C26825d.C26826a();
                        c26826a5.f75068c = enumC26841q;
                        c26843a5.f75127c.f74911j = new C26825d(c26826a5);
                        abstractC26857y5.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a5.m1272b());
                        this.f46980d.mo16981u2();
                        m17061B(this.f46982f.mo19550r(), "BLOCKSETTINGS_BlockHiddenNumbers");
                        return true;
                    } else if (!l.a(abstractC14811v, AbstractC14811v.C14818g.f42384i)) {
                        if (!l.a(abstractC14811v, AbstractC14811v.C14816e.f42382i) || this.f46981e.mo16408H()) {
                            return true;
                        }
                        this.f46980d.mo16995ee();
                        return true;
                    } else if (!this.f46981e.mo16408H()) {
                        this.f46980d.mo16995ee();
                        return true;
                    } else {
                        this.f46982f.mo19567a(!abstractC14840m.mo19549s());
                        this.f46982f.mo19565c(true);
                        Object obj7 = this.f46983g.get();
                        l.d(obj7, "workManager.get()");
                        AbstractC26857y abstractC26857y6 = (AbstractC26857y) obj7;
                        l.e(abstractC26857y6, "workManager");
                        C26842r.C26843a c26843a6 = new C26842r.C26843a(FilterSettingsUploadWorker.class);
                        C26825d.C26826a c26826a6 = new C26825d.C26826a();
                        c26826a6.f75068c = enumC26841q;
                        c26843a6.f75127c.f74911j = new C26825d(c26826a6);
                        abstractC26857y6.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a6.m1272b());
                        this.f46980d.mo16981u2();
                        m17061B(this.f46982f.mo19549s(), "BLOCKSETTINGS_BlockIndianTelemarketers");
                        return true;
                    }
                }
            } else if (str.equals("ItemEvent.LEARN_MORE_ACTION")) {
                Object obj8 = c18900h.f53005e;
                Objects.requireNonNull(obj8, "null cannot be cast to non-null type com.truecaller.filters.blockedevents.BlockingSwitch");
                if (!(((AbstractC14811v) obj8) instanceof AbstractC14811v.C14819h)) {
                    return true;
                }
                this.f46980d.mo16982pg();
                return true;
            }
        } else if (str.equals("ItemEvent.EDIT_ACTION")) {
            Object obj9 = c18900h.f53005e;
            Objects.requireNonNull(obj9, "null cannot be cast to non-null type com.truecaller.filters.blockedevents.BlockingSwitch");
            if (!(((AbstractC14811v) obj9) instanceof AbstractC14811v.C14819h)) {
                return true;
            }
            Integer mo19559i = this.f46982f.mo19559i();
            if (mo19559i != null) {
                l.d(mo19559i, "it");
                num = Integer.valueOf(((C14845p) this.f46985i.get()).m19536a(mo19559i.intValue()));
            } else {
                num = null;
            }
            this.f46980d.mo17005Na(num, ((C14845p) this.f46985i.get()).m19534c());
            return true;
        }
        this.f46986j.mo17000X4();
        return true;
    }
}
