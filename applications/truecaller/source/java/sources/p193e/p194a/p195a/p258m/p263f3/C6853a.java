package p193e.p194a.p195a.p258m.p263f3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p258m.AbstractC6777a0;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6870g1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import s1.z.c.l;
/* renamed from: e.a.a.m.f3.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/a.class */
public final class C6853a extends AbstractC6894i2<AbstractC6870g1> implements AbstractC6777a0 {

    /* renamed from: d */
    public boolean f22397d;

    /* renamed from: f */
    public final AbstractC6392i0 f22399f;

    /* renamed from: g */
    public final AbstractC6870g1.AbstractC6871a f22400g;

    /* renamed from: h */
    public final AbstractC19462a f22401h;

    /* renamed from: c */
    public AbstractC6798d1 f22396c = AbstractC6798d1.C6820p.f22367b;

    /* renamed from: e */
    public StartupDialogEvent.Type f22398e = StartupDialogEvent.Type.CallsMessagesSeparatelyPromo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6853a(AbstractC6900j2 abstractC6900j2, AbstractC6392i0 abstractC6392i0, AbstractC6870g1.AbstractC6871a abstractC6871a, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC6871a, "actionListener");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22399f = abstractC6392i0;
        this.f22400g = abstractC6871a;
        this.f22401h = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        boolean z = abstractC6798d1 instanceof AbstractC6798d1.C6805d;
        if (this.f22397d) {
            this.f22397d = l.a(this.f22396c, abstractC6798d1);
        }
        this.f22396c = abstractC6798d1;
        return z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        l.e((AbstractC6870g1) obj, "itemView");
        StartupDialogEvent.Type type = this.f22398e;
        if (type == null || this.f22397d) {
            return;
        }
        this.f22401h.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.Shown, null, null, null, 28));
        this.f22397d = true;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        if (str.hashCode() == -1487472982 && str.equals("ItemEvent.ACTION_PRIMARY_CALLS_MESSAGES_SEPARATELY_PROMO")) {
            this.f22399f.mo30976x(true);
            this.f22400g.mo30413fc();
            StartupDialogEvent.Type type = this.f22398e;
            z = true;
            if (type != null) {
                this.f22401h.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.ClickedPositive, null, null, null, 28));
                z = true;
            }
        } else {
            z = false;
        }
        return z;
    }
}
