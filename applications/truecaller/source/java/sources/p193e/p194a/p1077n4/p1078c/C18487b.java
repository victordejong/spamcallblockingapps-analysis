package p193e.p194a.p1077n4.p1078c;

import android.view.View;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1077n4.AbstractC18484a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p851h5.AbstractC14946m;
import s1.z.c.l;
/* renamed from: e.a.n4.c.b */
/* loaded from: classes12-dex2jar.jar:e/a/n4/c/b.class */
public final class C18487b extends AbstractC18486a {

    /* renamed from: h */
    public final String f52185h = "defaultdialer";

    /* renamed from: i */
    public final int f52186i = C2752R.C2753drawable.ic_default_dialer_promo;

    /* renamed from: j */
    public final int f52187j = C2752R.string.DefaultDialerPromoText;

    /* renamed from: k */
    public final AbstractC19230g f52188k;

    /* renamed from: l */
    public final AbstractC14946m f52189l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18487b(AbstractC18484a abstractC18484a, C20592g c20592g, AbstractC19462a abstractC19462a, AbstractC19230g abstractC19230g, AbstractC19022f0 abstractC19022f0, AbstractC19222c abstractC19222c, AbstractC14946m abstractC14946m) {
        super(abstractC18484a, c20592g, abstractC19462a, abstractC19022f0, abstractC19222c);
        l.e(abstractC18484a, "settings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19222c, "clock");
        l.e(abstractC14946m, "roleRequester");
        this.f52188k = abstractC19230g;
        this.f52189l = abstractC14946m;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    /* renamed from: a */
    public void mo14865a(View view) {
        l.e(view, ViewAction.VIEW);
        l.e(view, ViewAction.VIEW);
        m14866e("Clicked");
        this.f52189l.mo19388c();
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18486a, p193e.p194a.p1077n4.p1078c.AbstractC18489d
    /* renamed from: d */
    public boolean mo14862d() {
        return super.mo14862d() && !this.f52188k.mo13791f() && this.f52188k.mo13780q() >= 24;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    public int getIcon() {
        return this.f52186i;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    public String getTag() {
        return this.f52185h;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    public int getTitle() {
        return this.f52187j;
    }
}
