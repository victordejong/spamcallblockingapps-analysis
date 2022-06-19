package p193e.p194a.p195a.p258m.p263f3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p258m.AbstractC6785b2;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6973x0;
import p193e.p194a.p947k.AbstractC16111h;
import s1.z.c.l;
/* renamed from: e.a.a.m.f3.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/i.class */
public final class C6862i extends AbstractC6894i2<AbstractC6785b2> implements AbstractC6973x0 {

    /* renamed from: d */
    public boolean f22428d;

    /* renamed from: f */
    public final AbstractC19223c0 f22430f;

    /* renamed from: g */
    public final AbstractC16111h f22431g;

    /* renamed from: h */
    public final AbstractC6785b2.AbstractC6786a f22432h;

    /* renamed from: i */
    public final AbstractC19462a f22433i;

    /* renamed from: c */
    public AbstractC6798d1 f22427c = AbstractC6798d1.C6820p.f22367b;

    /* renamed from: e */
    public StartupDialogEvent.Type f22429e = StartupDialogEvent.Type.VideoCallerIdPromo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6862i(AbstractC6900j2 abstractC6900j2, AbstractC19223c0 abstractC19223c0, AbstractC16111h abstractC16111h, AbstractC6785b2.AbstractC6786a abstractC6786a, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16111h, "videoCallerId");
        l.e(abstractC6786a, "actionListener");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22430f = abstractC19223c0;
        this.f22431g = abstractC16111h;
        this.f22432h = abstractC6786a;
        this.f22433i = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        boolean z = abstractC6798d1 instanceof AbstractC6798d1.C6800a0;
        if (this.f22428d) {
            this.f22428d = l.a(this.f22427c, abstractC6798d1);
        }
        this.f22427c = abstractC6798d1;
        return z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6785b2 abstractC6785b2 = (AbstractC6785b2) obj;
        l.e(abstractC6785b2, "itemView");
        AbstractC19223c0 abstractC19223c0 = this.f22430f;
        String mo13768b = abstractC19223c0.mo13768b(C2752R.string.promo_video_caller_id_title, abstractC19223c0.mo13768b(2131890282, new Object[0]));
        l.d(mo13768b, "resourceProvider.getStri….string.video_caller_id))");
        abstractC6785b2.setTitle(mo13768b);
        StartupDialogEvent.Type type = this.f22429e;
        if (type == null || this.f22428d) {
            return;
        }
        this.f22433i.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.Shown, null, null, null, 28));
        this.f22428d = true;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != 45199652) {
            if (hashCode == 746441096 && str.equals("ItemEvent.ACTION_OPEN_VIDEO_CALLER_ID_PROMO")) {
                this.f22431g.mo17843c();
                this.f22432h.m30440pi();
                StartupDialogEvent.Type type = this.f22429e;
                z = true;
                if (type != null) {
                    this.f22433i.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.ClickedPositive, null, null, null, 28));
                    z = true;
                }
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_DISMISS_VIDEO_CALLER_ID_PROMO")) {
                this.f22431g.mo17843c();
                this.f22432h.m30441Bj();
                StartupDialogEvent.Type type2 = this.f22429e;
                z = true;
                if (type2 != null) {
                    this.f22433i.mo13274b(new StartupDialogEvent(type2, StartupDialogEvent.Action.ClickedNegative, null, null, null, 28));
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
