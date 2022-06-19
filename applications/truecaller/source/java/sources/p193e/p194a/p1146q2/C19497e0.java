package p193e.p194a.p1146q2;

import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import s1.z.c.l;
/* renamed from: e.a.q2.e0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/e0.class */
public final class C19497e0 {

    /* renamed from: a */
    public final Map<CharSequence, CharSequence> f54108a = new LinkedHashMap();

    /* renamed from: b */
    public final Map<CharSequence, Double> f54109b = new LinkedHashMap();

    /* renamed from: c */
    public final String f54110c;

    public C19497e0(String str) {
        l.e(str, "type");
        this.f54110c = str;
    }

    /* renamed from: a */
    public final C17697p3 m13281a() {
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b(this.f54110c);
        m15852a.m15849c(this.f54109b);
        m15852a.m15848d(this.f54108a);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        return build;
    }

    /* renamed from: b */
    public final C19497e0 m13280b(CharSequence charSequence, int i) {
        l.e(charSequence, AnalyticsConstants.NAME);
        this.f54109b.put(charSequence, Double.valueOf(i));
        return this;
    }

    /* renamed from: c */
    public final C19497e0 m13279c(CharSequence charSequence, CharSequence charSequence2) {
        l.e(charSequence, AnalyticsConstants.NAME);
        l.e(charSequence2, "value");
        this.f54108a.put(charSequence, charSequence2);
        return this;
    }

    /* renamed from: d */
    public final C19497e0 m13278d(CharSequence charSequence, boolean z) {
        l.e(charSequence, AnalyticsConstants.NAME);
        this.f54108a.put(charSequence, String.valueOf(z));
        return this;
    }

    /* renamed from: e */
    public final C19497e0 m13277e(double d) {
        this.f54109b.put("value", Double.valueOf(d));
        return this;
    }

    /* renamed from: f */
    public final C19497e0 m13276f(long j) {
        this.f54109b.put("value", Double.valueOf(j));
        return this;
    }
}
