package p193e.p194a.p195a.p258m.p263f3;

import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6905k0;
import p193e.p194a.p195a.p258m.AbstractC6934p1;
import s1.z.c.l;
/* renamed from: e.a.a.m.f3.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/f.class */
public final class C6859f extends AbstractC6894i2<AbstractC6934p1> implements AbstractC6905k0 {

    /* renamed from: c */
    public final AbstractC6934p1.AbstractC6935a f22420c;

    /* renamed from: d */
    public final C6858e f22421d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6859f(AbstractC6900j2 abstractC6900j2, AbstractC6934p1.AbstractC6935a abstractC6935a, C6858e c6858e) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6935a, "actionListener");
        l.e(c6858e, "missedCallNotificationPromoManager");
        this.f22420c = abstractC6935a;
        this.f22421d = c6858e;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return l.a(AbstractC6798d1.C6818n.f22365b, abstractC6798d1);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6934p1) obj, "itemView");
        this.f22421d.f22419c.m30369a("key_missed_call_notif_promo_last_time");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = true;
        if (hashCode != -1966327916) {
            if (hashCode == -480201118 && str.equals("ItemEvent.ACTION_ENABLE_MISSED_CALL_NOTIFICATION")) {
                this.f22420c.mo30366W6();
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.DISMISS_MISSED_CALL_NOTIFICATION_PROMO")) {
                this.f22420c.mo30365Z2();
                C6858e c6858e = this.f22421d;
                c6858e.f22417a.putBoolean("showMissedCallsNotifications", false);
                c6858e.f22419c.m30368b("key_missed_call_notif_promo_last_time");
            }
            z = false;
        }
        return z;
    }
}
