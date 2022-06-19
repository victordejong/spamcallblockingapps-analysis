package p193e.p194a.p1164r.p1182x.p1183y;

import com.amazon.device.ads.DTBMetricsConfiguration;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.r.x.y.a */
/* loaded from: classes16-dex2jar.jar:e/a/r/x/y/a.class */
public final class C19790a {

    /* renamed from: a */
    public final AbstractC19462a f54834a;

    @Inject
    public C19790a(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f54834a = abstractC19462a;
    }

    /* renamed from: a */
    public void m12832a(String str, String str2) {
        l.e(str, "source");
        this.f54834a.mo13274b(new d(str, str2));
    }
}
