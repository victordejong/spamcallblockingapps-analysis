package p193e.p194a.p195a.p258m.p264g3;

import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6963v0;
import p193e.p194a.p195a.p258m.AbstractC6984z1;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.m.g3.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/g3/g.class */
public final class C6881g extends AbstractC6894i2<AbstractC6984z1> implements AbstractC6963v0 {

    /* renamed from: c */
    public final g f22468c = C25225a.m3978P1(new C6882a());

    /* renamed from: d */
    public final AbstractC19223c0 f22469d;

    /* renamed from: e */
    public final AbstractC6984z1.AbstractC6985a f22470e;

    /* renamed from: f */
    public final C6879f f22471f;

    /* renamed from: e.a.a.m.g3.g$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/g3/g$a.class */
    public static final class C6882a extends m implements a<AbstractC12603e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6882a() {
            super(0);
            C6881g.this = r4;
        }

        public Object invoke() {
            return (AbstractC12603e) C6881g.this.f22471f.f22464a.getValue();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6881g(AbstractC6900j2 abstractC6900j2, AbstractC19223c0 abstractC19223c0, AbstractC6984z1.AbstractC6985a abstractC6985a, C6879f c6879f) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6985a, "actionListener");
        l.e(c6879f, "updateMobileServicesPromoManager");
        this.f22469d = abstractC19223c0;
        this.f22470e = abstractC6985a;
        this.f22471f = c6879f;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(AbstractC6798d1.C6829y.f22376b, abstractC6798d1);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6984z1 abstractC6984z1 = (AbstractC6984z1) obj;
        l.e(abstractC6984z1, "itemView");
        AbstractC12603e abstractC12603e = (AbstractC12603e) this.f22468c.getValue();
        if (l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
            String mo13768b = this.f22469d.mo13768b(C2752R.string.update_mobile_services_play_title, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…bile_services_play_title)");
            abstractC6984z1.setTitle(mo13768b);
            String mo13768b2 = this.f22469d.mo13768b(C2752R.string.update_mobile_services_play_text, new Object[0]);
            l.d(mo13768b2, "resourceProvider.getStri…obile_services_play_text)");
            abstractC6984z1.mo30331c(mo13768b2);
        } else if (l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c)) {
            String mo13768b3 = this.f22469d.mo13768b(C2752R.string.update_mobile_services_huawei_title, new Object[0]);
            l.d(mo13768b3, "resourceProvider.getStri…le_services_huawei_title)");
            abstractC6984z1.setTitle(mo13768b3);
            String mo13768b4 = this.f22469d.mo13768b(C2752R.string.update_mobile_services_huawei_text, new Object[0]);
            l.d(mo13768b4, "resourceProvider.getStri…ile_services_huawei_text)");
            abstractC6984z1.mo30331c(mo13768b4);
        } else {
            StringBuilder m8728C = C22128a.m8728C("Unknown mobile service engine ");
            AbstractC12603e abstractC12603e2 = (AbstractC12603e) this.f22468c.getValue();
            m8728C.append(abstractC12603e2 != null ? abstractC12603e2.f36735a : null);
            AssertionUtil.shouldNeverHappen(new IllegalStateException(m8728C.toString()), new String[0]);
        }
        this.f22471f.f22465b.m30369a("update_mobile_services_promo_last_timestamp");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -1666685460) {
            if (hashCode == 979133263 && str.equals("ItemEvent.ACTION_UPDATE_MOBILE_SERVICES_CLICKED")) {
                this.f22470e.mo30330L4();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_DISMISS_UPDATE_MOBILE_SERVICES_PROMO")) {
                this.f22470e.mo30329oc();
                this.f22471f.f22465b.m30368b("update_mobile_services_promo_last_timestamp");
            }
            z = false;
        }
        return z;
    }
}
