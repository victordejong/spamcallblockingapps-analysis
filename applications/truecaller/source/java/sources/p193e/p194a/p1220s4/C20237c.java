package p193e.p194a.p1220s4;

import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.log.UnmutedException;
import e.m.d.b0.a;
import e.m.d.b0.k;
import e.m.d.b0.r.d;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1128p4.AbstractC19215b;
import s1.f0.q;
import s1.z.c.l;
/* renamed from: e.a.s4.c */
/* loaded from: classes12-dex2jar.jar:e/a/s4/c.class */
public final class C20237c implements AbstractC20235a {

    /* renamed from: a */
    public final AbstractC19215b f56985a;

    /* renamed from: b */
    public final Provider<k> f56986b;

    @Inject
    public C20237c(AbstractC19215b abstractC19215b, Provider<k> provider) {
        l.e(abstractC19215b, "qaMenuSettings");
        l.e(provider, "firebaseRemoteConfig");
        this.f56985a = abstractC19215b;
        this.f56986b = provider;
    }

    @Override // p193e.p194a.p1220s4.AbstractC20235a
    /* renamed from: a */
    public boolean mo11313a(String str, boolean z) {
        l.e(str, AnalyticsConstants.KEY);
        String c = ((k) this.f56986b.get()).c(str);
        l.d(c, "firebaseRemoteConfig.get().getString(key)");
        if (!(c.length() == 0)) {
            z = Boolean.parseBoolean(c);
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // p193e.p194a.p1220s4.AbstractC20235a
    /* renamed from: b */
    public void mo11312b() {
        char seconds = this.f56985a.mo13850d3() ? (char) 0 : TimeUnit.HOURS.toSeconds(6L);
        try {
            k kVar = (k) this.f56986b.get();
            e.m.d.b0.r.l lVar = kVar.g;
            lVar.f.b().m38525m(lVar.c, new d(lVar, seconds)).m38518t(a.a).m38535c(new C20236b(kVar));
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                return;
            }
            AssertionUtil.reportThrowableButNeverCrash(new UnmutedException.C4146e(message));
        }
    }

    @Override // p193e.p194a.p1220s4.AbstractC20235a
    public int getInt(String str, int i) {
        l.e(str, AnalyticsConstants.KEY);
        Integer h = q.h(((k) this.f56986b.get()).c(str));
        if (h != null) {
            i = h.intValue();
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    @Override // p193e.p194a.p1220s4.AbstractC20235a
    public long getLong(String str, long j) {
        l.e(str, AnalyticsConstants.KEY);
        Long j2 = q.j(((k) this.f56986b.get()).c(str));
        ?? r5 = j;
        if (j2 != null) {
            r5 = j2.longValue();
        }
        return r5;
    }

    @Override // p193e.p194a.p1220s4.AbstractC20235a
    public String getString(String str) {
        l.e(str, AnalyticsConstants.KEY);
        String c = ((k) this.f56986b.get()).c(str);
        l.d(c, "StringUtils.defaultStrin…fig.get().getString(key))");
        return c;
    }
}
