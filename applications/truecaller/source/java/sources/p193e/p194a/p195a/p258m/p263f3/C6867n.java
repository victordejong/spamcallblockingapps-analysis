package p193e.p194a.p195a.p258m.p263f3;

import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p258m.AbstractC6784b1;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6851f2;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import s1.z.c.l;
/* renamed from: e.a.a.m.f3.n */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/n.class */
public final class C6867n extends AbstractC6894i2<AbstractC6851f2> implements AbstractC6784b1 {

    /* renamed from: c */
    public final AbstractC6851f2.AbstractC6852a f22450c;

    /* renamed from: d */
    public final C6866m f22451d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6867n(AbstractC6900j2 abstractC6900j2, AbstractC6851f2.AbstractC6852a abstractC6852a, C6866m c6866m) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6852a, "actionListener");
        l.e(c6866m, "whatsAppNotificationAccessPromoManager");
        this.f22450c = abstractC6852a;
        this.f22451d = c6866m;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(AbstractC6798d1.C6808e0.f22355b, abstractC6798d1);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6851f2) obj, "itemView");
        this.f22451d.f22446a.m30369a("key_whats_app_in_call_log_notif_promo_last_time");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -1361247718) {
            if (hashCode == -938477651 && str.equals("ItemEvent.ACTION_ENABLE_WHATSAPP_NOTIFICATION_ACCESS_CLICKED")) {
                this.f22450c.mo30417bf();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_DISMISS_WHATSAPP_NOTIFICATION_ACCESS_PROMO_CLICKED")) {
                this.f22450c.mo30418a9();
                this.f22451d.f22446a.m30368b("key_whats_app_in_call_log_notif_promo_last_time");
            }
            z = false;
        }
        return z;
    }
}
