package p193e.p194a.p1077n4.p1078c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1077n4.AbstractC18484a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.n4.c.a */
/* loaded from: classes12-dex2jar.jar:e/a/n4/c/a.class */
public abstract class AbstractC18486a implements AbstractC18489d {

    /* renamed from: a */
    public final int f52178a = 6;

    /* renamed from: b */
    public boolean f52179b;

    /* renamed from: c */
    public final AbstractC18484a f52180c;

    /* renamed from: d */
    public final C20592g f52181d;

    /* renamed from: e */
    public final AbstractC19462a f52182e;

    /* renamed from: f */
    public final AbstractC19022f0 f52183f;

    /* renamed from: g */
    public final AbstractC19222c f52184g;

    public AbstractC18486a(AbstractC18484a abstractC18484a, C20592g c20592g, AbstractC19462a abstractC19462a, AbstractC19022f0 abstractC19022f0, AbstractC19222c abstractC19222c) {
        l.e(abstractC18484a, "settings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19222c, "clock");
        this.f52180c = abstractC18484a;
        this.f52181d = c20592g;
        this.f52182e = abstractC19462a;
        this.f52183f = abstractC19022f0;
        this.f52184g = abstractC19222c;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    /* renamed from: b */
    public void mo14864b() {
        this.f52180c.mo13035a("LastCallLogPromoDismissedOn", this.f52184g.mo13819c());
        String m16097U = C17422k.m16097U(getTag());
        AbstractC18484a abstractC18484a = this.f52180c;
        abstractC18484a.mo13032d(m16097U, abstractC18484a.getInt(m16097U, 0) + 1);
        AbstractC18484a abstractC18484a2 = this.f52180c;
        String tag = getTag();
        l.e(tag, AnalyticsConstants.KEY);
        abstractC18484a2.mo13035a("Promo" + C17422k.m16048v0(tag) + "DismissTimestamp", this.f52184g.mo13819c());
        m14866e("Dismissed");
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    /* renamed from: c */
    public void mo14863c() {
        if (!this.f52179b) {
            if (!new b(this.f52180c.getLong("LastCallLogPromoShownOn", 0L)).E(this.f52178a).e(this.f52184g.mo13819c())) {
                this.f52180c.mo13035a("LastCallLogPromoShownOn", System.currentTimeMillis());
            }
            m14866e("Shown");
            this.f52179b = true;
        }
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    /* renamed from: d */
    public boolean mo14862d() {
        boolean h = new b(this.f52180c.getLong("KeyCallLogPromoDisabledUntil", 0L)).h(this.f52184g.mo13819c());
        b bVar = new b(this.f52180c.getLong("LastCallLogPromoDismissedOn", 0L));
        TimeUnit timeUnit = TimeUnit.DAYS;
        boolean h2 = bVar.C(timeUnit.toMillis(this.f52181d.m10952p().mo10939d(2L))).h(this.f52184g.mo13819c());
        boolean z = true;
        boolean z2 = new b(this.f52180c.getLong("LastCallLogPromoShownOn", 0L)).E(this.f52178a).e(this.f52184g.mo13819c()) || new b(this.f52180c.getLong("LastCallLogPromoShownOn", 0L)).C(timeUnit.toMillis(this.f52181d.m10952p().mo10939d(2L))).h(this.f52184g.mo13819c());
        int i = this.f52180c.getInt(C17422k.m16097U(getTag()), 0);
        C20592g c20592g = this.f52181d;
        boolean z3 = i < ((AbstractC20597i) c20592g.f57831T1.m10941a(c20592g, C20592g.f57695p6[149])).getInt(2);
        boolean mo14245a = this.f52183f.mo14245a();
        getTag();
        if (!h || !h2 || !z3 || !z2 || !mo14245a) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public final void m14866e(String str) {
        AbstractC19462a abstractC19462a = this.f52182e;
        HashMap hashMap = new HashMap();
        hashMap.put("Context", "CallLog");
        hashMap.put("Action", str);
        hashMap.put("Type", getTag());
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("PromoView", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(P…tag)\n            .build()");
        abstractC19462a.mo13271e(c19505a);
    }
}
