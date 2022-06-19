package p193e.p194a.p195a.p258m.p263f3;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import com.truecaller.videocallerid.utils.UpdateVideoCallerIdPromoConfig;
import javax.inject.Inject;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p258m.AbstractC6791c2;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6978y0;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p947k.AbstractC16111h;
import s1.z.c.l;
/* renamed from: e.a.a.m.f3.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/j.class */
public final class C6863j extends AbstractC6894i2<AbstractC6791c2> implements AbstractC6978y0 {

    /* renamed from: d */
    public boolean f22435d;

    /* renamed from: f */
    public final AbstractC19223c0 f22437f;

    /* renamed from: g */
    public final AbstractC16111h f22438g;

    /* renamed from: h */
    public final AbstractC6791c2.AbstractC6792a f22439h;

    /* renamed from: i */
    public final AbstractC19462a f22440i;

    /* renamed from: c */
    public AbstractC6798d1 f22434c = AbstractC6798d1.C6820p.f22367b;

    /* renamed from: e */
    public StartupDialogEvent.Type f22436e = StartupDialogEvent.Type.VideoCallerIdUpdatePromo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6863j(AbstractC6900j2 abstractC6900j2, AbstractC19223c0 abstractC19223c0, AbstractC16111h abstractC16111h, AbstractC6791c2.AbstractC6792a abstractC6792a, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16111h, "videoCallerId");
        l.e(abstractC6792a, "actionListener");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22437f = abstractC19223c0;
        this.f22438g = abstractC16111h;
        this.f22439h = abstractC6792a;
        this.f22440i = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        boolean z = abstractC6798d1 instanceof AbstractC6798d1.C6802b0;
        if (this.f22435d) {
            this.f22435d = l.a(this.f22434c, abstractC6798d1);
        }
        this.f22434c = abstractC6798d1;
        return z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6791c2 abstractC6791c2 = (AbstractC6791c2) obj;
        l.e(abstractC6791c2, "itemView");
        UpdateVideoCallerIdPromoConfig mo17837i = this.f22438g.mo17837i();
        if (mo17837i != null) {
            abstractC6791c2.mo30340k(mo17837i.getSubtitleText());
            abstractC6791c2.setTitle(mo17837i.getTitleText());
            C15314a c15314a = C15314a.f43582g;
            AbstractC15317d m18938a = C15314a.m18938a();
            if ((m18938a instanceof AbstractC15317d.C15320c) || (m18938a instanceof AbstractC15317d.C15318a)) {
                abstractC6791c2.mo30339r(mo17837i.getImageLight());
            } else if (!(m18938a instanceof AbstractC15317d.C15321d) && !(m18938a instanceof AbstractC15317d.C15319b)) {
                abstractC6791c2.mo30339r(mo17837i.getImageLight());
            } else {
                abstractC6791c2.mo30339r(mo17837i.getImageDark());
            }
        }
        StartupDialogEvent.Type type = this.f22436e;
        if (type == null || this.f22435d) {
            return;
        }
        this.f22440i.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.Shown, null, null, null, 28));
        this.f22435d = true;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -1974513628) {
            if (hashCode == -1288847552 && str.equals("ItemEvent.ACTION_OPEN_VIDEO_CALLER_ID_UPDATE_PROMO")) {
                this.f22438g.mo17864D();
                this.f22439h.m30438g8();
                StartupDialogEvent.Type type = this.f22436e;
                z = true;
                if (type != null) {
                    this.f22440i.mo13274b(new StartupDialogEvent(type, StartupDialogEvent.Action.ClickedPositive, null, null, null, 28));
                    z = true;
                }
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_DISMISS_VIDEO_CALLER_ID_UPDATE_PROMO")) {
                this.f22438g.mo17864D();
                this.f22439h.m30437og();
                StartupDialogEvent.Type type2 = this.f22436e;
                z = true;
                if (type2 != null) {
                    this.f22440i.mo13274b(new StartupDialogEvent(type2, StartupDialogEvent.Action.ClickedNegative, null, null, null, 28));
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
