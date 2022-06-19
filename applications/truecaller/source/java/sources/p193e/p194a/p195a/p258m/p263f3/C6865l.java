package p193e.p194a.p195a.p258m.p263f3;

import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6831d2;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6983z0;
import s1.z.c.l;
/* renamed from: e.a.a.m.f3.l */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/l.class */
public final class C6865l extends AbstractC6894i2<AbstractC6831d2> implements AbstractC6983z0 {

    /* renamed from: c */
    public final AbstractC6831d2.AbstractC6832a f22444c;

    /* renamed from: d */
    public final C6864k f22445d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6865l(AbstractC6900j2 abstractC6900j2, AbstractC6831d2.AbstractC6832a abstractC6832a, C6864k c6864k) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6832a, "actionListener");
        l.e(c6864k, "whatsAppCallDetectedPromoManager");
        this.f22444c = abstractC6832a;
        this.f22445d = c6864k;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(AbstractC6798d1.C6804c0.f22351b, abstractC6798d1);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6831d2) obj, "itemView");
        this.f22445d.f22441a.m30369a("key_whats_app_in_call_log_notif_promo_last_time");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -1946189300) {
            if (hashCode == -766893467 && str.equals("ItemEvent.ACTION_DISMISS_WHATSAPP_CALL_DETECTED_PROMO_CLICKED")) {
                this.f22444c.mo30433P7();
                this.f22445d.f22441a.m30368b("key_whats_app_in_call_log_notif_promo_last_time");
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_DISABLE_WHATSAPP_NOTIFICATION_ACCESS_CLICKED")) {
                this.f22444c.mo30432W9();
            }
            z = false;
        }
        return z;
    }
}
