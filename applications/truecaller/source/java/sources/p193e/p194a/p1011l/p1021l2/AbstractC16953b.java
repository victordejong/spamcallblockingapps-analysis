package p193e.p194a.p1011l.p1021l2;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.premium.analytics.LogLevel;
import e.m.d.y.n;
import java.util.Map;
import java.util.Objects;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.AbstractC20597i;
import s1.f0.r;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.l.l2.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/l2/b.class */
public abstract class AbstractC16953b implements AbstractC16954c {

    /* renamed from: a */
    public final AbstractC20597i f47548a;

    /* renamed from: b */
    public final AbstractC19462a f47549b;

    /* renamed from: c */
    public final CleverTapManager f47550c;

    public AbstractC16953b(AbstractC20597i abstractC20597i, AbstractC19462a abstractC19462a, CleverTapManager cleverTapManager) {
        l.e(abstractC20597i, "analyticsLevelFeature");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(cleverTapManager, "cleverTapManager");
        this.f47548a = abstractC20597i;
        this.f47549b = abstractC19462a;
        this.f47550c = cleverTapManager;
    }

    /* renamed from: o */
    public LogLevel m16735o() {
        LogLevel logLevel;
        LogLevel.C4339a c4339a = LogLevel.Companion;
        String mo10938g = this.f47548a.mo10938g();
        Objects.requireNonNull(c4339a);
        l.e(mo10938g, "logLevel");
        LogLevel[] values = LogLevel.values();
        int i = 0;
        while (true) {
            if (i >= 4) {
                logLevel = null;
                break;
            }
            logLevel = values[i];
            if (r.n(logLevel.name(), mo10938g, true)) {
                break;
            }
            i++;
        }
        if (logLevel == null) {
            logLevel = LogLevel.CORE;
        }
        return logLevel;
    }

    /* renamed from: p */
    public void m16734p(AbstractC16952a abstractC16952a) {
        l.e(abstractC16952a, "event");
        n.B0(abstractC16952a, this.f47549b);
        k<String, Map<String, Object>> mo9877b = abstractC16952a.mo9877b();
        if (mo9877b != null) {
            Object obj = mo9877b.b;
            if (obj == null) {
                this.f47550c.push((String) mo9877b.a);
            } else {
                this.f47550c.push((String) mo9877b.a, (Map) obj);
            }
        }
    }
}
