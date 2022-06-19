package p193e.p194a.p195a.p258m.p263f3;

import android.content.Context;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6869g0;
import p193e.p194a.p195a.p258m.AbstractC6894i2;
import p193e.p194a.p195a.p258m.AbstractC6900j2;
import p193e.p194a.p195a.p258m.AbstractC6918m1;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p851h5.AbstractC14946m;
import s1.n;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.m.f3.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/d.class */
public final class C6856d extends AbstractC6894i2<AbstractC6918m1> implements AbstractC6869g0 {

    /* renamed from: c */
    public final AbstractC6918m1.AbstractC6919a f22410c;

    /* renamed from: d */
    public final AbstractC13706b f22411d;

    /* renamed from: e */
    public final AbstractC14946m f22412e;

    /* renamed from: f */
    public final AbstractC19230g f22413f;

    /* renamed from: g */
    public final AbstractC19223c0 f22414g;

    /* renamed from: h */
    public final AbstractC19462a f22415h;

    /* renamed from: e.a.a.m.f3.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/d$a.class */
    public static final class C6857a extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6857a() {
            super(0);
            C6856d.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C6856d.this.f22413f.mo13791f());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6856d(AbstractC6900j2 abstractC6900j2, AbstractC6918m1.AbstractC6919a abstractC6919a, AbstractC13706b abstractC13706b, AbstractC14946m abstractC14946m, AbstractC19230g abstractC19230g, AbstractC19223c0 abstractC19223c0, AbstractC19462a abstractC19462a) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6919a, "actionListener");
        l.e(abstractC13706b, "inCallUI");
        l.e(abstractC14946m, "roleRequester");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22410c = abstractC6919a;
        this.f22411d = abstractC13706b;
        this.f22412e = abstractC14946m;
        this.f22413f = abstractC19230g;
        this.f22414g = abstractC19223c0;
        this.f22415h = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6814j;
    }

    /* renamed from: B */
    public final void m30415B(C18900h c18900h) {
        this.f22411d.mo21264e(true);
        AbstractC13706b abstractC13706b = this.f22411d;
        Context context = c18900h.f53004d.getContext();
        l.d(context, "event.view.context");
        abstractC13706b.mo21252q(context);
        this.f22411d.mo21267b();
        this.f22410c.m30381D5();
    }

    /* renamed from: C */
    public final void m30414C(String str) {
        AbstractC19462a abstractC19462a = this.f22415h;
        HashMap hashMap = new HashMap();
        hashMap.put("Action", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("InCallUIHomeBannerInteraction", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(I…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        int i2;
        String str;
        AbstractC6918m1 abstractC6918m1 = (AbstractC6918m1) obj;
        l.e(abstractC6918m1, "itemView");
        if (this.f22413f.mo13791f()) {
            i2 = 2131889243;
            str = this.f22414g.mo13768b(C2752R.string.incallui_banner_subtitle, new Object[0]);
            l.d(str, "resourceProvider.getStri…incallui_banner_subtitle)");
        } else {
            i2 = 2131889244;
            str = this.f22414g.mo13768b(C2752R.string.incallui_banner_subtitle, new Object[0]) + "\n\n" + this.f22414g.mo13768b(C2752R.string.incallui_banner_info_non_default_dialer, new Object[0]);
            l.d(str, "StringBuilder()\n        …              .toString()");
        }
        String mo13768b = this.f22414g.mo13768b(i2, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…rimaryButtonTextResource)");
        abstractC6918m1.mo30382y(mo13768b);
        abstractC6918m1.mo30383c(str);
        m30414C("Shown");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        n m3978P1 = C25225a.m3978P1(new C6857a());
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -936171986) {
            if (hashCode == 1896726705 && str.equals("ItemEvent.ACTION_ENABLE_INCALLUI")) {
                if (((Boolean) m3978P1.getValue()).booleanValue()) {
                    m30415B(c18900h);
                    m30414C("SwitchNow");
                } else {
                    this.f22412e.mo19390a(new C6855c(this, c18900h));
                    m30414C("SetAsDefault");
                }
                z = true;
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_DISMISS_INCALLUI")) {
                this.f22411d.mo21267b();
                m30414C("Dismiss");
                z = this.f22410c.m30380y7();
            }
            z = false;
        }
        return z;
    }
}
