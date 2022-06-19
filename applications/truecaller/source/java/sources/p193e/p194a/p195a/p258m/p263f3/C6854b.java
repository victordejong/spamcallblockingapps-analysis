package p193e.p194a.p195a.p258m.p263f3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import javax.inject.Inject;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p258m.AbstractC6783b0;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6886h1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import s1.z.c.l;
/* renamed from: e.a.a.m.f3.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/b.class */
public final class C6854b extends AbstractC6894i2<AbstractC6886h1> implements AbstractC6783b0 {

    /* renamed from: c */
    public AbstractC6798d1 f22402c = AbstractC6798d1.C6820p.f22367b;

    /* renamed from: d */
    public boolean f22403d;

    /* renamed from: e */
    public StartupDialogEvent.Type f22404e;

    /* renamed from: f */
    public final AbstractC6886h1.AbstractC6887a f22405f;

    /* renamed from: g */
    public final AbstractC18765c f22406g;

    /* renamed from: h */
    public final AbstractC19462a f22407h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6854b(AbstractC6900j2 abstractC6900j2, AbstractC6886h1.AbstractC6887a abstractC6887a, AbstractC18765c abstractC18765c, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6887a, "actionListener");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22405f = abstractC6887a;
        this.f22406g = abstractC18765c;
        this.f22407h = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        boolean z = abstractC6798d1 instanceof AbstractC6798d1.C6807e;
        if (this.f22403d) {
            this.f22403d = l.a(this.f22402c, abstractC6798d1);
        }
        this.f22402c = abstractC6798d1;
        return z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        StartupDialogEvent.Type type;
        AbstractC6886h1 abstractC6886h1 = (AbstractC6886h1) obj;
        l.e(abstractC6886h1, "itemView");
        AbstractC6798d1 abstractC6798d1 = this.f22402c;
        AbstractC6798d1 abstractC6798d12 = abstractC6798d1;
        if (!(abstractC6798d1 instanceof AbstractC6798d1.C6807e)) {
            abstractC6798d12 = null;
        }
        AbstractC6798d1.C6807e c6807e = (AbstractC6798d1.C6807e) abstractC6798d12;
        if (c6807e != null) {
            int ordinal = c6807e.f22354b.ordinal();
            if (ordinal == 0) {
                abstractC6886h1.mo30407J2();
                this.f22406g.mo14521c();
                type = StartupDialogEvent.Type.ContextCallNewUserPromo;
            } else if (ordinal != 1) {
                return;
            } else {
                abstractC6886h1.mo30406h2();
                this.f22406g.mo14521c();
                type = StartupDialogEvent.Type.ContextCallReminderPromo;
            }
            this.f22404e = type;
            if (type == null || this.f22403d) {
                return;
            }
            this.f22407h.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.Shown, null, null, null, 28));
            this.f22403d = true;
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -1385766972) {
            if (hashCode == 452097765 && str.equals("ItemEvent.ACTION_DISMISS_CONTEXT_CALL")) {
                this.f22406g.mo14512m();
                this.f22405f.mo30405Yi();
                StartupDialogEvent.Type type = this.f22404e;
                z = true;
                if (type != null) {
                    this.f22407h.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.ClickedNegative, null, null, null, 28));
                    z = true;
                }
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_CONTINUE_CONTEXT_CALL")) {
                this.f22405f.mo30404u8();
                StartupDialogEvent.Type type2 = this.f22404e;
                z = true;
                if (type2 != null) {
                    this.f22407h.mo13274b(new StartupDialogEvent(type2, StartupDialogEvent.Action.ClickedPositive, null, null, null, 28));
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
