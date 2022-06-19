package p193e.p194a.p195a.p258m.p259b3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.account.numbers.SecondaryPhoneNumberPromoEvent;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1070n2.p1072b.C18472a;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6953t0;
import p193e.p194a.p195a.p258m.AbstractC6974x1;
import s1.z.c.l;
/* renamed from: e.a.a.m.b3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/b3/a.class */
public final class C6787a extends AbstractC6894i2<AbstractC6974x1> implements AbstractC6953t0 {

    /* renamed from: c */
    public boolean f22329c;

    /* renamed from: d */
    public final AbstractC6974x1.AbstractC6975a f22330d;

    /* renamed from: e */
    public final C18472a f22331e;

    /* renamed from: f */
    public final AbstractC19462a f22332f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6787a(AbstractC6900j2 abstractC6900j2, AbstractC6974x1.AbstractC6975a abstractC6975a, C18472a c18472a, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoStateProvider");
        l.e(abstractC6975a, "actionsListener");
        l.e(c18472a, "promoManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22330d = abstractC6975a;
        this.f22331e = c18472a;
        this.f22332f = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(abstractC6798d1, AbstractC6798d1.C6827w.f22374b);
    }

    /* renamed from: B */
    public final void m30439B(SecondaryPhoneNumberPromoEvent.Action action) {
        n.B0(new SecondaryPhoneNumberPromoEvent(action), this.f22332f);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6974x1) obj, "itemView");
        if (!this.f22329c) {
            m30439B(SecondaryPhoneNumberPromoEvent.Action.ACTION_SHOWN);
            this.f22329c = true;
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = false;
        if (hashCode != 1021937797) {
            if (hashCode == 1207875180 && str.equals("ItemEvent.ACTION_DISMISS_SECONDARY_PHONE_NUMBER_PROMO")) {
                C18472a c18472a = this.f22331e;
                c18472a.f52155e.putInt("secondary_phone_number_promo_dismiss_count", c18472a.f52155e.getInt("secondary_phone_number_promo_dismiss_count", 0) + 1);
                c18472a.f52155e.putLong("secondary_phone_number_promo_last_dismiss_timestamp", c18472a.f52156f.m28258c());
                this.f22330d.mo30337m4();
                m30439B(SecondaryPhoneNumberPromoEvent.Action.ACTION_DISMISS);
                z = true;
            }
        } else if (str.equals("ItemEvent.ACTION_ADD_SECONDARY_PHONE_NUMBER")) {
            this.f22330d.mo30338jb();
            m30439B(SecondaryPhoneNumberPromoEvent.Action.ACTION_ADD_NOW);
            z = true;
        }
        return z;
    }
}
