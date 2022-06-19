package p193e.p194a.p195a.p258m;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6939q1;
import s1.z.c.l;
/* renamed from: e.a.a.m.s */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/s.class */
public final class C6947s extends AbstractC6894i2<AbstractC6939q1> implements AbstractC6911l0 {

    /* renamed from: d */
    public boolean f22552d;

    /* renamed from: f */
    public final AbstractC6392i0 f22554f;

    /* renamed from: g */
    public final AbstractC6939q1.AbstractC6940a f22555g;

    /* renamed from: h */
    public final AbstractC19462a f22556h;

    /* renamed from: c */
    public AbstractC6798d1 f22551c = AbstractC6798d1.C6820p.f22367b;

    /* renamed from: e */
    public StartupDialogEvent.Type f22553e = StartupDialogEvent.Type.NewInboxPromo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6947s(AbstractC6900j2 abstractC6900j2, AbstractC6392i0 abstractC6392i0, AbstractC6939q1.AbstractC6940a abstractC6940a, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC6940a, "actionListener");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22554f = abstractC6392i0;
        this.f22555g = abstractC6940a;
        this.f22556h = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        boolean z = abstractC6798d1 instanceof AbstractC6798d1.C6819o;
        if (this.f22552d) {
            this.f22552d = l.a(this.f22551c, abstractC6798d1);
        }
        this.f22551c = abstractC6798d1;
        return z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6939q1) obj, "itemView");
        StartupDialogEvent.Type type = this.f22553e;
        if (type == null || this.f22552d) {
            return;
        }
        this.f22556h.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.Shown, null, null, null, 28));
        this.f22552d = true;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        if (str.hashCode() == 1881186776 && str.equals("ItemEvent.ACTION_PRIMARY_NEW_INBOX_PROMO")) {
            this.f22554f.mo31111Z1(true);
            this.f22555g.mo30364ca();
            StartupDialogEvent.Type type = this.f22553e;
            z = true;
            if (type != null) {
                this.f22556h.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.ClickedPositive, null, null, null, 28));
                z = true;
            }
        } else {
            z = false;
        }
        return z;
    }
}
