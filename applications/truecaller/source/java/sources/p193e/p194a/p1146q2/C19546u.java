package p193e.p194a.p1146q2;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.TimingEvent;
import com.truecaller.log.AssertionUtil;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.q2.u */
/* loaded from: classes4-dex2jar.jar:e/a/q2/u.class */
public final class C19546u implements AbstractC19542s0 {

    /* renamed from: a */
    public final HashMap<String, C19547a> f54326a = new HashMap<>();

    /* renamed from: b */
    public final AbstractC19222c f54327b;

    /* renamed from: c */
    public final AbstractC19462a f54328c;

    /* renamed from: d */
    public final C20592g f54329d;

    /* renamed from: e.a.q2.u$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/u$a.class */
    public static final class C19547a {

        /* renamed from: a */
        public final TimingEvent f54330a;

        /* renamed from: b */
        public final String f54331b;

        /* renamed from: c */
        public final String f54332c;

        /* renamed from: d */
        public final long f54333d;

        public C19547a(TimingEvent timingEvent, String str, String str2, long j) {
            l.e(timingEvent, "event");
            this.f54330a = timingEvent;
            this.f54331b = str;
            this.f54332c = str2;
            this.f54333d = j;
        }
    }

    @Inject
    public C19546u(AbstractC19222c abstractC19222c, AbstractC19462a abstractC19462a, C20592g c20592g) {
        l.e(abstractC19222c, "clock");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20592g, "featuresRegistry");
        this.f54327b = abstractC19222c;
        this.f54328c = abstractC19462a;
        this.f54329d = c20592g;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19542s0
    /* renamed from: a */
    public void mo13180a(TimingEvent timingEvent, int i) {
        l.e(timingEvent, "event");
        AssertionUtil.isTrue(timingEvent.getUnique(), "Only unique events can be finished without passing key");
        mo13177d(timingEvent.getEvent(), i);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19542s0
    /* renamed from: b */
    public String mo13179b(TimingEvent timingEvent, String str, String str2) {
        l.e(timingEvent, "event");
        String event = timingEvent.getUnique() ? timingEvent.getEvent() : C22128a.m8627e2("UUID.randomUUID().toString()");
        this.f54326a.put(event, new C19547a(timingEvent, str, str2, this.f54327b.mo13820b()));
        return event;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19542s0
    /* renamed from: c */
    public void mo13178c(String str) {
        l.e(str, AnalyticsConstants.KEY);
        this.f54326a.remove(str);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19542s0
    /* renamed from: d */
    public void mo13177d(String str, int i) {
        l.e(str, AnalyticsConstants.KEY);
        long mo13820b = this.f54327b.mo13820b();
        C19547a remove = this.f54326a.remove(str);
        if (remove != null) {
            double d = (mo13820b - remove.f54333d) / 1000000.0d;
            AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("Timing");
            c19504b.m13263d("Event", remove.f54330a.getEvent());
            c19504b.m13263d("Type", "Full");
            String str2 = remove.f54331b;
            if (str2 != null) {
                c19504b.m13263d("State", str2);
            }
            String str3 = remove.f54332c;
            if (str3 != null) {
                c19504b.m13263d("Parameters", str3);
            }
            if (i > 0) {
                c19504b.m13265b("Count", i);
            }
            long[] eventGranularity = remove.f54330a.getEventGranularity();
            if (eventGranularity != null) {
                c19504b.m13263d("GranularValue", m13175f(d, eventGranularity));
            }
            c19504b.f54123c = Double.valueOf(d);
            AbstractC19502g m13266a = c19504b.m13266a();
            l.d(m13266a, "with(AnalyticsEvent.Buil…    build()\n            }");
            m13176e(m13266a);
            if (i <= 0) {
                return;
            }
            double d2 = d / i;
            String event = remove.f54330a.getEvent();
            HashMap hashMap = new HashMap();
            hashMap.put("Event", event);
            hashMap.put("Type", "PerItem");
            String str4 = remove.f54331b;
            if (str4 != null) {
                hashMap.put("State", str4);
            }
            String str5 = remove.f54332c;
            if (str5 != null) {
                hashMap.put("Parameters", str5);
            }
            long[] itemGranularity = remove.f54330a.getItemGranularity();
            if (itemGranularity != null) {
                hashMap.put("GranularValue", m13175f(d2, itemGranularity));
            }
            AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("Timing", Double.valueOf(d2), hashMap, null);
            l.d(c19505a, "with(AnalyticsEvent.Buil…build()\n                }");
            m13176e(c19505a);
        }
    }

    /* renamed from: e */
    public final void m13176e(AbstractC19502g abstractC19502g) {
        C20592g c20592g = this.f54329d;
        if (c20592g.f57706B2.m10941a(c20592g, C20592g.f57695p6[183]).isEnabled()) {
            AbstractC19502g.C19504b.C19505a c19505a = (AbstractC19502g.C19504b.C19505a) abstractC19502g;
            Map<String, String> map = c19505a.f54125b;
            if (map != null) {
                map.get("Event");
            }
            if (map != null) {
                map.get("Type");
            }
            Double d = c19505a.f54126c;
            if (d != null) {
                String.format("%.2f", Double.valueOf(d.doubleValue()));
            }
            if (map != null) {
                map.get("GranularValue");
            }
            if (map != null) {
                map.get("Count");
            }
            if (map != null) {
                map.get("State");
            }
            if (map != null) {
                map.get("Parameters");
            }
            this.f54328c.mo13271e(abstractC19502g);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
        if (r8 != null) goto L19;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m13175f(double r6, long[] r8) {
        /*
            r5 = this;
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
        L7:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L39
            r0 = r8
            r1 = r10
            r0 = r0[r1]
            r11 = r0
            r0 = r6
            r1 = r11
            double r1 = (double) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L22
            r0 = 1
            r13 = r0
            goto L25
        L22:
            r0 = 0
            r13 = r0
        L25:
            r0 = r13
            if (r0 == 0) goto L33
            r0 = r11
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r8 = r0
            goto L3b
        L33:
            int r10 = r10 + 1
            goto L7
        L39:
            r0 = 0
            r8 = r0
        L3b:
            r0 = r8
            if (r0 == 0) goto L4e
            r0 = r8
            long r0 = r0.longValue()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L4e
            goto L51
        L4e:
            java.lang.String r0 = "MAX"
            r8 = r0
        L51:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19546u.m13175f(double, long[]):java.lang.String");
    }
}
